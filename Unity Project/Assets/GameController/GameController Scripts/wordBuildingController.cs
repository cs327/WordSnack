using UnityEngine;
using System.Collections;

public class wordBuildingController : MonoBehaviour {
	public GameObject [] characters = new GameObject[6];
	public VariableControl variables;
	public GameObject variableController;
	public Texture2D endGameButton;
	int character1Num = 1;
	int character2Num = 2;
	public GameObject character1;
	public GameObject character2;
	public bool gamePaused;
	public GameObject instructions;
	public GameObject instructionsClose;
	public GameObject check;

	// Use this for initialization
	void Start () {

		PlayerPrefs.SetInt("Instructions",0);

		variables = variableController.GetComponent<VariableControl>();
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
		//Debug.Log ("playerprefs instructions: " + PlayerPrefs.GetInt("instructions"));
		// if the instructions is enabled 
		if(PlayerPrefs.GetInt("instructions") == 0){
			instructions.SetActive (true);
			instructionsClose.SetActive(true);
		}else{
			instructions.SetActive (false);
			instructionsClose.SetActive(false);
		}
	}

	void OnGUI () {
		if(!gamePaused && PlayerPrefs.GetInt("instructions") == 1){
			GUIStyle style = new GUIStyle ();
			style.normal.background = endGameButton;
			if (GUI.Button (new Rect(Screen.width*0.92f, Screen.height*0.88f, Screen.width*0.07f, Screen.width*0.07f), "", style)) {
				PlayerPrefs.SetFloat ("Score", variables.score);
				Application.LoadLevel("ScoreScreen");
			}
		}
	}
}
