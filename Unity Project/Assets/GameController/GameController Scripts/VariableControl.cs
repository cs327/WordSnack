using UnityEngine;
using System.Collections;

public class VariableControl : MonoBehaviour {
	//main game variables: 

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
	public float noPreferenceMult;
	public float trashCollectionMult;

	//tweakable character tastes
	public int[] TastesForCharacter1;
	public int[] TastesForCharacter2;
	public int[] TastesForCharacter3;
	public int[] TastesForCharacter4;
	public int[] TastesForCharacter5;
	//tweakable variables: 
	public int minWordLength;
	public int maxWordLength;
	public int characterSelectNum = 2;
	public int maxFed = 10;
	public int maxWaitingTime = 20;
	public int maxHungerTime = 15;
	public int maxEatingTime = 12;
	public int maxMultiplier = 5;

	//character variables 
	public Vector3 [] phase2CharacterPositions;
	public GameObject [] selectedCharacters;
	public int [] selectedCharacterNums; 
	public bool [] characterSelected;
	public int currentCharacterSelectNum = 0;

	//gamestate variables
	public int score = 0; //Initialized at 0 by Mike. Just needed an initial value.
	public float gameTimer;
	public bool timeToChangeGameState;
	public bool timeToEndGame;
	public bool wordSelected;

	// Use this for initialization
	void Awake() {
		phase2CharacterPositions = new Vector3[characterSelectNum];
		
		//establishes the character position for phase 2
		phase2CharacterPositions[0] = new Vector3(-5, 0, 0);
		phase2CharacterPositions[1] = new Vector3(5, 0, 0);
	}

	void Start () {
		//sets totals for tuning variables of letters
		totalLetters =  numA + numB + numC + numD + numE + numF + numG + numH + numI + numJ + numK + numL + numM + numN + numO + numP + numQ + numR + numS + numT + numU + numV + numW + numX + numY + numZ;
		totalVowels = numA + numE + numI + numO + numU;

		//creates the arrays to handle character selection 
		characterSelected = new bool[characterSelectNum];
		selectedCharacters = new GameObject[characterSelectNum];
		selectedCharacterNums = new int[characterSelectNum]; 
	
	}
	
	// Update is called once per frame
	void Update () {
		//sets the selectNum back to lowest unclaimed position in the array
		currentCharacterSelectNum = gameObject.transform.childCount;
		if (gameObject.transform.childCount < 2) {

		}
		//checks if all three characters are selected 
		if (Application.loadedLevelName == "CharacterSelect" && currentCharacterSelectNum == 2) {
			//triggers the load of "Phase2" if conditions are met
			timeToChangeGameState = true;
		} else {
			timeToChangeGameState = false;
		}
	}
}
