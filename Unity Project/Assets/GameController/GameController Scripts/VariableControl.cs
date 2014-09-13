using UnityEngine;
using System.Collections;

public class VariableControl : MonoBehaviour {
	//main game variables: 

	//tweakable variables: 
	public int characterSelectNum = 3;
	public int maxFed = 10;
	public int maxWaitingTime = 20;
	public int minWaitingTime = 10;
	public int maxHungerTime = 15;
	public int minHungerTime = 5;
	public int maxEatingTime = 12;
	public int minEatingTime = 2;
	public int maxMultiplier = 5;

	//character variables 
	public Vector3 [] phase2CharacterPositions;
	public GameObject [] selectedCharacters;
	public bool [] characterSelected;
	public int currentCharacterSelectNum = 0;

	//gamesate variables
	public float score;
	public float gameTimer;
	public bool timeToChangeGameState;
	public bool timeToEndGame;

	//word variables 
	public bool wordSelected = false;
	// Use this for initialization
	void Awake() {
		//preserves object between loads 
		DontDestroyOnLoad(transform.gameObject);
	}

	void Start () {
		//creates the arrays to handle character selection 
		characterSelected = new bool[characterSelectNum];
		selectedCharacters = new GameObject[characterSelectNum];
		phase2CharacterPositions = new Vector3[characterSelectNum];

		//establishes the character position for phase 2
		phase2CharacterPositions[0] = new Vector3(-5, 0, 0);
		phase2CharacterPositions[1] = new Vector3(0, -2.5F, 0);
		phase2CharacterPositions[2] = new Vector3(5, 0, 0);
	}
	
	// Update is called once per frame
	void Update () {
		//sets the selectNum back to lowest unclaimed position in the array
		setSelectNum();

		//checks if all three characters are selected 
		if (Application.loadedLevelName == "Phase1" && characterSelected[0] && characterSelected[1] && characterSelected[2]) {
			//triggers the load of "Phase2" if conditions are met
			timeToChangeGameState = true;
		}
	}

	//sets the selectNum (current target in the arrays) to the lowest unclaimed value
	void setSelectNum () { 
		if (characterSelected[0] == false) {
			currentCharacterSelectNum = 0;
		} else if (characterSelected[1] == false) {
			currentCharacterSelectNum = 1;
		} else if (characterSelected[2] == false) {
			currentCharacterSelectNum = 2;
		}
	}

	//function to set the score of a character
	public float setScoreMultiplier (int wordsEaten, float multiplier) {
		if (wordsEaten < 9) {
			print ("inc 1");
			return (float) (((float)wordsEaten)/4 + 1);
		} else if (wordsEaten == 9) {
			return 4.0F;
		} else if (wordsEaten == maxFed) {
			return (float) maxMultiplier;
		} else {
			return 1;
		}
	}
}
