using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class LetterController : MonoBehaviour
{
		VariableControl variables = new VariableControl ();
		public bool lastHand = false;
		public bool noWordsLeft = false;
		public letterBehaviour letterObj;
		public letterBehaviour[] lettersOnBoard;
		public letterBehaviour[] lettersOnStove;
		public int[] positionOnBoard;
		public int numLettersOnStove = 0;
		private int boardSize;
		public Vector3[] stoveSpots;
		public Vector3[] bankSpots;
		public GameObject steamPrefab;
		public GameObject[] stoveSteam;
		public GameObject heatPrefab;
		public GameObject[] stoveHeat;
		public string letters;
		public int vowels = 0;
		public string myLetters;
		int safetyCount;
		public int vowelsAddedInCycle = 0;
		public int next;
		public bool[] newArraySpot;
		public int emptyLetterCount = 0;
		public TextAsset sowpods;
		private List<string> wordList = new List<string> ();
		private List<string> combinationList = new List<string> ();
		private List<string> permutationList = new List<string> ();
		public static Dictionary<char, int> letterScores;
		public Texture2D shuffleButton;
		public bool gamePaused;
		public GameObject gameController;
		public bool needsReordering = true;
		public int countToEndGame;
		public string lastWordChecked;
		//letter tuning from Josiah 
		private char[] vowelList = {'a', 'e', 'i', 'o', 'u'};
		private char[] consonantList =
	{
		'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's',
		't', 'v', 'w', 'x', 'y', 'z',
	};
		public int numVowels;
	    public bool stopSearch = false;


		// Use this for initialization
		void Start ()
		{
				//initialize variablecontrol reference
				variables = GameObject.Find ("VariableController").GetComponent<VariableControl> ();

				//connects boardSize variable to the value in the variable controller
				boardSize = variables.boardSize;

				//initialize the lettersOnBoard array as the size of the board, as letterBehaviour. Also creates array for lettersOnStove
				lettersOnBoard = new letterBehaviour[boardSize];
				lettersOnStove = new letterBehaviour[boardSize];
				newArraySpot = new bool[boardSize];
				positionOnBoard = new int[boardSize];

				//creates the list of valid words and letter scores
				makeWordListAndScoreDict ();

				//initialize all physical spots on board (as arrays of Vector3's according to amount of letters on board
				stoveSpots = new Vector3[boardSize];
				bankSpots = new Vector3[boardSize];
				for (int i = 0; i < boardSize; i++) {
						stoveSpots [i] = new Vector3 (i * 1.4f - 5.7f, -1.26f, 0);
						bankSpots [i] = new Vector3 (i * 1.8f - 6.3f, -3.6f, 0);
						positionOnBoard [i] = -1;
				}
				variables.letterGenerationSound = true;
				CreateSteam ();
				//CheckPermutations("mnmnbv");
		}

		// Update is called once per frame
		void Update ()
		{
			
				string word = sendWord ();
				//check if there even is a word!
				if (word == null || word.Length < variables.minWordLength || !checkForWord (word)) {
						variables.isWord = false;
				} else {
						variables.isWord = true;
				}
				//triggers the check to met tastes if the word on the stove is a new and valid 
				if (variables.isWord && lastWordChecked != word) {
						variables.timeToCheckForTastes = true;
						//sets the initial values for all highlighting options to false before they are checked
						for (int i = 0; i < variables.timeToHighlightTaste.Length; i++) {
								variables.timeToHighlightTaste [i] = false;
						}
						variables.timeToCheckForTastes = true;
				} 
				lastWordChecked = word;
				//Calls MoveToFromStoveArray, which in turn calls three functions related to making sure any letters clicked either go to the stove,
				//are removed from stove (if they are clicked off the stove)
				moveToAndFromStove ();

				//if there are fewer than boardSize letters (basically if a word has been sent to a character) refills the letter banks
				//to the adequate size
				if (myLetters.Length < variables.boardSize) {
						//Debug.Log ("Replacing letters because " + myLetters.Length + " is less than " + variables.boardSize);
						replaceBankLetters ();
				}

				//ends the game if the player has run out of letters
				//changed - used to be emptyLetterCount >= 5
                if ((variables.totalLetters == 0) && (countToEndGame >= 7))
                {
                    gameController.GetComponent<wordBuildingController>().sendVariablestoScoreScreen();
                    Application.LoadLevel("ScoreScreen");
                }
				TurnOnOffSteam ();
				countToEndGame = CountEmptyLetters (myLetters);
				//updatePlaceholders();
		 	if(!variables.timedMode){
				if(variables.lettersRemaining <= boardSize && !stopSearch && !noWordsLeft){
					CheckPermutations(myLetters);
				}
				if(noWordsLeft){
					variables.endGame = true;
				}
			}
		  
		}

	//KEEP THIS FUNCTION - it is in progress!!
//		void updatePlaceholders(){
//			if(!lastHand && emptyLetterCount > 0){
//				for(int i = 0; i<boardSize; i++){
//				//-51 is the value that letterAlphabet order will have if it is a placeholder
//					if(lettersOnBoard[i].letterAlphabetOrder == -51){
//						lettersOnBoard[i].used = true;
//						Destroy (lettersOnBoard[i].gameObject);
//						lettersOnBoard[i] = null;
//					}
//				}
//				emptyLetterCount = 0;
//				myLetters = lettersInHand ();
//				//replaceBankLetters();
//				lastHand = true;
//			}
//
//		}

		IEnumerator animateLetters (letterBehaviour letterToMove, Vector3 currentSpot, Vector3 moveToHere)
		{

				letterToMove.isMoving = true;

				Vector3 velocity = new Vector3 (0, 0, 0);
				int dontCrash = 0;
				//for( float i = 0f; i < 1; i += .15f){
				if (letterToMove == null){
						Debug.Log ("LetterToMove is null and shouldn't be!! Error!");
				}
				while (dontCrash < 100 && letterToMove.transform.position != moveToHere && letterToMove != null) {
						dontCrash++;
						letterToMove.transform.position = Vector3.SmoothDamp (letterToMove.transform.position, moveToHere, ref velocity, .05f);
						yield return null;	
				}
				//}
				letterToMove.isMoving = false;

		}
	
	 

		void CreateSteam ()
		{
				stoveSteam = new GameObject[boardSize];
				stoveHeat = new GameObject[boardSize];
				for (int x = 0; x < boardSize; x++) {
						stoveSteam [x] = Instantiate (steamPrefab, stoveSpots [x] + new Vector3 (0, -.5f, -.5f), new Quaternion (0, 0, 0, 0)) as GameObject;
						stoveSteam [x].transform.eulerAngles = new Vector3 (-90, 0, 0);

						stoveHeat [x] = Instantiate (heatPrefab, stoveSpots [x] + new Vector3 (0, -.5f, -.5f), new Quaternion (0, 0, 0, 0)) as GameObject;
						//stoveHeat[x].transform.eulerAngles = new Vector3 (-90,0,0);
						stoveHeat [x].transform.Translate (new Vector3 (0.0f, 0.5f, 0.0f));
				}
		}

		void TurnOnOffSteam ()
		{
				for (int x = 0; x < boardSize; x++) {
						if (x < numLettersOnStove && variables.isWord) {
								stoveSteam [x].particleSystem.emissionRate = 30;
								stoveHeat [x].particleSystem.emissionRate = 10;
						} else {
								stoveSteam [x].particleSystem.emissionRate = 0;
								stoveHeat [x].particleSystem.emissionRate = 0;
						}

				}
		}


		string returnLetters (int n)
		{
				//Random r = new Random();
				//for the number of letters asked for, return a string with that many random letters in it.
				//First empty the letters variable of its old contents.
				letters = null;
				char randLetterChar;
				for (int i = 1; i <= n; i++) {
						randLetterChar = randomLetter (); //Get a random letter
						//update the hand immediately so we can count vowels correctly - this asks in batches so if we don't do this,
						//we don't know how many vowels we will have on the board when returnLetters returns and therefore cannot
						//correctly assess if we need more vowels or not (or specifically need consonants!)
						myLetters += randLetterChar;
						letters += randLetterChar;
						if (randLetterChar == '.'){
								emptyLetterCount++;
						}
				}
				return letters;
		}
	
		//takes a random letter out of the bag
		char randomLetter ()
		{    
				//Make a big long list of all the letters in the letter bag, for easy picking
				//Let's also make bags of just the vowels and consonants at the same time, for even easier picking
				//These bags aren't the real things - they're copies just for the purposes of choosing a random letter,
				//recreated from the real thing each time we ask for a random letter
				//We will decrement the real thing when we choose one
				List<char> serializedLetterBag = new List<char> ();
				List<char> vowelsInLetterBag = new List<char> ();
				List<char> consonantsInLetterBag = new List<char> ();
				foreach (KeyValuePair<char, int> entry in variables.letterBag) { //loop through our letterBag Dictionary
						for (int i = 1; i <= entry.Value; i++) { //Add that many letters to our serialized version (it could well be 0 - that's fine)
								serializedLetterBag.Add (entry.Key);
								if (vowelList.Contains (entry.Key)) { //If it's a vowel, add it to the vowel bag
										vowelsInLetterBag.Add (entry.Key);
								}
								if (consonantList.Contains (entry.Key)) { //If it's a consonant, add it to the consonant bag
										consonantsInLetterBag.Add (entry.Key);
								}
						}
				}
				//update the number of vowels in hand
				numVowels = countVowels (); //count the number of vowels that are on the board so that we know what to do later in this function
				//First check if there are any letters in the bag. If not, return a ",", which says to returnLetters that we're empty - we've got none letters. Too bad.
				if (serializedLetterBag.Count () == 0)
						return '.';
				//If we don't have enough vowels on the board, return a vowel, as long as we've got one
				if (numVowels < variables.minNumVowels && variables.totalVowels <= 0)
                {
                    
					//Removes a consonant from the bag.
					char letterToReturn = serializedLetterBag[0];
					for (int i = 1; i < serializedLetterBag.Count; i++) {
						if (letterScores[serializedLetterBag[i]] > letterScores[letterToReturn]) {
							letterToReturn = serializedLetterBag[i];
						}
					}
//                    char letterToReturn = serializedLetterBag[Random.Range(0, serializedLetterBag.Count() - 1)];
                    variables.letterBag[letterToReturn] = variables.letterBag[letterToReturn] - 1;

                    //Creates an additional "A" or "E" if there are no vowels left
                    float aOrE = Random.Range(0.0f, 1.0f);

                    if (aOrE < 0.5f)
                    {
                        variables.numA++;
                        variables.totalVowels++;
                        vowelsInLetterBag.Add('a');


                    }
                    if (aOrE >= 0.5f)
                    {
                        variables.numE++;
                        variables.totalVowels++;
                        vowelsInLetterBag.Add('e');
                    }


                }
						Debug.Log ("There aren't enough vowels on the board, but we don't have any left!");
				if (numVowels < variables.minNumVowels && variables.totalVowels > 0) {
						//Debug.Log ("Logic says we MUST return a vowel and we've got one to give");
						char vowelToReturn = vowelsInLetterBag [Random.Range (0, vowelsInLetterBag.Count () - 1)]; //pick a random vowel
						variables.totalVowels--; //decrement total number of Vowels
						variables.totalLetters--; //decrement total number of letters
						variables.letterBag [vowelToReturn] = variables.letterBag [vowelToReturn] - 1; //decrement the number of that letter in the global letterBag
                    //Restores letters if playing timed mode.
                    if (variables.timedMode)
                    {
                        variables.totalVowels++;
                        variables.totalLetters++;
                        variables.letterBag[vowelToReturn] = variables.letterBag[vowelToReturn] + 1;

                    }
						//Debug.Log ("Returning " + vowelToReturn);
						return vowelToReturn; //return that vowel!
				}
				if (numVowels >= variables.maxNumVowels) { //If we already have enough vowels (or too many, but we screwed up if that happens), return a consonant
						//Debug.Log ("Logic says we MUST return a consonant");
						char consonantToReturn = consonantsInLetterBag [Random.Range (0, consonantsInLetterBag.Count () - 1)]; //pick a random consonant
						variables.letterBag [consonantToReturn] = variables.letterBag [consonantToReturn] - 1; //decrement the number of that letter in the global letterBag
						variables.totalLetters--; //decrement total number of letters to display to player
                    if (variables.timedMode)
                    {
                        variables.letterBag[consonantToReturn] = variables.letterBag[consonantToReturn] + 1;
                        variables.totalLetters++;
                    }
						//Debug.Log ("Returning " + consonantToReturn);
						return consonantToReturn;
				} else { //Else, we're free to return anything - we don't have the max number of vowels or too few vowels
						//Debug.Log ("Logic says we can return anything we want.");
						char letterToReturn = serializedLetterBag [Random.Range (0, serializedLetterBag.Count () - 1)];
						variables.letterBag [letterToReturn] = variables.letterBag [letterToReturn] - 1; //decrement the number of that letter in the global letterBag
                        if (vowelList.Contains(letterToReturn))
                        {
                            variables.totalVowels--; //if it's a vowel, decrement global vowel number
                            if (variables.timedMode)
                            {
                                variables.totalVowels++;
                            }
                        }
						variables.totalLetters--; //decrement total number of tiles in bag to display to player

                    if (variables.timedMode)
                    {
                        variables.totalLetters++;
                    }
						//Debug.Log ("Returning " + letterToReturn);
						return letterToReturn;
				}
		}


		void CreateLetters (string l)
		{
				if (!gamePaused) {
						//take the string of letters to turn into on screen objects, and chop it into an array of its characters
						char[] letterArray = l.ToCharArray ();
						print (l.ToString ());
						
						//run all the characters through a loop, find them, and then at the end of each loop iteration, instantiate the found letter in the array lettersOnBoard

						for (int i = 0; i < l.Length; i++) {
								//			//print(letterArray[i]);

								lettersOnBoard [boardSize - i - 1] = Instantiate (letterObj, bankSpots [boardSize - i - 1] - new Vector3 (0, 10, 0), new Quaternion (0, 0, 0, 0)) as letterBehaviour;
								lettersOnBoard [boardSize - i - 1].letter = letterArray [i].ToString ();
						}
				}
				//Debug.Log ("Put new letters on board: " + l.ToString () + " and now I have " + lettersInHand ());
		}
	
		void replaceBankLetters ()
		{

				//makes sure the array containing the letters on board is filled from the front until there are no more letters
				//so there are no spaces in the array between letters. Only has any effect if a word was sent out recently and there
				//are now fewer letters on board than boardSize.
				//This code is intended to move everything to the left in the array, so that all the blank spaces are on the right.
				letterBehaviour [] temp = new letterBehaviour[boardSize];
				int counter = 0;
				for (int i = 0; i < boardSize; i++) {
						if (lettersOnBoard [i] != null) {
								temp [counter] = lettersOnBoard [i];
								counter++;
						}

				}
				lettersOnBoard = temp;
				/*
				 * for (int i = (boardSize - 1); i > 0; i--) {
						if (lettersOnBoard [i] != null && lettersOnBoard [i - 1] == null) {
								lettersOnBoard [i - 1] = lettersOnBoard [i];
								lettersOnBoard [i] = null;
						}
				}
				*/
				//print out lettersOnBoard for debugging purposes
				//Debug.Log ("Now lettersOnBoard is " + lettersOnBoard.ToString () + " before replacing");

				//if a letter was sent out recently and it has been one second since then,
				//this block of code replaces all missing letters on board with random ones
				// and effectively fills the bank.

			
				int needsReplacing = 0;
				for (int i = 0; i < boardSize; i++) {
						if (lettersOnBoard [i] == null) {
								needsReplacing++;
						}

						positionOnBoard [i] = -1;
				}
				if (needsReplacing > 0) {
						string newLetters = returnLetters (needsReplacing);
						//Debug.Log ("Got new letters from returnLetters: " + newLetters);
						//print (newLetters);
						CreateLetters (newLetters);
			 
				}
		}

	
		void moveToAndFromStove ()
		{

				//runs a loop through every letter on board
				for (int i = 0; i < lettersOnBoard.Length; i++) {

						//checks if any letters on the board should be moved to the stove and adds them to the stove array if so
						if (lettersOnBoard [i] != null) {
								// all letters on the board should be white always
								lettersOnBoard[i].gameObject.renderer.material.color = Color.white;

								if (!lettersOnBoard [i].onStove && lettersOnBoard [i].selected) {
										lettersOnStove [numLettersOnStove] = lettersOnBoard [i];
										positionOnBoard [numLettersOnStove] = i;
										lettersOnBoard [i].onStove = true;
										lettersOnBoard [i].orderOnStove = numLettersOnStove;
										numLettersOnStove++;
								}

								// check for a valid word, and if there is one, color the letters gold-like
								if (variables.isWord) {
									if (variables.isWord) {
										for (int x = 0; x < lettersOnStove.Length; x++) {
											if (lettersOnStove[x] != null) {
												lettersOnStove[x].gameObject.renderer.material.color = new Color(0.8f, 0.8f, 0.2f);
											}
										}
									} else {
										for (int x = 0; x < lettersOnStove.Length; x++) {
											if (lettersOnStove[x] != null) {
												lettersOnStove[x].gameObject.renderer.material.color = new Color(1.0f, 1.0f, 1.0f);
											}
										}
									}									
								}

								//checks if any of the letters on the board should be removed from the stove, and if so removes them from the stove array
								if (lettersOnBoard [i].onStove && !lettersOnBoard [i].selected) {

										//the following actions go through and get rid of every letter on the stove to the right of the selected one for removal, by for looping through all the letters on the stove
										numLettersOnStove = lettersOnBoard [i].orderOnStove;
										for (int x = lettersOnBoard[i].orderOnStove; x < boardSize; x++) {
												if (lettersOnStove [x] != null) {
														lettersOnStove [x].orderOnStove = -1;
														lettersOnStove [x].selected = false;
														lettersOnStove [x].onStove = false;
														lettersOnStove [x] = null;
														positionOnBoard [x] = -1;
												}
										}
								}
								//checks all letters on stove, and puts them in the correct position
								if (lettersOnStove [i] != null && lettersOnStove [i].transform.position != stoveSpots [i]) {
										//lettersOnStove[i].transform.position = stoveSpots[i];
										if (!lettersOnStove [i].isMoving) {
												StartCoroutine (animateLetters (lettersOnStove [i], lettersOnStove [i].transform.position, stoveSpots [i]));												
										}
								}
								//checks all letters that are on the board but not the stove, and puts them in the correct position
								if (!lettersOnBoard [i].onStove && lettersOnBoard [i].transform.position != bankSpots [i]) {
										//lettersOnBoard[i].transform.position = bankSpots[i];
										if (!lettersOnBoard [i].isMoving) {
												StartCoroutine (animateLetters (lettersOnBoard [i], lettersOnBoard [i].transform.position, bankSpots [i]));
										}
								}
						}
				}
				needsReordering = false;

		}


		public void ResetStove ()
		{
				//First, since we still have the non-null array of letters on the stove, go through and kill their lettersOnBoard equivalents
				//It is unclear to me why this is necessary, since I thought that lettersOnStove contained a subset of the same objects
				//that is in lettersOnBoard... if we wait a couple of Updates, they go away, so I think it's just Unity doing things non-atomically
				//Still, this is worth it because doing this means that we don't have to update myLetters on every Update.
				foreach (letterBehaviour stoveLetter in lettersOnStove) {
						for (int j = 0; j < boardSize; j++) {
								if (lettersOnBoard [j] != null && stoveLetter != null && stoveLetter == lettersOnBoard [j]) {
										//Debug.Log ("Destroying " + lettersOnBoard [j].letter);
										lettersOnBoard [j] = null;
								}
						}
				}
				//Now destroy the ones on the stove. Theoretically, this should have already been done above... but, see above.
				for (int i = 0; i < boardSize; i++) {
						if (lettersOnStove [i] != null) {
								lettersOnStove [i].used = true;
								Destroy (lettersOnStove [i].gameObject);
								lettersOnStove [i] = null;
						}
				}
				myLetters = lettersInHand ();
				//Debug.Log ("myLetters is now " + myLetters);
				numLettersOnStove = 0;
				variables.letterGenerationSound = true;
				stopSearch = false;

		}

		//can be called to return whatever is on the stove as a string
		public string sendWord ()
		{
				//creates a local variable to be returned- whatever word is on stove
				string currentWord = null;

				//runs through all letters on stove, adds their char to the currentword in the order it is on the stove,
				//and then destroys the letters (SHOULD BE CHANGED IF METHOD OF CHECKING/DISCARDING WORDS CHANGED)!!
				for (int i = 0; i < boardSize; i++) {
						if (lettersOnStove [i] != null) {
								currentWord += lettersOnStove [i].letter;
						}
				}

				//resets all variables related to whats on stove, and then returns the string of whats on stove
				//		print("WORD SUBMITTED: " + currentWord.ToString());
				return currentWord;

		}

		//shuffles the letters currently in your hand
		void shuffleLetters ()
		{
				variables.shuffleSound = true;
				int nextSpotNum = -1;
				//creates an array to temporarily store the new array locations for each letter
				letterBehaviour[] nextLetters;
				nextLetters = new letterBehaviour[boardSize];
				//clears the boolean array that determines which spots are taken
				clearSpots ();
				//finds a new spot for each letter in the array
				for (int i = 0; i < boardSize; i++) {
						if (!spotIsOnBoard (i)) {
								//finds an untaken spot for that letter
								while (nextSpotNum == -1) {
										nextSpotNum = findNewSpot ();
								}
								//stores the letter in the temp array
								nextLetters [nextSpotNum] = lettersOnBoard [i];
								newArraySpot [nextSpotNum] = true;
								nextSpotNum = -1;
						}
				}
				//sets the letter array to the temp array and changes positions
				for (int i = 0; i < boardSize; i++) {
						if (!spotIsOnBoard (i)) {
								lettersOnBoard [i] = nextLetters [i];
								//I commented out the following line because it is taken care of in moveToFromStove() 
								//in general letter placement upkeep
								//lettersOnBoard[i].transform.position = bankSpots[i];

						}
				}
		}


		//clears the spots in the bool array for new letter spots
		void clearSpots ()
		{
				for (int i = 0; i < boardSize; i++) {
						newArraySpot [i] = false;
				}
		}

		//returns a random int if that spot in the array is untaken
		int findNewSpot ()
		{
				int nextSpotNum = 0;
				nextSpotNum = (int)Random.Range (0, boardSize);
				if (newArraySpot [nextSpotNum] == false && !spotIsOnBoard (nextSpotNum)) {
						return nextSpotNum;
				} else {
						return -1;
				}
		}

		bool spotIsOnBoard (int spotNum)
		{
				bool onBoard = false;
				for (int i = 0; i < boardSize; i++) {
						if (positionOnBoard [i] == spotNum) {
								onBoard = true;
						}
				}
				return onBoard;
		}
		//current test for sending words from stove
		void OnGUI ()
		{
				//if (GUI.Button(new Rect(430, 370, 100, 30), "Send Word")){
				//	sendWord();
				//} else 
				if (!gamePaused) {
						GUIStyle style = new GUIStyle ();
						style.normal.background = shuffleButton;

						if (GUI.Button (new Rect (Screen.width * 0.013f, Screen.height * 0.43f, Screen.width * 0.07f, Screen.width * 0.07f), "", style)) { //shuffles the letters in your hand
								shuffleLetters ();
						}
				}
		}

		void makeWordListAndScoreDict ()
		{
				if (letterScores == null) {
						letterScores = new Dictionary<char, int> ();
			
						//Create the dictionary of letter scores
						foreach (char letter in "eaionrtlsu") {
								letterScores.Add (letter, 1);
						}
						foreach (char letter in "dg") {
								letterScores.Add (letter, 2);
						}
						foreach (char letter in "bcmp") {
								letterScores.Add (letter, 3);
						}
						foreach (char letter in "fhvwy") {
								letterScores.Add (letter, 4);
						}
						letterScores.Add ('k', 5);
						foreach (char letter in "jx") {
								letterScores.Add (letter, 8);
						}
						foreach (char letter in "qz") {
								letterScores.Add (letter, 10);
						}
						letterScores.Add ('.', 0);

				}

				//This method makes the word list once
				string[] tempWordList = sowpods.text.Split ('\n');
				for (int j = 0; j < tempWordList.Length; j++) {
						string proposedWord = tempWordList [j].Trim ();
						if ((proposedWord.Length >= variables.minWordLength) && (proposedWord.Length <= variables.maxWordLength)) {
								wordList.Add (proposedWord);
						}
				}
		}

		public bool checkForWord (string word)
		{
				if (word != null) {
						//This method will, when passed a word, check if it's a valid word
						//Our word list happens to contain uppercase only words, so convert before checking
						//Debug.Log ("Checking a word in checkForWord!");
						return (wordList.Contains (word.ToUpper ()));
				} else {
						return false;
				}
		}

		public int countVowels ()
		{
				int vowelCount = 0;
				foreach (char letter in myLetters) {
						if (vowelList.Contains (letter)) {
								vowelCount++;
						}
				}
				return vowelCount;
		}
//	Returns a string of the current letters on the board
		public string lettersInHand ()
		{
				string letters = "";
				for (int i = 0; i < boardSize; i++) {
						if (lettersOnBoard [i] != null) {
								letters += lettersOnBoard [i].letter;
						}
				}
				return letters;
		}
		int CountEmptyLetters (string myLetters)
		{
				int count = 0;
				foreach (char element in myLetters.ToCharArray()) {
						if ((element == ',') || (element == '.')) {
								count++;
						}
				}
				return count;
		}
	void CheckPermutations(string input){
		CreateCombinations("" , input);
		for(int i = 2; i < input.Length+1; i++){
			foreach(string check in combinationList){
				if(check.Length == i && !stopSearch){
					bool[] usedChar = new bool[i];
					char[] chars = new char[i];
					chars = check.ToCharArray();
					//print (check);
					CreateAndSubmitPermutations(chars, i,0,usedChar, "");
				}
			}
		}
		if(!stopSearch){
			noWordsLeft = true;
		}
	}

	void CreateAndSubmitPermutations(char[] check, int length, int level, bool[] usedChar,string output){
		if(stopSearch){
			return;
		}
		if(level == length){
			//print (output);
			if(checkForWord(output)){
				stopSearch = true;
				print ("WORD FOUND: " + output); 
			}
			return;
		}
		for(int i = 0; i<length; i++){
			if(!usedChar[i]){
				output += check[i].ToString();
				usedChar[i] = true;
				CreateAndSubmitPermutations(check, length, level+1,usedChar,output);
				usedChar[i] = false;
				output = "";
			}
		}
		//print (output);
		
	}

	void CreateCombinations(string active , string rest){
		//print (rest[0]);
		if(active == null && rest == null){
			return;
		}
		if(rest == ""){
			if(active.Length > 1){
				combinationList.Add(active);
				//print (active);
			}
			return;
		}
		else{
			//print(rest);
			CreateCombinations(active + rest[0],rest.Substring(1));
			CreateCombinations(active,rest.Substring(1));
		}

	}


}
