using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine.Analytics;

public class wordBuildingController : MonoBehaviour
{
        #region Variables
        //for taste panels, index 0 is left and index 1 is right side
		public GameObject[] tastePanels = new GameObject [2];
		//public GameObject[] highlightPanels = new GameObject [4];
		public GameObject[] tasteTexts = new GameObject[4];
		private Texture2D[] leftPanels = new Texture2D [6];
		private Texture2D[] rightPanels = new Texture2D [6];
        // The taste information
		private Texture2D[] leftTopTaste = new Texture2D [6];
		private Texture2D[] rightTopTaste = new Texture2D [6];
		private Texture2D[] leftBottomTaste = new Texture2D [6];
		private Texture2D[] rightBottomTaste = new Texture2D [6];
        // The highlighted versions of the characters' tastes
		private Texture2D[] leftBottomHighLights = new Texture2D[6];
		private Texture2D[] rightBottomHighLights = new Texture2D[6];
		private Texture2D[] leftTopHighLights = new Texture2D[6];
		private Texture2D[] rightTopHighLights = new Texture2D[6];
        // Where to position the highlighted versions of the tastes
        public Vector3[] tasteHighLightPos = new Vector3[4];
        public GameObject[] tasteHighlighters = new GameObject[4];

        // The characters on screen
        public GameObject[] characters = new GameObject[6];
        public GameObject character1;
        public GameObject character2;
        public GameObject trashCharacter;
        int character1Num = 1;
        int character2Num = 2;
        // The sprites for character tastes
        public GameObject char1Taste1;
        public GameObject char1Taste2;
        public GameObject char2Taste1;
        public GameObject char2Taste2;
        // for diner reflections
        public GameObject rightCharacterReflection;
        public GameObject leftCharacterReflection;
        public Texture2D[] reflectionTextures = new Texture2D[12];

        // Interface controllers and text meshes
		public VariableControl variables;
		public GameObject variableController;
		public Texture2D endGameButton;
        public GameObject tutorial;
        public TextMesh lettersRemaining;
        public TextMesh timeRemaining;
        // Manages the letter counts and stove details
        public GameObject letterCon;
        LetterController letterController;

        // For whether the game should transition to summary screen
        public bool fadingOut = false;
        public bool fadeOut = false;
        public GameObject greyOut;
        public GameObject closingTimeText;
        public GameObject alertFlash;
        public bool alertStarted = false;
        public bool secondAlert = false;
        public bool flashOnce = true;
        public bool flashRedAgain = false;
    #endregion

