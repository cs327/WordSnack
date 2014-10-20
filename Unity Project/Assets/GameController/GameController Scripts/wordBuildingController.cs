using UnityEngine;
using System.Collections;

public class wordBuildingController : MonoBehaviour {
	public GameObject [] characters = new GameObject[6];
	public GameObject [] characterTasteBoxes = new GameObject[5];
	public VariableControl variables;
	public GameObject variableController;
	public Texture2D endGameButton;
	int character1Num = 1;
	int character2Num = 2;
	public GameObject character1;
	public GameObject character2;
	public GameObject trashCharacter;
	public bool gamePaused;
	public GameObject instructions;
	public GameObject instructionsClose;

	// Use this for initialization
	void Start () {

		PlayerPrefs.SetInt("Instructions",0);

		variables = variableController.GetComponent<VariableControl>();
		character1Num = PlayerPrefs.GetInt("Character 1");
		character2Num = PlayerPrefs.GetInt("Character 2");
		character1 = (GameObject)Instantiate(characters[character1Num], variables.phase2CharacterPositions[0], Quaternion.identity);
		Instantiate(characterTasteBoxes[character1Num-1], variables.phase2CharacterPositions[0] + new Vector3(-2, 2.25F, 0), Quaternion.identity);
		character2 = (GameObject)Instantiate(characters[character2Num], variables.phase2CharacterPositions[1], Quaternion.identity);
		Instantiate(characterTasteBoxes[character2Num-1], variables.phase2CharacterPositions[1] + new Vector3(2, 2.25F, 0), Quaternion.identity);
		character1.transform.localScale = new Vector3 (2,2,2);
		character2.transform.localScale = new Vector3 (2,2,2);
		//Set the characterNums correctly
		character1.GetComponent<Character> ().characterNum = character1Num;
		character2.GetComponent<Character> ().characterNum = character2Num;

		instructions = GameObject.Find ("instructionsBackground");
		instructionsClose = GameObject.Find ("close");
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log ("playerprefs instructions: " + PlayerPrefs.GetInt("instructions"));
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
				sendVariablestoScoreScreen();
				Application.LoadLevel("ScoreScreen");
			}
		}
	}
	public void sendVariablestoScoreScreen () {
		//updates score related variables 
		variables.totalLetterScore = character1.GetComponent<Character>().rawScoreFedToMe + character2.GetComponent<Character>().rawScoreFedToMe + trashCharacter.GetComponent<Character>().rawScoreFedToMe;
		variables.totalMultiplierScore = character1.GetComponent<Character>().rawBonusScoreFedToMe + character2.GetComponent<Character>().rawBonusScoreFedToMe + trashCharacter.GetComponent<Character>().rawBonusScoreFedToMe;
		variables.trashedLetters = trashCharacter.GetComponent<Character>().numLettersFedToMe;
		variables.trashedLetterScore = trashCharacter.GetComponent<Character>().rawScoreFedToMe;

		//saves those variables in Player Prefs
		PlayerPrefs.SetFloat ("Score", variables.score);
		PlayerPrefs.SetInt( "Total Letter Score" , variables.totalLetterScore ); 
		PlayerPrefs.SetInt( "Total Multiplier Score" , variables.totalMultiplierScore ); 
		PlayerPrefs.SetInt( "Trashed Letters" , variables.trashedLetters ); 
		PlayerPrefs.SetInt( "Trashed Letter Score" , variables.trashedLetterScore ); 
	}
}
