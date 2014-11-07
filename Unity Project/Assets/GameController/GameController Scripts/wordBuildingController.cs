using UnityEngine;
using System.Collections;

public class wordBuildingController : MonoBehaviour
{
		public GameObject[] characters = new GameObject[6];
		//for taste panels, index 0 is left and index 1 is right side
		public GameObject[] tastePanels = new GameObject [2];
		public Texture2D[] leftPanels = new Texture2D [6];
		public Texture2D[] rightPanels = new Texture2D [6];

		public VariableControl variables;
		public GameObject variableController;
		public Texture2D endGameButton;
		int character1Num = 1;
		int character2Num = 2;
		public GameObject character1;
		public GameObject character2;
		public GameObject trashCharacter;
		public bool gamePaused;
		public GameObject tutorial;
		//public GameObject instructionsClose;
		public TextMesh lettersRemaining;
		public TextMesh timeRemaining;
		public GameObject char1Taste1;
		public GameObject char1Taste2;
		public GameObject char2Taste1;
		public GameObject char2Taste2;
		public Vector3[] tasteHightLightPos = new Vector3[4];
		public GameObject[] tasteHighlighters = new GameObject[4];
 
		// Use this for initialization
		void Start ()
		{
				if (PlayerPrefs.GetInt ("timed") != 1) {
						timeRemaining.gameObject.SetActive (false);
				} else {
						timeRemaining.gameObject.SetActive (true);
				}

				tasteHighlighters [0] = char1Taste1;
				tasteHighlighters [1] = char1Taste2;
				tasteHighlighters [2] = char2Taste1;
				tasteHighlighters [3] = char2Taste2;
				variables = variableController.GetComponent<VariableControl> ();
				character1Num = PlayerPrefs.GetInt ("Character 1");
				character2Num = PlayerPrefs.GetInt ("Character 2");
				character1 = (GameObject)Instantiate (characters [character1Num], variables.phase2CharacterPositions [0], Quaternion.identity);
				character2 = (GameObject)Instantiate (characters [character2Num], variables.phase2CharacterPositions [1], Quaternion.identity);
				character1.transform.localScale = new Vector3 (2, 2, 2);
				character2.transform.localScale = new Vector3 (2, 2, 2);
				character1.GetComponent<BoxCollider> ().size = new Vector3 (2, 3, 0);
				character2.GetComponent<BoxCollider> ().size = new Vector3 (2, 3, 0);
				//Set the characterNums correctly
				character1.GetComponent<Character> ().characterNum = character1Num;
				character2.GetComponent<Character> ().characterNum = character2Num;

				PlayerPrefs.SetInt ("Instructions", 0);
				tutorial = GameObject.Find ("Tutorial");
				//instructionsClose = GameObject.Find ("close");

				if (GameObject.Find ("AudioManager_Prefab(Clone)") == null) {
						Instantiate (Resources.Load ("AudioManager_Prefab"), new Vector3 (0, 0, 0), Quaternion.identity);
				}

				SetDisplayColors ();
				//sets the taste highlighters to match the position of the tastes
				for (int i = 0; i < tasteHighlighters.Length; i++) {
						tasteHighlighters [i].transform.position = tasteHightLightPos [i];
				}
				//moves the highlighters over, if it's an iPhone 5
				if (variables.iPhoneType == 2) {
						for (int i = 0; i < tasteHighlighters.Length -2; i++) {
								tasteHighlighters [i].transform.position += Vector3.left;
						}
						for (int i = 2; i < tasteHighlighters.Length; i++) {
								tasteHighlighters [i].transform.position += Vector3.right;
						}
				}


		}
		// Update is called once per frame
		void Update ()
		{
				//Ends the game if time runs out:
				if (variables.timedMode && variables.globalTimer < 0) {
						sendVariablestoScoreScreen ();
						Application.LoadLevel ("ScoreScreen");
				}
		//updates time on screen
		else {
						timeRemaining.text = "Time: " + Mathf.RoundToInt (variables.globalTimer).ToString ();
				}

				lettersRemaining.text = "Tiles: " + variables.lettersRemaining.ToString ();
				//Debug.Log ("playerprefs instructions: " + PlayerPrefs.GetInt("instructions"));
				// if the instructions is enabled 
				if (PlayerPrefs.GetInt ("instructions") == 0) {
						tutorial.SetActive (true);
						//instructionsClose.SetActive(true);
				} else {
						tutorial.SetActive (false);
						//instructionsClose.SetActive(false);
				}
//		highlights and character tastes that are currently pleased
				for (int i = 0; i < tasteHighlighters.Length; i++) {
						if (variables.timeToHighlightTaste [i]) {
								tasteHighlighters [i].transform.renderer.enabled = true;
						} else {
								tasteHighlighters [i].transform.renderer.enabled = false;
						}
				}

//		//unhilights all tastes if the letters on the stove do not form a word
				if (!variables.isWord) {
						unhightlightAllTastes ();
				}
		}

		void OnGUI ()
		{
				if (!gamePaused) {
						GUIStyle style = new GUIStyle ();
						style.normal.background = endGameButton;
						if (GUI.Button (new Rect (Screen.width * 0.013f, Screen.height * 0.315f, Screen.width * 0.07f, Screen.width * 0.07f), "", style)) {
								sendVariablestoScoreScreen ();
								Application.LoadLevel ("ScoreScreen");
						}
				}
		}
		public void sendVariablestoScoreScreen ()
		{
				//updates score related variables 
				variables.totalLetterScore = character1.GetComponent<Character> ().rawScoreFedToMe + character2.GetComponent<Character> ().rawScoreFedToMe + trashCharacter.GetComponent<Character> ().rawScoreFedToMe;
				variables.totalMultiplierScore = character1.GetComponent<Character> ().rawBonusScoreFedToMe + character2.GetComponent<Character> ().rawBonusScoreFedToMe + trashCharacter.GetComponent<Character> ().rawBonusScoreFedToMe;
				variables.trashedLetters = trashCharacter.GetComponent<Character> ().numLettersFedToMe;
				variables.trashedLetterScore = trashCharacter.GetComponent<Character> ().rawScoreFedToMe;

				//saves those variables in Player Prefs
				PlayerPrefs.SetFloat ("Score", variables.score);
				PlayerPrefs.SetInt ("Total Letter Score", variables.totalLetterScore); 
				PlayerPrefs.SetInt ("Total Multiplier Score", variables.totalMultiplierScore); 
				PlayerPrefs.SetInt ("Trashed Letters", variables.trashedLetters); 
				PlayerPrefs.SetInt ("Trashed Letter Score", variables.trashedLetterScore); 
		}

		public void unhightlightAllTastes ()
		{
				for (int i = 0; i < tasteHighlighters.Length; i++) {
						tasteHighlighters [i].transform.renderer.enabled = false;
						variables.timeToHighlightTaste [i] = false;
				}
		}

		public void SetDisplayColors ()
		{
				//for taste panels, index 0 is left and index 1 is right side
		
				tastePanels [0].renderer.material.SetTexture ("_MainTex", leftPanels [character1Num]);
				tastePanels [1].renderer.material.SetTexture ("_MainTex", rightPanels [character2Num]);
				if (variables.iPhoneType == 1) {
						tastePanels [0].transform.localPosition = (new Vector3 (-.7f, 0, 0));
						tastePanels [1].transform.localPosition = (new Vector3 (.7f, 0, 0));
				}
				if (variables.iPhoneType == 2) {
						tastePanels [0].transform.position = (new Vector3 (0, 0, 0));
						tastePanels [1].transform.position = (new Vector3 (0, 0, 0));
				}
		}
}
