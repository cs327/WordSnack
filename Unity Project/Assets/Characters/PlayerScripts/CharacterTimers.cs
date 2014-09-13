using UnityEngine;
using System.Collections;

public class CharacterTimers : MonoBehaviour {
	//variables to control the character's current state
	public bool something = true;
	public int hungerLevel;
	public float waitTimer;
	public float digestingTimer;
	public float eatingTimer;
	public string state;
	public int stateNum = 0;
	public int maxStates = 5;
	public string [] states;
	public Material inactive;
	//variables to control character's appearance 
	public Vector3 full; 

	//variables to track the character's eating 
	public int wordsEaten;
	public float scoreMultiplier = 1;

	//script reference to the main controller script
	public GameObject gameController;
	VariableControl variables;

	// Use this for initialization
	void Start () {
		//establishes script reference 
		variables = gameController.GetComponent<VariableControl>();

		//sets up the states
		states = new string[maxStates];
		states[0] = "NONE";
		states[1] = "WAITING";
		states[2] = "EATING";
		states[3] = "FULL";
		states[4] = "IMPATIENT";

		//defines the time the character remains in the states based on the controller script
		fillTimers();
		//defines variables that relate to character appearance 
		full = new Vector3 (2, 2, 2);

	}
	
	// Update is called once per frame
	void Update () {
		if (Application.loadedLevelName == "Phase2") {
			//updates the character's state
			updateState();
			scoreMultiplier = variables.setScoreMultiplier (wordsEaten, scoreMultiplier);
			//counts down the characters waiting timer while it is not being fed
			if (state == states[1]) {
				waitTimer -= Time.deltaTime;
			} else if (state == states[2]) { //counts down while the character is eating
				eatingTimer -= Time.deltaTime;
				eating ();
			} else if (state == states[3]) { //counts down after the character has eaten
				digestWord();
			}

			//sets the character to "IMPATIENT" if its waiting timer has ellapsed 
			if ((int) waitTimer <= 0) { //renders the character unable to recieve more food if it has waited too long
				gameObject.transform.renderer.material = inactive;
				stateNum = 4;
				fillTimers();
			} else if ((int) eatingTimer <= 0) { //sets the character to digest when it is done eating
				stateNum = 3;
				fillTimers();
			} else if ((int) digestingTimer <= 0) { //sets the character back to waiting once it is done digesting
				stateNum = 1;
				gameObject.transform.rotation = Quaternion.identity;
				fillTimers();
			}
		}
	}

	void OnMouseDown () {
		if (Application.loadedLevelName == "Phase2" && variables.wordSelected) { //feeds the character a word, if valid
			if (state == states[1]) {
				eatWord();
				variables.wordSelected = false;
				if (wordsEaten < 10) { //tracks the amount of words eaten
					wordsEaten++;
				}
				//increases score
				variables.score += scoreMultiplier;
			}
		}
	}
	void updateState() {
		//changes the character's state if the game has just loaded "Phase2"
		if (Application.loadedLevelName == "Phase2" && stateNum == 0) {
			stateNum++;
		}
		//sets the state and the gameObject's tag to current location in the array of states 
		state = states[stateNum];
		gameObject.transform.tag = state;

	}

	//sets the state and restores character to normal size
	void eatWord() {
		fillTimers();
		stateNum = 2;
		gameObject.transform.localScale = full;
	}

	//causes character to swell and slowly shrink as it eats
	void eating () {
		float shrinkRate = 2.5F/eatingTimer; 
		if (shrinkRate < 1) {
			gameObject.transform.localScale = full - new Vector3 (shrinkRate, shrinkRate, shrinkRate);
		}
	}

	//causes character to rotate while digesting
	void digestWord() {
		digestingTimer -= Time.deltaTime;
		gameObject.transform.Rotate(0, -Time.deltaTime*300, 0, Space.World);	
	}

	//resets all timers
	void fillTimers () {
		waitTimer = (float) (variables.maxWaitingTime - 10 + wordsEaten);
		eatingTimer = (float) (variables.maxEatingTime - wordsEaten);
		digestingTimer = (float) (variables.maxHungerTime - wordsEaten);
	}	
}
