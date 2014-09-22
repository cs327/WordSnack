using UnityEngine;
using System.Collections;

public class GameStateController : MonoBehaviour {
	//reference to the main controller script 
	VariableControl variables;

	//state control variables 
	bool stopTiming = false;

	//character tracking variables  
	public Material inactive;

	// Use this for initialization
	void Start () {
		//establishes script reference
		variables = gameObject.GetComponent<VariableControl>();

		//automatically sets the iPhone rotation 
		Screen.autorotateToLandscapeLeft = true;
		Screen.orientation = ScreenOrientation.AutoRotation;
	}	
	
	// Update is called once per frame
	void Update () {
		//counts up the game timer which displays onscreen 
		if (stopTiming == false && Application.loadedLevelName == "WordMaking") {
			variables.gameTimer += Time.deltaTime;
		} else if (stopTiming && variables.gameTimer > 0) {
			variables.gameTimer = 0;
		}

		//checks whether all the characters are currently in the "IMPATIENT" state 
		int trueCount = 0;
		for (int i = 0; i < variables.selectedCharacters.Length; i++) { 
			if (Application.loadedLevelName == "WordMaking" && isInactive (variables.selectedCharacters[i])) {
				trueCount++;
			}
		}

		//triggers the end of gameplay if all characters are inactive
		if (trueCount == variables.selectedCharacters.Length) {
			variables.timeToEndGame = true;
		}

		//ends the game
		if (variables.timeToEndGame) {
			Application.LoadLevel("ScoreScreen");
			variables.timeToEndGame = false;
			//destroys the onscreen characters
			for (int i = 0; i < variables.selectedCharacters.Length; i++) { 
				Destroy(variables.selectedCharacters[i]);
			}
			stopTiming = true;
		}
	}

	//checks whether a character is currently in the "IMPATIENT" state
	bool isInactive (GameObject character) {
		if (character.transform.tag == "IMPATIENT") {
			return true;
		} else {
			return false;
		}
	}

	public void loadMainGame () {
		Application.LoadLevel("WordMaking");
		//moves the characters into their appropriate positions 
		for (int i = 0; i < variables.characterSelectNum; i++) {
			variables.selectedCharacters[i].transform.position = variables.phase2CharacterPositions[i];
		}
		variables.timeToChangeGameState = false;
	}
}
