using UnityEngine;
using System.Collections;

public class characterSelectController : MonoBehaviour {
	VariableControl variables;
	public GUIStyle big;
	// Use this for initialization
	void Start () {
		variables = gameObject.GetComponent<VariableControl>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI () {
		if (variables.timeToChangeGameState) {
			if (GUI.Button(new Rect (100, 100, 75, 200), "GO", big)) {
				loadMainGame();
			}
		} else {
			GUI.Box (new Rect (50, 0, 600, 200), "Click Characters to Select Them", big);
		}
	}

	public void loadMainGame () {
		for (int i = 0; i < variables.characterSelectNum; i++) {
			variables.selectedCharacters[i].transform.position = variables.phase2CharacterPositions[i];
		}
		variables.timeToChangeGameState = false;
		PlayerPrefs.SetInt("Character 1", variables.selectedCharacterNums[0]);
		PlayerPrefs.SetInt("Character 2", variables.selectedCharacterNums[1]);
		Application.LoadLevel("WordMaking");
		//moves the characters into their appropriate positions
	}
}
