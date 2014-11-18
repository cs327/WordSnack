using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;
using System.Net.NetworkInformation;
using LitJson;
using System.IO;
using System;
using System.Net;

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
				} else {
						lettersRemaining.gameObject.SetActive (false);
						if (variables.timerStart == true) {
								timeRemaining.gameObject.SetActive (true);
						}
				}

				tasteHighlighters [0] = char1Taste1;
				tasteHighLightPos [0] = new Vector3 (1.0f, 0.0f, -1f);         // (-7.6f, 4.6f, -0.5f);
				tasteHighlighters [1] = char1Taste2;
				tasteHighLightPos [1] = new Vector3 (1.0f, 0.0f, -1f);          //(-7.6f, 3.9f, -0.5f);
				tasteHighlighters [2] = char2Taste1;
				tasteHighLightPos [2] = new Vector3 (-1.0f, 0.0f, -1f); //(7.6f, 4.6f, -0.5f);
				tasteHighlighters [3] = char2Taste2;
				tasteHighLightPos [3] = new Vector3 (-1.0f, 0.0f, -1f); //(7.6f, 3.9f, -0.5f);
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
				if (variables.timedMode) {
						AlertPlayer ();
				}
				//Ends the game if time runs out:
				if (variables.timedMode && variables.globalTimer < 0) {
						fadeOut = true;
				}
				//ends game if no words left and tilebag is low
				if (variables.endGame) {
						fadeOut = true;
						variables.endGame = false;
				}
				if (!fadingOut && fadeOut) {
						sendVariablestoScoreScreen ();
						StartCoroutine (ClosingTime ());
				}
				//updates time on screen
		        else {
						timeRemaining.text = "Time: " + Mathf.RoundToInt (variables.globalTimer).ToString ();
				}
				if (variables.lettersRemaining > variables.boardSize) {
						lettersRemaining.text = "Tiles: " + (variables.lettersRemaining - variables.boardSize).ToString ();
				} else {
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

		IEnumerator ClosingTime ()
		{
				print ("END THE GAME FADE IT OUT");
				variables.bellSound = true;
				fadingOut = true;
				yield return new WaitForSeconds (variables.closingTimeDelay);
				float t = variables.gameOverFadeInTimer;
				greyOut.SetActive (true);
				Color fadeFrom = greyOut.renderer.material.color;
				Color fadeTo = greyOut.renderer.material.color;
				fadeTo.a = 1.0f;
				float i = 0;
				while (greyOut.renderer.material.color.a < 1) {
						i += Time.deltaTime / t;
						Color beMe = new Color (1, 1, 1, fadeFrom.a + i);
						greyOut.renderer.material.color = beMe;
			
						yield return null;
				}
				closingTimeText.SetActive (true);
				yield return new WaitForSeconds (variables.gameOverOnScreenTimer);
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
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed> ().score = variables.score;
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed> ().rawScore = variables.totalLetterScore;
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed> ().multiScore = variables.totalMultiplierScore;
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed> ().trashLetterNum = variables.trashedLetters;
				GameObject.Find ("WordsFed").GetComponent<StoreWordsFed> ().trashedLetterScore = variables.trashedLetterScore;


				//For Game Analytics - Josiah
				string game_key = "edad1246d65557dc8732119343a2ae6f";
				string secret_key = "7671077d3c085e7abcd0b50bf8965fd88279cec4";
				string endpoint_url = "http://api.gameanalytics.com/1";
				NetworkInterface[] nics = NetworkInterface.GetAllNetworkInterfaces ();
				string user_id = "";
				//Generate universally unique user ID's for Game Analytics
				foreach (NetworkInterface adapter in nics) {
						PhysicalAddress address = adapter.GetPhysicalAddress ();
						if (address.ToString () != "" && user_id == "") {
								byte[] bytes = Encoding.UTF8.GetBytes (address.ToString ());
								SHA1CryptoServiceProvider SHA = new SHA1CryptoServiceProvider ();
								user_id = BitConverter.ToString (SHA.ComputeHash (bytes)).Replace ("-", "");
						}
				}
				string category = "user"; //These analytics are in the design category for the dashboard on the server
				Dictionary<string,string> message = new Dictionary<string,string> (); //variable to hold our stuff we're gonna send back for analysis
				//Now add some stuff we wanna send back
				//Was it a timed-mode game?
				string mode = "Error"; //So we'll know something went wrong
				if (variables.timedMode == true) {
						mode = "Dinner Rush";
				} else {
						mode = "Casual Lunch";
				}
				//Required fields
				message.Add ("event_id", "Analytics test");
				message.Add ("user_id", user_id);
				message.Add ("session_id", "session_1");
				//Stuff we actually want
				message.Add ("mode", mode);
				message.Add ("score", variables.score.ToString ());
				message.Add ("character1", character1Num.ToString ());
				message.Add ("character2", character2Num.ToString ());
				message.Add ("build", "0.1.6-testingAnalytics");
				/*
		 * Prepare the HTTP request by:

    	converting the C# dictionary to JSON
    	computing the MD5 hash using the event and secret key
		*/
				string json_message = JsonMapper.ToJson (message);
				MD5 md5 = new MD5CryptoServiceProvider ();
				byte[] authData = Encoding.Default.GetBytes (json_message + secret_key);
				byte[] authHash = md5.ComputeHash (authData);
				// Transforms as hexa
				string hexaHash = "";
				foreach (byte b in authHash) {
						hexaHash += String.Format ("{0:x2}", b);
				}
				byte[] jsonData = Encoding.ASCII.GetBytes (json_message); 
				//Create the URL:
				string url = endpoint_url + "/" + game_key + "/" + category;
				Debug.Log ("Sending " + json_message + " to " + url);
				WebRequest request = WebRequest.Create (url);
				//Submit the request and print the server response:
				request.Headers.Add ("Authorization", hexaHash);
				request.Method = "POST";
				request.ContentLength = jsonData.Length;
				request.ContentType = "application/x-www-form-urlencoded";
				// Send the json data
				Stream dataStream = request.GetRequestStream ();
				dataStream.Write (jsonData, 0, jsonData.Length);
				dataStream.Close ();
				// Get the response
				WebResponse response = request.GetResponse ();
				Stream responseData = response.GetResponseStream ();
				byte[] buffer = new byte[4096];
				responseData.Read (buffer, 0, 4096);
				responseData.Close ();
		
				Console.WriteLine (Encoding.UTF8.GetString (buffer));
				response.Close ();
		}

		public void AlertPlayer ()
		{
				if (variables.globalTimer < variables.secondAlert && !secondAlert) {
						secondAlert = true;
						timeRemaining.color = Color.red;
						StartCoroutine (FlashColor (alertFlash));
				}
				if (variables.globalTimer < variables.firstAlert && !alertStarted) {
						timeRemaining.color = Color.yellow;
						StartCoroutine (FlashColor (alertFlash));
				}
		}

		IEnumerator FlashColor (GameObject flash)
		{
				Vector3 normalSize = timeRemaining.transform.localScale;
				Vector3 biggerSize = timeRemaining.transform.localScale * 1.3f;
				flash.SetActive (true);
				alertStarted = true;
				Color fadeFrom = flash.renderer.material.color;
				float maxA = .3f;
				float minA = .001f;
				float t = 2f;
				float i = 0;
				//timeRemaining.transform.localScale = biggerSize;
				//while(flash.renderer.material.color.a < maxA){
				while (i < maxA) {
						i += Time.deltaTime / t;
						Color beMe = new Color (1, 0, 0, minA + i);
						//flash.renderer.material.color = beMe;

						timeRemaining.transform.localScale = Vector3.Lerp (normalSize, biggerSize, i / maxA);
						yield return null;
				}
				float j = 0;
				//timeRemaining.transform.localScale = normalSize;
				//while(flash.renderer.material.color.a > minA){
				while (i-j > minA) {
						j += Time.deltaTime / t;
						Color beMe = new Color (1, 0, 0, maxA - j);
						//flash.renderer.material.color = beMe;

						timeRemaining.transform.localScale = Vector3.Lerp (biggerSize, normalSize, j / maxA);
						yield return null;
				}
				timeRemaining.transform.localScale = normalSize;
				if (secondAlert) {
						StartCoroutine (FlashColor (flash));
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
						tastePanels [0].transform.localPosition = (new Vector3 (-.7f, -0.01f, 0));
						tastePanels [1].transform.localPosition = (new Vector3 (.7f, -0.01f, 0));
				}
				if (variables.iPhoneType == 2) {
						tastePanels [0].transform.position = (new Vector3 (0, -0.01f, 0));
						tastePanels [1].transform.position = (new Vector3 (0, -0.01f, 0));
				}
		}
}
