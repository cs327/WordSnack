using UnityEngine;
using System.Collections;

public class wordBuildingController : MonoBehaviour
{
		public GameObject[] characters = new GameObject[6];
		//for taste panels, index 0 is left and index 1 is right side
		public GameObject[] tastePanels = new GameObject [2];
		public Texture2D[] leftPanels = new Texture2D [6];
		public Texture2D[] rightPanels = new Texture2D [6];
		public bool fadingOut = false;
	public bool fadeOut = false;
	public GameObject greyOut;
	public GameObject closingTimeText;
	public GameObject alertFlash;
	public bool alertStarted = false;
	public bool secondAlert = false;

		public VariableControl variables;
		public GameObject variableController;
		public Texture2D endGameButton;
		int character1Num = 1;
		int character2Num = 2;
		public GameObject character1;
		public GameObject character2;
		public GameObject trashCharacter;
		public GameObject tutorial;
		//public GameObject instructionsClose;
		public TextMesh lettersRemaining;
		public TextMesh timeRemaining;
		public GameObject char1Taste1;
		public GameObject char1Taste2;
		public GameObject char2Taste1;
		public GameObject char2Taste2;
		public Vector3[] tasteHighLightPos = new Vector3[4];
		public GameObject[] tasteHighlighters = new GameObject[4];
 
		// Use this for initialization
		void Start ()
		{
				variables = variableController.GetComponent<VariableControl> ();
				if (PlayerPrefs.GetInt ("timed") != 1) {
						timeRemaining.gameObject.SetActive (false);
				} else 
                    {
                        lettersRemaining.gameObject.SetActive(false);
                              if (variables.timerStart == true)
                              {
                                        timeRemaining.gameObject.SetActive(true);
                              }
				}
            

				tasteHighlighters [0] = char1Taste1;
				tasteHighLightPos [0] = new Vector3 (-7.6f, 4.6f, -0.5f);
				tasteHighlighters [1] = char1Taste2;
				tasteHighLightPos [1] = new Vector3 (-7.6f, 3.9f, -0.5f);
				tasteHighlighters [2] = char2Taste1;
				tasteHighLightPos [2] = new Vector3 (7.6f, 4.6f, -0.5f);
				tasteHighlighters [3] = char2Taste2;
				tasteHighLightPos [3] = new Vector3 (7.6f, 3.9f, -0.5f);
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
						tasteHighlighters [i].transform.position = tasteHighLightPos [i];
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
				if(variables.timedMode){
					AlertPlayer();
				}
				//Ends the game if time runs out:
				if (variables.timedMode && variables.globalTimer < 0) {
					fadeOut = true;
				}
				//ends game if no words left and tilebag is low
				if(variables.endGame){
					fadeOut = true;
					variables.endGame = false;
				}
				if(!fadingOut && fadeOut){
					StartCoroutine(ClosingTime());
				}
				//updates time on screen
		        else {
						timeRemaining.text = "Time: " + Mathf.RoundToInt (variables.globalTimer).ToString ();
				}
                if (variables.lettersRemaining > variables.boardSize)
                {
                    lettersRemaining.text = "Tiles: " + (variables.lettersRemaining - variables.boardSize).ToString();
                }
                else
                {
                    lettersRemaining.text = "Tiles: " + 0;
                }
                
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

	IEnumerator ClosingTime(){
		print ("END THE GAME FADE IT OUT");
        variables.bellSound = true;
		fadingOut = true;
		float t = variables.gameOverFadeInTimer;
		greyOut.SetActive(true);
		Color fadeFrom = greyOut.renderer.material.color;
		Color fadeTo = greyOut.renderer.material.color;
		fadeTo.a = 1.0f;
		float i = 0;
		while(greyOut.renderer.material.color.a < 1){
			i += Time.deltaTime/t;
			Color beMe = new Color (1, 1,1,fadeFrom.a + i);
			greyOut.renderer.material.color = beMe;
			
			yield return null;
		}
		closingTimeText.SetActive (true);
		yield return new WaitForSeconds(variables.gameOverOnScreenTimer);
		sendVariablestoScoreScreen ();
		Application.LoadLevel ("ScoreScreen");
		
	}
		void OnGUI ()
		{
				if (!variables.paused) {
						GUIStyle style = new GUIStyle ();
						style.normal.background = endGameButton;
						if (GUI.Button (new Rect (Screen.width * 0.013f, Screen.height * 0.315f, Screen.width * 0.07f, Screen.width * 0.07f), "", style)) {
							fadeOut = true;
						}
				}
		}
		public void sendVariablestoScoreScreen ()
		{
				//updates score related variables 
				variables.totalLetterScore = character1.GetComponent<Character> ().rawScoreFedToMe + character2.GetComponent<Character> ().rawScoreFedToMe;
				variables.totalMultiplierScore = character1.GetComponent<Character> ().rawBonusScoreFedToMe + character2.GetComponent<Character> ().rawBonusScoreFedToMe;
				variables.trashedLetters = trashCharacter.GetComponent<Character> ().trashedLetters;
				variables.trashedLetterScore = trashCharacter.GetComponent<Character> ().trashedLetterScore;

				//saves those variables in Player Prefs
				PlayerPrefs.SetFloat ("Score", variables.score);
				PlayerPrefs.SetInt ("Total Letter Score", variables.totalLetterScore); 
				PlayerPrefs.SetInt ("Total Multiplier Score", variables.totalMultiplierScore); 
				PlayerPrefs.SetInt ("Trashed Letters", variables.trashedLetters); 
				PlayerPrefs.SetInt ("Trashed Letter Score", variables.trashedLetterScore); 
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().score = variables.score;
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().rawScore = variables.totalLetterScore;
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().multiScore = variables.totalMultiplierScore;
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().trashLetterNum = variables.trashedLetters;
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().trashedLetterScore = variables.trashedLetterScore;
	}

	public void AlertPlayer(){
		if(variables.globalTimer < variables.secondAlert && !secondAlert){
			secondAlert = true;
			timeRemaining.color = Color.magenta;
			StartCoroutine(FlashColor(alertFlash));
		}
		if(variables.globalTimer < variables.firstAlert && !alertStarted){
			StartCoroutine(FlashColor(alertFlash));
		}
	}

	IEnumerator FlashColor(GameObject flash){
		Vector3 normalSize = timeRemaining.transform.localScale;
		Vector3 biggerSize = timeRemaining.transform.localScale*1.3f;
		flash.SetActive(true);
		alertStarted = true;
		Color fadeFrom = flash.renderer.material.color;
		float maxA = .3f;
		float minA = .001f;
		float t = 2f;
		float i = 0;
		//timeRemaining.transform.localScale = biggerSize;
		while(flash.renderer.material.color.a < maxA){
			i += Time.deltaTime/t;
			Color beMe = new Color (1, 0,0,minA + i);
			flash.renderer.material.color = beMe;

			timeRemaining.transform.localScale = Vector3.Lerp(normalSize,biggerSize,i/maxA);
			yield return null;
		}
		float j = 0;
		//timeRemaining.transform.localScale = normalSize;
		while(flash.renderer.material.color.a > minA){
			j += Time.deltaTime/t;
			Color beMe = new Color (1, 0,0,maxA - j);
			flash.renderer.material.color = beMe;

			timeRemaining.transform.localScale = Vector3.Lerp(biggerSize,normalSize,j/maxA);
			yield return null;
		}
		timeRemaining.transform.localScale = normalSize;
		if(secondAlert){
			StartCoroutine(FlashColor(flash));
		}

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
