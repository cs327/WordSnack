using UnityEngine;
using System.Collections;

public class MainGUI : MonoBehaviour {
	public GameObject gameController; 
	VariableControl variables;
	// Use this for initialization
	void Awake () {
		DontDestroyOnLoad(gameObject);
	}

	void Start () {
		variables = gameController.GetComponent<VariableControl>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI () {
		if (Application.loadedLevelName == "Phase2") {
			GUI.Box (new Rect (100, 100, 100, 30), "Timer: " + Mathf.RoundToInt(variables.gameTimer));
		} else if (Application.loadedLevelName == "SummaryScreen") {
			GUI.Box (new Rect (100, 100, 100, 30), "Score: " + variables.score);
		}
	}
}
