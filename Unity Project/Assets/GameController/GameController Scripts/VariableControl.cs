using UnityEngine;
using System.Collections;

public class VariableControl : MonoBehaviour {
	//main game variables: 

	//letter tuning variables
	public int numA,numB,numC,numD,numE,numF,numG,numH,numI,numJ,numK,numL,numM,numN,numO,numP,numQ,numR,numS,numT,numU,numV,numW,numX,numY,numZ;
	public int totalLetters,totalVowels;


	//tweakable variables: 
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

	//gamesate variables
	public int score = 0; //Initialized at 0 by Mike. Just needed an initial value.
	public float gameTimer;
	public bool timeToChangeGameState;
	public bool timeToEndGame;
	public bool wordSelected;

    //Mike - vector to store the words fed to the characters throughout the game.
    public string[] fedWords;

	// Use this for initialization
	void Awake() {
		phase2CharacterPositions = new Vector3[characterSelectNum];
		
		//establishes the character position for phase 2
		phase2CharacterPositions[0] = new Vector3(-5, 0, 0);
		phase2CharacterPositions[1] = new Vector3(5, 0, 0);
	}

	void Start () {
		//sets tuning variables for letters
		TuningList();

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

	void TuningList(){
		numA = 9;
		numB = 2;
		numC = 2;
		numD = 4;
		numE = 12;
		numF = 2;
		numG = 3;
		numH = 2;
		numI = 9;
		numJ = 1;
		numK = 1;
		numL = 4;
		numM = 2;
		numN = 6;
		numO = 8;
		numP = 2;
		numQ = 1;
		numR = 6;
		numX = 1;
		numT = 6;
		numU = 4;
		numV = 2;
		numW = 2;
		numX = 1;
		numY = 2;
		numZ = 1;
		totalLetters =  numA + numB + numC + numD + numE + numF + numG + numH + numI + numJ + numK + numL + numM + numN + numO + numP + numQ + numR + numS + numT + numU + numV + numW + numX + numY + numZ;
		totalVowels = numA + numE + numI + numO + numU;
	}
}
