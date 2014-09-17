using UnityEngine;
using System.Collections;

public class MainGUI : MonoBehaviour {
	//script reference 
	public GameObject gameController; 
	VariableControl variables;
	// Use this for initialization
	void Awake () {
		//preserves the GUI between level loads
		DontDestroyOnLoad(gameObject);
	}

	void Start () {
		//script reference
		variables = gameController.GetComponent<VariableControl>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI () {
		//during the main gameplay phase, displays a timer to indicate how long the game has been going on for
		if (Application.loadedLevelName == "WordMaking") {
			GUI.Box (new Rect (100, 100, 100, 30), "Timer: " + Mathf.RoundToInt(variables.gameTimer));
		//displays the player's score during the scorescreen
		} else if (Application.loadedLevelName == "ScoreScreen") {
			GUI.Box (new Rect (100, 100, 100, 30), "Score: " + variables.score);
		}
	}
}
