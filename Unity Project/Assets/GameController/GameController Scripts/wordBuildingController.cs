using UnityEngine;
using System.Collections;

public class wordBuildingController : MonoBehaviour {
	public GameObject [] characters = new GameObject[5];
	VariableControl variables;
	int character1Num = 1;
	int character2Num = 2;
	// Use this for initialization
	void Start () {
		variables = gameObject.GetComponent<VariableControl>();
		character1Num = PlayerPrefs.GetInt("Character 1");
		character2Num = PlayerPrefs.GetInt("Character 2");
		Instantiate(characters[character1Num], variables.phase2CharacterPositions[0], Quaternion.identity); 
		Instantiate(characters[character2Num], variables.phase2CharacterPositions[1], Quaternion.identity);
	}
	
	// Update is called once per frame
	void Update () {
		//print (PlayerPrefs.GetInt("Character 1"));
	}

	void OnGUI () {
		if (GUI.Button (new Rect (100, 100, 100, 30), "End Game")) {
			PlayerPrefs.SetFloat ("Score", variables.score);
			Application.LoadLevel("ScoreScreen");
		}
		GUI.Box (new Rect (400, 50, 200, 30), "Word Making Phase");
	}
}
