using UnityEngine;
using System.Collections.Generic;

public class Character : MonoBehaviour
{
    #region Variables
		// This is a list of delegates (i.e functions) 
		// Each is given a word and returns the taste multiplier for that word. 
		public List<TasteCollection.Taste> myTastes;
		public int characterNum;
		// Given a characterNum this returns that character's name
		public static Dictionary<int, string> CharacterNameLookup =
    new Dictionary<int, string> ()
		{
			{ 0, "Trash Character"},
			{ 1, "Fred"},
			{ 2, "Kelvin"},
			{ 3, "Spike"},
			{ 4, "Stella"},
			{ 5, "Meghan"}
		};
		// Number of trashed letters
		public int trashedLetters;
		// Total score of the trashed letters
		public int trashedLetterScore;
		//number of letters fed to the character
		public int numLettersFedToMe;
		//raw score from the letters fed to the character
		public int rawScoreFedToMe;
		//bonus score from tastes without letter score
		public int rawBonusScoreFedToMe;
		//Used to send the score this character generated out to analytics
		public int scoreFedToMe;
		// Used to retrieve words to potentially send to a character
		public LetterController letterControl;
		public GameObject letterGenerator;
		// Used to add default tastes to characters
		private VariableControl variables;
		// Dictionary of taste ID's to names. 
		// Give it a key (an int ID) and it will return the correct taste -> tasteDictionary[5] returns the '5' taste
		public static Dictionary<int, TasteCollection.Taste> tasteDictionary;
		// Keeps track of fed words to calculate combo's 
		public List<string> wordsFedToMe;
		//What should be displayed as the creatures tastes when you click it
		public string thingsILike;
		public List<int> tasteIDs;
		private static Dictionary<int, string> humanReadableTasteDictionary; //for looking up the human-readable version of my tastes

		//This is for displaying taste cards
		// each character should have 2 child objects with text meshes on them that are created
		// on initialization
		public GameObject visTastePrefab;
		public GameObject tasteObj;
		public TextMesh tasteText;
		public int charSelectOrder;
		public Animator anim;
		//so we can know if the character is selected
		public SelectScript selectScript;
    #endregion

    #region Score Related Methods
		// Given a word this handles all taste handling and updates the scene accordingly
		public int Likes (string word)
		{
				if (characterNum != 0) { //If we're not the trash character... 
						if (word != null && letterControl.checkForWord (word) == false) {
								Debug.Log ("Not a word and this isn't the trash character");
								variables.sadSound = 12;
								GetComponent<Animator> ().SetTrigger ("sad");
								return 0;
						}
				} else {
						//If we ARE the trash character, don't let people throw away single letters
						if (word.Length < variables.minLettersToTrash) {
								Debug.Log (string.Format ("You can't throw away fewer than {0} letter. The GDD says so.", variables.minLettersToTrash - 1));
								return 0;
						}
				}
				//If we get here, either we're the trash character, or it was a proper word
				//Debug.Log("About to score the word");

				float tempScore = ScoreWord (word);
				return (int)tempScore;
		}

