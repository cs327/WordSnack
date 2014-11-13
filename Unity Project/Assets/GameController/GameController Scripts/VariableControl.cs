using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class VariableControl : MonoBehaviour {
	//main game variables: 
	public int boardSize = 8;
	public Vector3 [] characterTasteSpots;
	public bool timedMode = false;
	public float globalTimer;
	public int gameLength = 180;
	public bool timerStart = false;
	public bool paused = false;
	public bool endGame = false;

	//what iphone model it is running on.
	//0 = unidentified, 1 = 4S or older (below), 2 = 5 or newer (higher)
	//[HideInInspector]
	public int iPhoneType = 1;

	//letter tuning variables
	public int numA = 9;
	public int numB = 2;
	public int numC = 2;
	public int numD = 4;
	public int numE = 12;
	public int numF = 2;
	public int numG = 3;
	public int numH = 2;
	public int numI = 9;
	public int numJ = 1;
	public int numK = 1;
	public int numL = 4;
	public int numM = 2;
	public int numN = 6;
	public int numO = 8;
	public int numP = 2;
	public int numQ = 1;
	public int numR = 6;
	public int numS = 4;
	public int numT = 6;
	public int numU = 4;
	public int numV = 2;
	public int numW = 2;
	public int numX = 1;
	public int numY = 2;
	public int numZ = 1;
	public int totalLetters,totalVowels;
	public Dictionary<char,int> letterBag;

	//tweakable taste multipliers
	public float threeLettersMult;
	public float fiveOrLongerMult;
	public float uncommonLettersMult;
	public float endsWithVowelMult;
	public float twoOrMoreVowelsMult;
	public float twoOrMoreSameMult;
	public float startsWithVowelMult;
	public float startsAndEndsWithSameMult;
	public float fourLettersMult;
	public float equalVowelsAndConsonantsMult;
	public float trashCollectionMult;
	public float bigMealBonus;
	public float doubleTasteMatchBonus;

	//tweakable character tastes
	public int[] TastesForTrash;
	public int[] TastesForMeghan;
	public int[] TastesForStella;
	public int[] TastesForKelvin;
	public int[] TastesForFred;
	public int[] TastesForSpike;
	public int[][] allCharTastes;

	//Sound related variables
	public bool bonus = false;
	public bool notWord = false;
	public bool isWord;
	public bool hungry = false;
	public bool chewing = false;
	public int happySound;
	public int sadSound;
	public int hungrySound;
	public int chewingSound;
	public bool shuffleSound;
	public bool letterGenerationSound = false;
	public bool clickSound;
	public bool doubleTasteSound;
    public int eatingSound = 0;
	
	//tweakable variables: 
	public int minWordLength;
	public int maxWordLength;
	public int minNumVowels = 1;
	public int maxNumVowels = 3;
	public int characterSelectNum = 2;
	public int totalNumChar = 5;
	public int maxFed = 10;
	public int maxWaitingTime = 20;
	public int maxHungerTime = 15;
	public int maxEatingTime = 12;
	public int maxMultiplier = 5;
	public int minLettersToTrash = 1;
	public float gameOverFadeInTimer = .2f;
	public float gameOverOnScreenTimer = 2f;

	//character variables 
	public Vector3 [] phase2CharacterPositions;
	public GameObject [] selectedCharacters;
	public int [] selectedCharacterNums; 
	public bool [] characterSelected;
	public int currentCharacterSelectNum = 0;
	public Vector3 [] phase1SelectedCharPositions;

	//taste checking variables 
	public bool[] timeToHighlightTaste = new bool[4];
	public bool timeToCheckForTastes;
	public bool char1TasteChecked;
	public bool char2TasteChecked;

	//gamestate variables
	public int score = 0; //Initialized at 0 by Mike. Just needed an initial value.

	//only updates when the game is over 
	//all of them used on the receipt 
	public int totalLetterScore = 0;
	public int totalMultiplierScore = 0;
	public int trashedLetters = 0;
	public int trashedLetterScore = 0;

	public float gameTimer;
	public bool timeToChangeGameState;
	public bool timeToEndGame;
	public bool wordSelected;
	public int mostRecentWordScore;
	public int mostRecentBonus;
	public int mostRecentLetterScore;
	public int lettersRemaining; 
	//Saving High score variables
	//The number of scores to save, at most
	public int scoreListSize = 10;

	// score text "particles" (really textmeshes)
	public TextMesh scoreText;
	public TextMesh multiplierText;

	// score text thresholds for different colors and sizes
	public float smallMultiplierThreshold;
	public float mediumMultiplierThreshold;
	public float largeMultiplierThreshold;
	public float smallScoreThreshold;
	public float mediumScoreThreshold;
	public float largeScoreThreshold;
	public Color smallColor;
	public Color mediumColor;
	public Color largeColor;

	// score text timing variables
	public float BaseScoreDisplayTime;
	public float TasteMatchDisplayTime;
	public float BigMealDisplayTime;
	public float ScoreFadeTime;

	// Use this for initialization
	void Awake() {
		CheckIphoneType();
		
		phase2CharacterPositions = new Vector3[characterSelectNum];
		phase1SelectedCharPositions = new Vector3[characterSelectNum];
		characterTasteSpots = new Vector3[characterSelectNum];

		//establishes the selected characters positions for phase 1
		phase1SelectedCharPositions[0] = new Vector3(-2.2f,-1.7f,0);
		phase1SelectedCharPositions[1] = new Vector3(2.0f,-1.7f,0);

		//establishes the character position for phase 2
		phase2CharacterPositions[0] = new Vector3(-3.5f, 0.5f, 1);
		phase2CharacterPositions[1] = new Vector3(3.8f, 0.5f, 1);

		//sets where the character tastes should be put for wordbuilding phase

		characterTasteSpots[0] = new Vector3 (4.8f,4,-4.2f);
		characterTasteSpots[1] = new Vector3 (-2.9f,4,-4.2f);

//		characterTasteSpots[0] = new Vector3 (-1.9f,1.75f,-1f);
//		characterTasteSpots[1] = new Vector3 (0.2f,1.75f,-1f);

	}

	void Start () {
		if(PlayerPrefs.GetInt("timed") == 0){
			timedMode = false;
		} 
		else if (PlayerPrefs.GetInt("timed") == 1){
			timedMode = true;
		}

		//sets totals for tuning variables of letters
		if (Application.loadedLevelName == "WordMaking"){
                letterBag = new Dictionary<char, int>() {
				{ 'a', numA},
				{ 'b', numB},
				{ 'c', numC},
				{ 'd', numD},
				{ 'e', numE},
				{ 'f', numF},
				{ 'g', numG},
				{ 'h', numH},
				{ 'i', numI},
				{ 'j', numJ},
				{ 'k', numK},
				{ 'l', numL},
				{ 'm', numM},
				{ 'n', numN},
				{ 'o', numO},
				{ 'p', numP},
				{ 'q', numQ},
				{ 'r', numR},
				{ 's', numS},
				{ 't', numT},
				{ 'u', numU},
				{ 'v', numV},
				{ 'w', numW},
				{ 'x', numX},
				{ 'y', numY},
				{ 'z', numZ},
			    };
			
			totalLetters = 0;
			
			foreach (KeyValuePair<char, int> entry in letterBag) {
				//Debug.Log ("Adding " + entry.Value + " " + entry.Key + "'s to letterBag");
				totalLetters += entry.Value;
			}
			
			totalVowels = numA + numE + numI + numO + numU;

			if(timedMode){
				globalTimer = gameLength;
			}
		}
		//creates the arrays to handle character selection 
		characterSelected = new bool[characterSelectNum];
		selectedCharacters = new GameObject[characterSelectNum];
		selectedCharacterNums = new int[characterSelectNum]; 
		lettersRemaining = totalLetters;
		//creates an array of character tastes (characterNum does not match order of characters on SelectScreen, this is why the array is out of order) 
		allCharTastes = new int[totalNumChar + 1][];
		allCharTastes[0] = TastesForTrash;
		allCharTastes[3] = TastesForSpike;
		allCharTastes[2] = TastesForKelvin;
		allCharTastes[4] = TastesForStella;
		allCharTastes[1] = TastesForFred;
		allCharTastes[5] = TastesForMeghan;

		
	}
	
	// Update is called once per frame
	void Update () {

		//GET THIS TO WORK then comment out the following line
		//timerStart=true;
//		if(PlayerPrefs.GetInt ("instructions") == 0){
//			timerStart = false;
//		}
//		else{
//			timerStart = true;
//		}

		if(timedMode && timerStart && !paused){
			KeepTime();
		}

		//sets the selectNum back to lowest unclaimed position in the array
//		currentCharacterSelectNum = gameObject.transform.childCount;
		if (timeToCheckForTastes && char1TasteChecked && char2TasteChecked) {
			timeToCheckForTastes = false;
			char1TasteChecked = false;
			char2TasteChecked = false;
		}
		//checks if all three characters are selected 
		if (Application.loadedLevelName == "CharacterSelectTest" && currentCharacterSelectNum == 2) {
			//triggers the load of "Phase2" if conditions are met
			timeToChangeGameState = true;
		} else {
			timeToChangeGameState = false;
		}
	}
	void CheckIphoneType(){

		//sets an int telling what iPhone type this is being played on 
		//string gen = iPhoneSettings.generation.ToString();

//		if(gen == "iPhone" ||  gen == "iPhone3G" || gen == "iPhone3GS" || gen == "iPhone4S" || gen == "iPhone4"){
//			iPhoneType = 1;
//		}
//		if(gen == "iPhone5" ||  gen == "iPhone5S" || gen == "iPhone6" || gen == "iPhone6Plus"){
//			iPhoneType = 2;
//		}
//        else
//        {
//            iPhoneType = 2;
//        }
//#if UNITY_IPHONE
			switch(iPhone.generation){
			case (iPhoneGeneration.iPhone):
				iPhoneType = 1; 
				break;
			case (iPhoneGeneration.iPhone3G):
				iPhoneType = 1; 
				break;
			case (iPhoneGeneration.iPhone3GS):
				iPhoneType = 1; 
				break;
			case (iPhoneGeneration.iPhone4S):
				iPhoneType = 1; 
				break;
			case (iPhoneGeneration.iPhone4):
				iPhoneType = 1; 
				break;
			case (iPhoneGeneration.iPhone5):
				iPhoneType = 2; 
				break;
			case (iPhoneGeneration.iPhone5S):
				iPhoneType = 2; 
				break;
	//		case (iPhoneGeneration.iPhone6):
	//			iPhoneType = 2; 
	//			break;
	//		case (iPhoneGeneration.iPhone6Plus):
	//			iPhoneType = 2; 
	//			break;
			}
//#endif
	}

	void KeepTime(){
		if(Application.loadedLevelName == "WordMaking"){
			if (timerStart == true)
			{
				globalTimer -= Time.deltaTime;
			}
		}

	}

}
