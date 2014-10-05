using UnityEngine;
using System.Collections;

public class wordBuildingController : MonoBehaviour {
	public GameObject [] characters = new GameObject[6];
	VariableControl variables;
	int character1Num = 1;
	int character2Num = 2;
	public GameObject character1;
	public GameObject character2;
	// Use this for initialization
	void Start () {
		variables = gameObject.GetComponent<VariableControl>();
		character1Num = PlayerPrefs.GetInt("Character 1");
		character2Num = PlayerPrefs.GetInt("Character 2");
		character1 = (GameObject)Instantiate(characters[character1Num], variables.phase2CharacterPositions[0], Quaternion.identity); 
		character2 = (GameObject)Instantiate(characters[character2Num], variables.phase2CharacterPositions[1], Quaternion.identity);
		//Set the characterNums correctly
		character1.GetComponent<Character> ().characterNum = character1Num;
		character2.GetComponent<Character> ().characterNum = character2Num;
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
		GUI.Box (new Rect (400, 100, 200, 30), "Score: " + variables.score);
	}
}