		// Sums the score of the letters, then multiplies it by all the taste modifiers, 
		// then does bigmealbonus and doubleTasteMatchBonus
		float ScoreWord (string word)
		{
				float wordScore = 0;
				if (word != null && characterNum != 0) { //If we have a word and we're not the trash character
						//If we're the trash character, don't bother scoring the word - score is 0.
						foreach (char letter in word) {
								wordScore += LetterController.letterScores [letter];
								//calculate the raw score of the letters fed - without the bonus
								rawScoreFedToMe += (int)LetterController.letterScores [letter];
								//increase the number of letters fed to the character
								numLettersFedToMe++;
								variables.lettersRemaining--;
						}
						variables.mostRecentLetterScore = (int)wordScore;
						Debug.Log ("Score for the letters in " + word + " is " + wordScore);
						int tastesMatched = 0; //Reset the number of tastes matched
						float beforeScore; //for comparing before and after taste-matching scores so we can count number of tastes matched
						float tasteMultiplier = 0; //for storing the tasteMultiplier. We start with 1 for no tastes matched, as per the GDD.
						foreach (TasteCollection.Taste t in myTastes) { //Go through each taste this character's got and add up the total multiplier
								tasteMultiplier += t (word);
								if (t (word) > 0)  //If this taste matched
										tastesMatched++;
						}
						if (tasteMultiplier != 0) //If we have a tasteMultiplier at all... (if we matched any tastes)
								wordScore *= tasteMultiplier; //multiply our wordScore by it
						variables.mostRecentWordScore = (int)wordScore;
						variables.mostRecentBonus = (int)wordScore - variables.mostRecentLetterScore;
						//calculate the raw bonus score 
						rawBonusScoreFedToMe = variables.mostRecentBonus;
						if (rawBonusScoreFedToMe > 0) {
								variables.bonus = true;
						} else if (rawBonusScoreFedToMe == 0) {
								variables.bonus = false;
						}
						Debug.Log ("Score after tastes for " + word + " is " + wordScore);
						//if your word length is high enough to add a big meal bonus, do it and play the sound
						if (variables.bigMealAdditives [word.Length - 2] != 0) {
								wordScore += variables.bigMealAdditives [word.Length - 2];
								variables.bigMealSound = true;
						}
            //if your word length is not high enough, do not do anything for big meal bonus
            else {
								variables.bigMealSound = false;
						}
						//						if (word.Length == 8) {
						//								wordScore *= variables.bigMealBonus + 1;
						//                                variables.bigMealSound = true;
						//						} else if (word.Length == 7) {
						//								wordScore *= variables.bigMealBonus;
						//                                variables.bigMealSound = true;
						//						}
						//                        else
						//                        {
						//                            variables.bigMealSound = false;
						//                        }
						Debug.Log ("Score after bigmealbonus is " + wordScore);


						if (tastesMatched > 1) {
								wordScore *= variables.doubleTasteMatchBonus;
								variables.doubleTasteSound = true;
								Debug.Log ("Score after double taste-match bonus is " + wordScore);

						}
				} else if (characterNum == 0) { //if we are the trash character, still count the letters and their scores 
						//					trashedLetters
						foreach (char letter in word) {
								//calculate the raw score of the letters fed - without the bonus
								trashedLetterScore += (int)LetterController.letterScores [letter];
								//increase the number of letters fed to the character
								trashedLetters++;
								variables.lettersRemaining--;

								//Trash Animation
								Debug.Log ("Trashing Animation");
								GetComponent<Animator> ().SetTrigger ("eat");

						}
				}
				//Keep track of this character's score.
				scoreFedToMe += (int)wordScore;
				return wordScore;
		}

		//to check tastes for the characters when a word is on the stove
		int TasteGlow (int charNum)
		{
				int[] charTastes = variables.allCharTastes [charNum]; //this character's tastes
				string currentWord;
				currentWord = letterControl.sendWord (); //current word on stove
				int currentTaste = -1; //the taste that is satisfied
				int bothTastes = -1; //the number to return if both tastes are satisfied
				if (PlayerPrefs.GetInt ("Character 1") == characterNum) { //if the current character is the first character
						currentTaste = 0; //first taste for this character
						bothTastes = 4; //what to return if both tastes are satisfied
						variables.char1TasteChecked = true; //the tastes have been checked for char1
				} else if (PlayerPrefs.GetInt ("Character 2") == characterNum) { //if the current character is the second character
						currentTaste = 2; //first taste for this character
						bothTastes = 5; //what to return if both tastes are satisfied
						variables.char2TasteChecked = true; //the tastes have been checked for char2
				}
				if (characterNum != 0) { //if this character is not the trash character check which taste combination is matched
						if (tasteDictionary [charTastes [0]] (currentWord) != 0 && tasteDictionary [charTastes [1]] (currentWord) != 0) {
								return bothTastes;
						} else if (tasteDictionary [charTastes [0]] (currentWord) != 0) {
								return currentTaste;
						} else if (tasteDictionary [charTastes [1]] (currentWord) != 0) {
								currentTaste++;
								return currentTaste;
						} else {
								return -1;
						}
				} else {
						return -1;
				}
		}
		// Add a single taste to the collection
		public void AddTaste (TasteCollection.Taste taste)
		{
				if (!myTastes.Contains (taste))
						myTastes.Add (taste);
		}

