using UnityEngine;
using System.Collections;

public class CharacterTimers : MonoBehaviour {
	//variables to control the character's current state
	public int hungerLevel;
	public int waitingTime;
	public float waitTimer;
	public int hungerTime;
	public float hungerTimer;
	public int eatingTime;
	public float scoreMultiplier;
	public string state;
	public int stateNum = 0;
	public int maxStates = 4;
	public string [] states;
	public Material inactive;

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
		states[3] = "IMPATIENT";

		//defines the time the character remains in the states based on the controller script
		waitingTime = variables.maxWaitingTime;
		waitTimer = (float) variables.maxWaitingTime;
		hungerTime = variables.maxHungerTime;

	}
	
	// Update is called once per frame
	void Update () {
		//updates the character's state
		updateState();

		//counts down the characters waiting timer while it is not being fed
		if (state == states[1]) {
			waitTimer -= Time.deltaTime;
			if ((int)waitTimer < waitingTime && waitingTime > 0) {
				waitingTime--; 
			}
		}

		//sets the character to "IMPATIENT" if its waiting timer has ellapsed 
		if (waitingTime == 0) {
			gameObject.transform.renderer.material = inactive;
			stateNum = 3;
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
}
