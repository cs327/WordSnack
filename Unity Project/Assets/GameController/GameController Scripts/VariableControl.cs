using UnityEngine;
using System.Collections;

public class VariableControl : MonoBehaviour
{
		//main game variables: 
		public int boardSize = 8;


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
		public int totalLetters, totalVowels;

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
		public float meanTrashCollectionMult;

		//tweakable character tastes
		public int[] TastesForTrash;
		public int[] TastesForMeghan;
		public int[] TastesForStella;
		public int[] TastesForKelvin;
		public int[] TastesForFred;
		public int[] TastesForSpike;

		//Sound related variables
		public bool bonus = false;
		public bool notWord = false;
		public bool hungry = false;
		public bool chewing = false;
		public int happySound;
		public int sadSound;
		public int hungrySound;
		public int chewingSound;

		//tweakable variables: 
		public int minWordLength;
		public int maxWordLength;
		public int characterSelectNum = 2;
		public int maxFed = 10;
		public int maxWaitingTime = 20;
		public int maxHungerTime = 15;
		public int maxEatingTime = 12;
		public int maxMultiplier = 5;
		public int maxTurnsNotFed;
		public int hungerLoss;
		public int minLettersToTrash;

		//character variables 
		public Vector3[] phase2CharacterPositions;
		public GameObject[] selectedCharacters;
		public int[] selectedCharacterNums; 
		public bool[] characterSelected;
		public int currentCharacterSelectNum = 0;
		public Vector3[] phase1SelectedCharPositions;
		public int[] characterNums;

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
		//build-your-own-hardcore-mode variables
		public int impatientMonsters;
		public int meanTrash;
		public int pickyMonsters;
		public int[] characterSatisfaction;
		//Saving High score variables
		//The number of scores to save, at most
		public int scoreListSize = 10;

		// score text "particles" (really textmeshes)
		public TextMesh scoreText;

		// Use this for initialization
		void Awake ()
		{
				phase2CharacterPositions = new Vector3[characterSelectNum];
				phase1SelectedCharPositions = new Vector3[characterSelectNum];

				//establishes the selected characters positions for phase 1
				phase1SelectedCharPositions [0] = new Vector3 (-3.1f, -3.3f, 0);
				phase1SelectedCharPositions [1] = new Vector3 (3.1f, -3.3f, 0);

				//establishes the character position for phase 2
				phase2CharacterPositions [0] = new Vector3 (-3.5f, 0.5f, 1);
				phase2CharacterPositions [1] = new Vector3 (3.8f, 0.5f, 1);
		}

		void Start ()
		{
				//sets totals for tuning variables of letters
				totalLetters = numA + numB + numC + numD + numE + numF + numG + numH + numI + numJ + numK + numL + numM + numN + numO + numP + numQ + numR + numS + numT + numU + numV + numW + numX + numY + numZ;
				totalVowels = numA + numE + numI + numO + numU;

				//creates the arrays to handle character selection 
				characterSelected = new bool[characterSelectNum];
				selectedCharacters = new GameObject[characterSelectNum];
				selectedCharacterNums = new int[characterSelectNum]; 
				lettersRemaining = totalLetters;
				if (Application.loadedLevelName == "WordMaking") {
						impatientMonsters = PlayerPrefs.GetInt ("Impatient Monsters");
						meanTrash = PlayerPrefs.GetInt ("Mean Trash");
						pickyMonsters = PlayerPrefs.GetInt ("Picky Monsters");
						if (impatientMonsters == 1) {
								Debug.Log ("Setting up Impatient Monster Infrastructure");
								characterSatisfaction = new int[6];//Trash character counts as one too
								characterNums = new int[characterSelectNum];
								characterNums [0] = PlayerPrefs.GetInt ("Character 1");
								characterNums [1] = PlayerPrefs.GetInt ("Character 2");
						}
						if (meanTrash == 1) {
								Debug.Log ("Setting Mean Trash");
								trashCollectionMult = meanTrashCollectionMult;
						}
						if (pickyMonsters == 1) {
								Debug.Log ("Setting Up Picky Monsters");
						}
				}
				
		}
	
		// Update is called once per frame
		void Update ()
		{
				//sets the selectNum back to lowest unclaimed position in the array
//		currentCharacterSelectNum = gameObject.transform.childCount;
				if (gameObject.transform.childCount < 2) {

				}
				//checks if all three characters are selected 
				if (Application.loadedLevelName == "CharacterSelectTest" && currentCharacterSelectNum == 2) {
						//triggers the load of "Phase2" if conditions are met
						timeToChangeGameState = true;
				} else {
						timeToChangeGameState = false;
				}
		}
}