		// Add a list of tastes to the collection
		public void AddTaste (List<TasteCollection.Taste> tastes)
		{
				foreach (TasteCollection.Taste t in tastes)
						if (!myTastes.Contains (t))
								myTastes.Add (t);
		}

		// Remove a single taste
		public void RemoveTaste (TasteCollection.Taste taste)
		{
				if (myTastes.Contains (taste))
						myTastes.Remove (taste);
		}
		//Determine if a bonus is satisfied for each character, used for audio manager - Mike
		public int CharacterHappy ()
		{
				return 21;
		}
    #endregion

    #region Game management Methods
		// Use this for initialization
		void Start ()
		{
				//get the same variables everyone else is using
				if (Application.loadedLevelName != "StartScreenTest") {

						selectScript = gameObject.GetComponent<SelectScript> ();

						variables = GameObject.Find ("VariableController").GetComponent<VariableControl> ();

						if (tasteDictionary == null) { //We only need (or can have, since it's static) one copy of this game-wide, so if it's been done already, don't do it again
								tasteDictionary = new Dictionary<int, TasteCollection.Taste> ();
								//Create the dictionary of taste ID's to functions
								tasteDictionary.Add (0, TasteCollection.threeLetters);
								tasteDictionary.Add (1, TasteCollection.fiveOrLonger);
								tasteDictionary.Add (2, TasteCollection.unCommonLetters);
								tasteDictionary.Add (3, TasteCollection.endsWithVowel);
								tasteDictionary.Add (4, TasteCollection.twoOrMoreVowels);
								tasteDictionary.Add (5, TasteCollection.twoOrMoreSame);
								tasteDictionary.Add (6, TasteCollection.startsWithVowel);
								tasteDictionary.Add (7, TasteCollection.lotsOfConsonants);
								tasteDictionary.Add (8, TasteCollection.fourLetters);
								tasteDictionary.Add (9, TasteCollection.equalVowelsAndConsonants);
								tasteDictionary.Add (10, TasteCollection.trashCollection);
						}
						if (humanReadableTasteDictionary == null) { //We only need (or can have, since it's static) one copy of this game-wide, so if it's been done already, don't do it again
								humanReadableTasteDictionary = new Dictionary<int, string> ();
								//Create the dictionary of taste ID's to Human-readable text
								humanReadableTasteDictionary.Add (0, "3 letters");
								humanReadableTasteDictionary.Add (1, "5+ letters");
								humanReadableTasteDictionary.Add (2, "Letters worth 4+");
								humanReadableTasteDictionary.Add (3, "Ends in vowel");
								humanReadableTasteDictionary.Add (4, "2+ vowels");
								humanReadableTasteDictionary.Add (5, "2+ same letter");
								humanReadableTasteDictionary.Add (6, "Starts with vowel");
								humanReadableTasteDictionary.Add (7, "Lots of consonants");
								humanReadableTasteDictionary.Add (8, "4 letters");
								humanReadableTasteDictionary.Add (9, "Equal vowels \n and consonants");
								humanReadableTasteDictionary.Add (10, "trash - things that aren't words");
						}
						myTastes = new List<TasteCollection.Taste> ();
						//We have to do this all the time now, in order to display the tastes correctly.
						//{
						//initialize the tastes for the characters
						//First make a generic list of the character taste arrays so that I can
						//easily access my tastes with my character number
						List<int[]> characterTastes = new List<int[]> ();
						characterTastes.Add (new int[] { 10 }); //The trash character, ID 0, has one taste, taste 10
						characterTastes.Add (variables.TastesForFred);
						characterTastes.Add (variables.TastesForKelvin);
						characterTastes.Add (variables.TastesForSpike);
						characterTastes.Add (variables.TastesForStella);
						characterTastes.Add (variables.TastesForMeghan);
						characterTastes.Add (variables.TastesForTrash);
						//now we add an arbitrary number of tastes
						//also we set up the text to be displayed for the character's tastes
						//blank it out first so that the user cannot mess with it.
						thingsILike = "";
						foreach (int t in characterTastes[characterNum]) { //step through this character's tastes and store the ID of the taste in t
								tasteIDs.Add (t); //Add this taste ID to our personal list of taste IDs
								this.AddTaste (tasteDictionary [t]); //look it up in the dictionary and add Delegate function to our list of Taste delegate functions
								thingsILike = thingsILike + humanReadableTasteDictionary [t]; //Then add it to our text to display
								//if the size of myTastes isn't the same as the size of the array of this character's tastes, then we
								//haven't gotten all of them yet and therefore need an "and" in our human-readable string
								if (myTastes.Count != characterTastes [characterNum].Length) { //If this isn't the last taste we've got
										thingsILike = thingsILike + "\n\n";
								}
						}
						//Let's see if all that text-making worked or not
						//Debug.Log("My character number is " + characterNum + " and I like " + thingsILike);
						if (Application.loadedLevelName == "WordMaking") {
								letterGenerator = GameObject.FindGameObjectWithTag ("letterController");
								letterControl = letterGenerator.GetComponent<LetterController> ();

								if (this.characterNum != 0) {
										// scale the character to the appropriate size according to art's specifications
										// they each need a different size and placement...
										/*
                { 1, "Fred"},
                { 2, "Kelvin"},
                { 3, "Spike"},
                { 4, "Stella"},
                { 5, "Meghan"}
                */
										if (this.characterNum == 1) {
												this.transform.localScale = new Vector3 (3.2f, 3.2f, 3.2f);
												if (PlayerPrefs.GetInt ("Character 1") == characterNum) {
														this.transform.position = new Vector3 (-2.7f, .64f, 4.17f);
												} else if (PlayerPrefs.GetInt ("Character 1") == characterNum) {
														this.transform.position = new Vector3 (0.0f, .64f, 4.17f);
												}
										} else if (this.characterNum == 2) {
												this.transform.localScale = new Vector3 (1.0f, 1.0f, 1.0f);
												this.transform.Translate (new Vector3 (0.0f, 0.55f, 0.0f));
										} else if (this.characterNum == 3) {
												this.transform.localScale = new Vector3 (1.2f, 1.2f, 1.2f);
												this.transform.Translate (new Vector3 (0.0f, -1.25f, 0.0f));
										} else if (this.characterNum == 4) {
												this.transform.localScale = new Vector3 (2.0f, 2.0f, 1.0f);
												this.transform.Translate (new Vector3 (0.0f, 0.4f, 0.0f));
										} else if (this.characterNum == 5) {
												this.transform.localScale = new Vector3 (1.4f, 1.4f, 1.4f);
												this.transform.Translate (new Vector3 (0.0f, .8f, 0.0f));
										}
								}
						}
				}
		}

