using UnityEngine;
using System.Collections;

public class MainGUI : MonoBehaviour {
	//script reference 
	public GameObject gameController; 
	VariableControl variables;
	GameStateController gameState;

	// Use this for initialization
	void Awake () {
		//preserves the GUI between level loads
	}

	void Start () {
		//script reference
		variables = gameController.GetComponent<VariableControl>();
		gameState = gameController.GetComponent<GameStateController>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI () {
		//during the main gameplay phase, displays a timer to indicate how long the game has been going on for
		if (Application.loadedLevelName == "WordMaking") {
			if (GUI.Button (new Rect (100, 100, 100, 30), "End Game")) {
				Application.LoadLevel("ScoreScreen");
			}
			GUI.Box (new Rect (400, 50, 200, 30), "Word Making Phase");
		//displays the player's score during the scorescreen
		} else if (Application.loadedLevelName == "ScoreScreen") {
			GUI.Box (new Rect (100, 100, 100, 30), "Score: " + variables.score);
		} else if (Application.loadedLevelName == "CharacterSelect") {
			GUI.Box (new Rect (400, 50, 200, 30), "Character Select Phase");
			if (variables.timeToChangeGameState) {
				if (GUI.Button(new Rect (100, 100, 100, 30), "GO")) {
					gameState.loadMainGame();
				}
			} else {
				GUI.Box (new Rect (100, 100, 200, 30), "Click Characters to Select Them");
			}
		}
	}
}
