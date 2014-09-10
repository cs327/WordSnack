using UnityEngine;
using System.Collections;

public class GameStateController : MonoBehaviour {
	VariableControl variables;
	bool scoreShown = false;
	// Use this for initialization
	void Start () {
		variables = gameObject.GetComponent<VariableControl>();
	}	
	
	// Update is called once per frame
	void Update () {
		if (variables.timeToChangeGameState) {
			Application.LoadLevel("Phase2");
			for (int i = 0; i < variables.characterSelectNum; i++) {
				variables.selectedCharacters[i].transform.position = variables.phase2CharacterPositions[i];
			}
			variables.timeToChangeGameState = false;
		}

		if (Application.loadedLevelName == "Phase2") {
			variables.gameTimer += Time.deltaTime;
		} 
		if (variables.gameTimer > variables.maxGameTime && scoreShown == false) {
			Application.LoadLevel("SummaryScreen");
			scoreShown = true;
		}
	}
}
