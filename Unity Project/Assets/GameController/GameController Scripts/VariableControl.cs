using UnityEngine;
using System.Collections;

public class VariableControl : MonoBehaviour {
	//main game variables: 

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
		phase2CharacterPositions[1] = new Vector3(5, 0, 0);
	}
	
	// Update is called once per frame
	void Update () {
		//sets the selectNum back to lowest unclaimed position in the array
		setSelectNum();

		//checks if all three characters are selected 
<<<<<<< HEAD
		if (Application.loadedLevelName == "Phase1" && characterSelected[0] && characterSelected[1]) {
=======
		if (Application.loadedLevelName == "CharacterSelect" && characterSelected[0] && characterSelected[1] && characterSelected[2]) {
>>>>>>> master
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
		}
	}
}