        // Use this for initialization
		void Start ()
		{
				if (GameObject.FindWithTag ("Diner") != null) {
					DestroyObject (GameObject.FindWithTag("Diner"));
			   	}
				DestroyObject (GameObject.Find ("AudioManager_Menu(Clone)"));
				DestroyObject (GameObject.Find ("AudioManager_Summary(Clone)"));
				Resources.UnloadUnusedAssets ();

				letterController = letterCon.GetComponent<LetterController> ();
				variables = variableController.GetComponent<VariableControl> ();
				if (PlayerPrefs.GetInt ("timed") != 1) {
						timeRemaining.gameObject.SetActive (false);
				} else {
						lettersRemaining.gameObject.SetActive (false);
						if (variables.timerStart == true) {
								timeRemaining.gameObject.SetActive (true);
						}
				}

				tasteHighlighters [0] = char1Taste1;
				//tasteHighLightPos [0] = new Vector3 (1.0f, 0.0f, -1f);         // (-7.6f, 4.6f, -0.5f);
				tasteHighlighters [1] = char1Taste2;
				//tasteHighLightPos [1] = new Vector3 (1.0f, 0.0f, -1f);          //(-7.6f, 3.9f, -0.5f);
				tasteHighlighters [2] = char2Taste1;
				//tasteHighLightPos [2] = new Vector3 (-1.0f, 0.0f, -1f); //(7.6f, 4.6f, -0.5f);
				tasteHighlighters [3] = char2Taste2;
				//tasteHighLightPos [3] = new Vector3 (-1.0f, 0.0f, -1f); //(7.6f, 3.9f, -0.5f);
				character1Num = PlayerPrefs.GetInt ("Character 1");
				character2Num = PlayerPrefs.GetInt ("Character 2");

				// now for better RAM usage...
				// start on the left character.
				//
				string myName = characters [character1Num].name;
				character1 = (GameObject)Instantiate (Resources.Load ( myName), variables.phase2CharacterPositions [0], Quaternion.identity);
				character1.transform.localScale = new Vector3 (2, 2, 2);
				character1.GetComponent<Character> ().characterNum = character1Num;

				leftPanels[ character1Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "LeftColor", typeof( Texture2D));
        leftTopTaste[ character1Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "LeftTopText", typeof( Texture2D));
        leftBottomTaste[ character1Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "LeftBottomText", typeof( Texture2D));
        leftTopHighLights[ character1Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "LeftTopHighlight", typeof( Texture2D));
        leftBottomHighLights[ character1Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "LeftBottomHighlight", typeof( Texture2D));

				// now the right character.

				myName = characters[ character2Num].name;
				character2 = (GameObject)Instantiate (Resources.Load ( myName), variables.phase2CharacterPositions [1], Quaternion.identity);
				character2.transform.localScale = new Vector3 (2, 2, 2);
				character2.GetComponent<Character> ().characterNum = character2Num;
				
        rightPanels[ character2Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "RightColor", typeof( Texture2D));
        rightTopTaste[ character2Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "RightTopText", typeof( Texture2D));
        rightBottomTaste[ character2Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "RightBottomText", typeof( Texture2D));
        rightTopHighLights[ character2Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "RightTopHighlight", typeof( Texture2D));
        rightBottomHighLights[ character2Num] = (Texture2D) Resources.Load( "trimmedTastes/" + myName + "RightBottomHighlight", typeof( Texture2D));


				PlayerPrefs.SetInt ("Instructions", 0);
				tutorial = GameObject.Find ("Tutorial");
				//instructionsClose = GameObject.Find ("close");

				if (GameObject.Find ("AudioManager_Game(Clone)") == null) {
						Instantiate (Resources.Load ("AudioManager_Game"), new Vector3 (0, 0, 0), Quaternion.identity);
				}

				// set the diner table reflections
				// character: left, right array positions
				// fred: 2, 3
				// kelvin: 4, 5
				// spike: 6, 7
				// stella: 8, 9
				// meghan: 10, 11
				leftCharacterReflection.GetComponent<Renderer>().material.SetTexture ("_MainTex", reflectionTextures [character1Num * 2]);
				rightCharacterReflection.GetComponent<Renderer>().material.SetTexture ("_MainTex", reflectionTextures [character2Num * 2 + 1]);

				SetDisplayColors ();
				//sets the taste highlighters to match the position of the tastes
				//for (int i = 0; i < tasteHighlighters.Length; i++) {
				//		tasteHighlighters [i].transform.position = tasteHighLightPos [i];
				//}
				//moves the highlighters over, if it's an iPhone 5
				//		if (variables.iPhoneType == 2) {
				//				for (int i = 0; i < tasteHighlighters.Length -2; i++) {
				//						tasteHighlighters [i].transform.position += Vector3.left;
				//				}
				//				for (int i = 2; i < tasteHighlighters.Length; i++) {
				//						tasteHighlighters [i].transform.position += Vector3.right;
				//				}
				//		}


		}
		// Update is called once per frame
		void Update ()
		{
				if (variables.timedMode) 
						AlertPlayer ();
				
				//Ends the game if time runs out:
				if (variables.timedMode && variables.globalTimer < 0)
						fadeOut = true;
				
				//ends game if no words left and tilebag is low
				if (variables.endGame) {
						fadeOut = true;
						variables.endGame = false;
				}

                // If the game is fading, save the scores and start Closing Time
				if (!fadingOut && fadeOut) {
						StartCoroutine (ClosingTime ());
				}
                else //updates time on screen
                    timeRemaining.text = "Time: " + Mathf.RoundToInt (variables.globalTimer).ToString ();
				
                // Update the Tiles remaining text
				if (variables.lettersRemaining > variables.boardSize)
						lettersRemaining.text = "TILES: " + (variables.lettersRemaining - variables.boardSize).ToString ();
				else 
						lettersRemaining.text = "Tiles: " + 0;
                
				//Debug.Log ("playerprefs instructions: " + PlayerPrefs.GetInt("instructions"));
				// if the instructions is enabled 
				if (PlayerPrefs.GetInt ("instructions") == 0)
						tutorial.SetActive (true);
                else 
                        tutorial.SetActive (false);
				
                // highlights and character tastes that are currently pleased
				//for (int i = 0; i < tasteHighlighters.Length; i++) {
				//		if (variables.timeToHighlightTaste [i]) {
				//tasteHighlighters [i].transform.renderer.enabled = true;
				if (variables.timeToHighlightTaste [0] && letterController.numLettersOnStove > 1)
						tasteTexts [0].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftTopHighLights [character1Num]);
				else
						tasteTexts [0].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftTopTaste [character1Num]);
                
				if (variables.timeToHighlightTaste [1] && letterController.numLettersOnStove > 1)
						tasteTexts [1].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftBottomHighLights [character1Num]);
				else
						tasteTexts [1].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftBottomTaste [character1Num]);

				if (variables.timeToHighlightTaste [2] && letterController.numLettersOnStove > 1)
						tasteTexts [2].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightTopHighLights [character2Num]);
				else
						tasteTexts [2].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightTopTaste [character2Num]);
				
				if (variables.timeToHighlightTaste [3] && letterController.numLettersOnStove > 1) 
						tasteTexts [3].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightBottomHighLights [character2Num]);
                else
						tasteTexts [3].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightBottomTaste [character2Num]);
				
                                                                                   

				//unhilights all tastes if the letters on the stove do not form a word
				if (!variables.isWord) {
						unhightlightAllTastes ();
				}

               
		}

        // A coroutine that slowly fades the screen, plays sounds and loads the next level
		IEnumerator ClosingTime ()
		{
				print ("END THE GAME FADE IT OUT");
				variables.bellSound = true;
				fadingOut = true;
				yield return new WaitForSeconds (variables.closingTimeDelay);
				float t = variables.gameOverFadeInTimer;
				greyOut.SetActive (true);
				Color fadeFrom = greyOut.GetComponent<Renderer>().material.color;
				Color fadeTo = greyOut.GetComponent<Renderer>().material.color;
				fadeTo.a = 1.0f;
				float i = 0;
				while (greyOut.GetComponent<Renderer>().material.color.a < 1) {
						i += Time.deltaTime / t;
						Color beMe = new Color (1, 1, 1, fadeFrom.a + i);
						greyOut.GetComponent<Renderer>().material.color = beMe;
			
						yield return null;
				}
				closingTimeText.SetActive (true);
				yield return new WaitForSeconds (variables.gameOverOnScreenTimer);
                sendVariablestoScoreScreen();
				Application.LoadLevel ("ScoreScreen");
		
		}

    // This saves the current scores and stats to PlayerPrefs so the receipt can access them
    public void sendVariablestoScoreScreen()
    {
        //updates score related variables 
        variables.totalLetterScore = character1.GetComponent<Character>().rawScoreFedToMe + character2.GetComponent<Character>().rawScoreFedToMe;
        //				variables.totalMultiplierScore = character1.GetComponent<Character> ().rawBonusScoreFedToMe + character2.GetComponent<Character> ().rawBonusScoreFedToMe;
        variables.trashedLetters = trashCharacter.GetComponent<Character>().trashedLetters;
        variables.trashedLetterScore = trashCharacter.GetComponent<Character>().trashedLetterScore;
        Debug.Log("sent variables to receipt screen");
        //saves those variables in Player Prefs
        PlayerPrefs.SetFloat("Score", variables.score);
        PlayerPrefs.SetInt("Total Letter Score", variables.totalLetterScore);
        PlayerPrefs.SetInt("Total Multiplier Score", variables.totalMultiplierScore);
        PlayerPrefs.SetInt("Trashed Letters", variables.trashedLetters);
        PlayerPrefs.SetInt("Trashed Letter Score", variables.trashedLetterScore);
        PlayerPrefs.Save();

        //For Game Analytics
        int mode = 2; //So we'll know something went wrong
        if (variables.timedMode == true)
        {
            mode = 1;
        }
        else
        {
            mode = 0;
        }

        /*				GA.API.GenericInfo.SetSessionUUID(null); //Set a new Session ID to make sure this game is unique
                        GA.API.Design.NewEvent ("mode", mode);
                        GA.API.Design.NewEvent ("score", variables.score);
                        GA.API.Design.NewEvent ("character1", character1Num);
                        GA.API.Design.NewEvent ("character2", character2Num);
                        GA.API.Design.NewEvent ("trashed_letters", variables.trashedLetters);
                        GA.API.Design.NewEvent ("numwordsFedtoCharacter1", character1.GetComponent<Character> ().wordsFedToMe.Count);
                        GA.API.Design.NewEvent ("numwordsFedtoCharacter2", character2.GetComponent<Character> ().wordsFedToMe.Count);
                        GA.API.Design.NewEvent ("character1Score", character1.GetComponent<Character> ().scoreFedToMe);
                        GA.API.Design.NewEvent ("character2Score", character2.GetComponent<Character> ().scoreFedToMe);
        */
        //For Analytics. Why, oh why, would we do this this way, you say? Because, I say,
        //I picked the wrong analytics service and they don't support sending arrays at all,
        //and the only way they support sending strings is as an error message. -Josiah
        string wordsFedToCharacter1 = "1,";
        string wordsFedToCharacter2 = "2,";
        foreach (string word in character1.GetComponent<Character>().wordsFedToMe)
        {
            wordsFedToCharacter1 += word + ",";
        }
        foreach (string word in character2.GetComponent<Character>().wordsFedToMe)
        {
            wordsFedToCharacter2 += word + ",";
        }
        GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().score = variables.score;
        GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().rawScore = variables.totalLetterScore;
        GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().multiScore = variables.totalMultiplierScore;
        GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().trashLetterNum = variables.trashedLetters;
        GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().trashedLetterScore = variables.trashedLetterScore;
        /*
				GA.API.Error.NewEvent (GA_Error.SeverityType.info, wordsFedToCharacter1);
				GA.API.Error.NewEvent (GA_Error.SeverityType.info, wordsFedToCharacter2);
				//Submit our Analytics Queue. This should make this happen once per Score Screen load.
				GA_Queue.ForceSubmit ();
				//Debug.Log ("Forcing GA Submission.");
				*/
        // This saves the game info to Unity analytics
        UnityEngine.Analytics.Analytics.CustomEvent("gameOver", new Dictionary<string, object>
        {
            {"mode", mode},
            {"score", variables.score},
            {"character1", character1Num},
            {"character2", character2Num},
            {"trashed_letters", variables.trashedLetters},
            {"numwordsFedtoCharacter1", character1.GetComponent<Character> ().wordsFedToMe.Count},
            {"numwordsFedtoCharacter2", character2.GetComponent<Character> ().wordsFedToMe.Count},
            {"character1Score", character1.GetComponent<Character> ().scoreFedToMe},
            {"character2Score", character2.GetComponent<Character> ().scoreFedToMe},
            {"wordsFedToCharacter1", wordsFedToCharacter1},
            {"wordsFedToCharacter2", wordsFedToCharacter2}
        });
    }
        
        // Flash the screen if time is running out
		public void AlertPlayer ()
		{
				if (variables.globalTimer < variables.secondAlert && !secondAlert) {
						secondAlert = true;
						timeRemaining.color = Color.red;
						StartCoroutine (FlashColor (alertFlash));
				}
				if (variables.globalTimer < variables.firstAlert && !alertStarted) {
						timeRemaining.color = Color.yellow;
						StartCoroutine (FlashColor (alertFlash));
				}
		}
        
        // A coroutine for flashing the screen
		IEnumerator FlashColor (GameObject flash)
		{
				Vector3 normalSize = timeRemaining.transform.localScale;
				Vector3 biggerSize = timeRemaining.transform.localScale * 1.3f;
				flash.SetActive (true);
				alertStarted = true;
				Color fadeFrom = flash.GetComponent<Renderer>().material.color;
				float maxA = .3f;
				float minA = .001f;
				float t = 2f;
				float i = 0;
				if (variables.globalTimer < 6 && !flashRedAgain) {
						flashOnce = true;
						flashRedAgain = true;
				}
				//timeRemaining.transform.localScale = biggerSize;
				//while(flash.renderer.material.color.a < maxA){
				while (i < maxA) {
						i += Time.deltaTime / t;
						Color beMe = new Color (1, 0, 0, minA + i);
						if (secondAlert && flashOnce) {
								flash.GetComponent<Renderer>().material.color = beMe;
						}
						timeRemaining.transform.localScale = Vector3.Lerp (normalSize, biggerSize, i / maxA);
						yield return null;
				}
				float j = 0;
				//timeRemaining.transform.localScale = normalSize;
				//while(flash.renderer.material.color.a > minA){
				while (i-j > minA) {
						j += Time.deltaTime / t;
						Color beMe = new Color (1, 0, 0, maxA - j);
						if (secondAlert && flashOnce) {
								flash.GetComponent<Renderer>().material.color = beMe;
						}
						timeRemaining.transform.localScale = Vector3.Lerp (biggerSize, normalSize, j / maxA);
						yield return null;
				}
				timeRemaining.transform.localScale = normalSize;
				
				if (secondAlert) {
						flashOnce = false;
						StartCoroutine (FlashColor (flash));
				}
		}

        // Sets all taste texts to their unhighlighted counterparts
		public void unhightlightAllTastes ()
		{
				tasteTexts [0].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftTopTaste [character1Num]);
				tasteTexts [1].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftBottomTaste [character1Num]);
				tasteTexts [2].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightTopTaste [character2Num]);
				tasteTexts [3].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightBottomTaste [character2Num]);
		}

        // Sets the correct textures for the taste elements
		public void SetDisplayColors ()
		{
				//for taste panels, index 0 is left and index 1 is right side
		
				tastePanels [0].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftPanels [character1Num]);
				tastePanels [1].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightPanels [character2Num]);

				tasteTexts [0].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftTopTaste [character1Num]);
				tasteTexts [1].GetComponent<Renderer>().material.SetTexture ("_MainTex", leftBottomTaste [character1Num]);
				tasteTexts [2].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightTopTaste [character2Num]);
				tasteTexts [3].GetComponent<Renderer>().material.SetTexture ("_MainTex", rightBottomTaste [character2Num]);

				


				/*	if (variables.iPhoneType == 1) {
						tastePanels [0].transform.localPosition = (new Vector3 (-.7f, -0.01f, 0));
						tastePanels [1].transform.localPosition = (new Vector3 (.7f, -0.01f, 0));
				}
				if (variables.iPhoneType == 2) {
						tastePanels [0].transform.position = (new Vector3 (0, -0.01f, 0));
						tastePanels [1].transform.position = (new Vector3 (0, -0.01f, 0));
				}
    */            
		}
}