		void WordSound ()
		{
				if (characterNum == 0) {
						variables.chewingSound = 18;
				} else {
						variables.chewingSound = 13;
				}
		}
		// Update is called once per frame
		void Update ()
		{
				if (characterNum != 0) {
						// damon took this out - it was printing a lot of times!
						//print (thingsILike);
				}
				if (Application.loadedLevelName == "CharacterSelectTest") {

						if (selectScript.selected) {
								tasteObj.SetActive (true);
						} else {
								tasteObj.SetActive (false);
						}
				}
				//checks to see if tastes should be highlighted 
				if (Application.loadedLevelName == "WordMaking") {
						if (characterNum != 0 && variables.timeToCheckForTastes) {
								int toHightlight = TasteGlow (characterNum);
								// highLightNum = TasteGlow(characterNum);
								if (toHightlight > -1) {
										if (toHightlight < 4) {
												variables.timeToHighlightTaste [toHightlight] = true;
										} else if (toHightlight == 4) {

												variables.timeToHighlightTaste [0] = true;
												variables.timeToHighlightTaste [1] = true;



										} else if (toHightlight == 5) {

												variables.timeToHighlightTaste [2] = true;
												variables.timeToHighlightTaste [3] = true;
										}
								}
						}
				}

		}

		// If I'm clicked on, attempt to feed me the word on the stove
		void OnMouseUpAsButton ()
		{

				if (Application.loadedLevelName == "WordMaking") {
						//First grab the word - we're gonna need it!
						string word = letterControl.sendWord ();
						//check if there even is a word!
						if (word == null) {
								return;
						}
						//score the word - do we have a score?
						int wordScore = Likes (word);
						if (letterControl.checkForWord (word) == false)
								variables.notWord = true;
						//Debug.Log(word);
						//If it was valid, we'll get a score above 0, so update our score and get that word out of here!
						if (wordScore > 0) {
								if (word.StartsWith ("funk")) {
										variables.funky = true;
								}
								switch (characterNum) {
								case 1:
                        //FRED EATING ANIMATION GOES HERE 
                        //return 23;
                        //Animation.CrossFade("KelvinEatingAnim");
										GetComponent<Animator> ().SetTrigger ("eat");
										Debug.Log ("Fred eating animation");
										variables.eatingSound = 29;
										break;
								case 2:
										Debug.Log ("Kelvin eating animation");
										GetComponent<Animator> ().SetTrigger ("eat");
										variables.eatingSound = 30;
                        //					animation.Play("KelvinEatingAnim");
                        //return 32;
										break;
								case 3:
                        //SPIKE EATING ANIMATION GOES HERE
                        //return 26;
										Debug.Log ("Spike eating animation");
										GetComponent<Animator> ().SetTrigger ("eat");
										variables.eatingSound = 31;
										break;
								case 4:
                        //STELLA EATING ANIMATION GOES HERE
                        //return 35;
										Debug.Log ("Stella Eating Animation");
										GetComponent<Animator> ().SetTrigger ("eat");
										variables.eatingSound = 32;
										break;
								case 5:
                        //MEGAN EATING ANIMATION GOES HERE
                        //return 29;
										Debug.Log ("Megan Eating Animation");
										GetComponent<Animator> ().SetTrigger ("eat");
										variables.eatingSound = 33;
										break;
								default:
                        //return 0;
										Debug.Log ("Default");
										break;
								}

								//Keep track of words fed to me!
								int letterScore = 0;
								foreach (char letter in word) {
										letterScore += LetterController.letterScores [letter];
								}
								//We've already got the total score, so we can figure the multiplier from the letterscore and the total score
								float multiplier = wordScore / letterScore;

								Debug.Log (word + " " + letterScore.ToString () + " " + multiplier.ToString ());

								wordsFedToMe.Add (word + " " + letterScore + " " + multiplier);

								//Output the score text
								if (characterNum != 0) {
										variables.scoreText.color = Color.white;
										variables.scoreText.transform.localScale = new Vector3 (1.0f, 1.0f);

										Vector3 scorePos = new Vector3 (0.0f, 2.0f, 0.0f);
										variables.scoreText.GetComponent<ScoreTextScript> ().score = true;
										variables.scoreText.GetComponent<ScoreTextScript> ().mult = false;
										variables.scoreText.GetComponent<ScoreTextScript> ().trash = false;
										variables.scoreText.GetComponent<ScoreTextScript> ().baseScore = letterScore;
										variables.scoreText.GetComponent<ScoreTextScript> ().totalScore = wordScore;
										variables.scoreText.GetComponent<ScoreTextScript> ().multiplier = multiplier;

										if (variables.bigMealAdditives [word.Length - 2] != 0) {
												variables.scoreText.GetComponent<ScoreTextScript> ().longWord = true;
												variables.scoreText.GetComponent<ScoreTextScript> ().bigMealBonusVal = variables.bigMealAdditives [word.Length - 2];
										} else {
												variables.scoreText.GetComponent<ScoreTextScript> ().longWord = false;
										}

										Instantiate (variables.scoreText, scorePos, Quaternion.identity);
								}

								// output the multiplier
								if (characterNum != 0 && multiplier > 1) {
										variables.multiplierText.color = Color.white;
										variables.multiplierText.transform.localScale = new Vector3 (1.0f, 1.0f);

										Vector3 multPos = new Vector3 (0.0f, 1.0f, 0.0f);
										variables.multiplierText.GetComponent<ScoreTextScript> ().score = false;
										variables.multiplierText.GetComponent<ScoreTextScript> ().mult = true;
										variables.multiplierText.GetComponent<ScoreTextScript> ().trash = false;
										variables.multiplierText.gameObject.GetComponent<ScoreTextScript> ().multiplier = multiplier;

										if (variables.doubleTasteSound == true) {
												// both tastes were matched
												variables.multiplierText.gameObject.GetComponent<ScoreTextScript> ().bothTastes = true;
										} else {
												variables.multiplierText.gameObject.GetComponent<ScoreTextScript> ().bothTastes = false;
										}

										if (variables.bigMealAdditives [word.Length - 2] != 0) {
												variables.multiplierText.GetComponent<ScoreTextScript> ().longWord = true;
												variables.multiplierText.GetComponent<ScoreTextScript> ().bigMealBonusVal = variables.bigMealAdditives [word.Length - 2];
										} else {
												variables.multiplierText.GetComponent<ScoreTextScript> ().longWord = false;
										}

										Instantiate (variables.multiplierText, multPos, Quaternion.identity);
								}

								// output the crumbs
								if (characterNum != 0) {
										ParticleHelper.Instance.outputCrumbs (gameObject.transform.position + new Vector3 (0, 1, -3));
								}

								//update the score!
								variables.score += wordScore;

								//Debug.Log("The total score is" + variables.score);
								letterControl.ResetStove ();

								//Checks for bonus and sets value of happy sound for Audio Manager
								if (variables.bonus == true) {
										variables.happySound = CharacterHappy ();
								}
								WordSound ();
								variables.chewing = true;
						}

						if (wordScore == 0) {
								if (characterNum != 0) {
										Debug.Log ("True");
										variables.sadSound = 12;
								}

								if (characterNum == 0) {
										variables.sadSound = 18;
										letterControl.ResetStove ();

										// subtract the appropriate amount from the player's score
										int loseAmount = variables.trashScore * word.Length;
										if (variables.score < loseAmount) {
												loseAmount = variables.score;
										}
										if (loseAmount > 0) { //No point in subtracting unless there's something to subtract!
												variables.score -= loseAmount;
										} else {
												Debug.Log ("Score is already 0 - not subtracting anything");
										}

										// show that they've lost that many points, but only if they are actually losing points
										if (loseAmount > 0) {
												variables.scoreText.color = Color.white;
												variables.scoreText.transform.localScale = new Vector3 (1.0f, 1.0f);

												Vector3 scorePos = new Vector3 (0.0f, 2.0f, 0.0f);
												variables.scoreText.GetComponent<ScoreTextScript> ().score = false;
												variables.scoreText.GetComponent<ScoreTextScript> ().mult = false;
												variables.scoreText.GetComponent<ScoreTextScript> ().trash = true;
												variables.scoreText.GetComponent<ScoreTextScript> ().baseScore = loseAmount;

												Instantiate (variables.scoreText, scorePos, Quaternion.identity);
										}
								}
						}
				}
		}

		void OnDestroy ()
		{
				if (Application.loadedLevelName == "WordMaking") {
						if (PlayerPrefs.GetInt ("Character 1") == characterNum) {
								GameObject.Find ("WordsFed").GetComponent<StoreWordsFed> ().character1Words = wordsFedToMe;
						} else if (PlayerPrefs.GetInt ("Character 2") == characterNum) {
								GameObject.Find ("WordsFed").GetComponent<StoreWordsFed> ().character2Words = wordsFedToMe;
						}
				}
		}
    #endregion
}
