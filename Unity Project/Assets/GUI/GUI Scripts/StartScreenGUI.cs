using UnityEngine;
using System.Collections;

public class StartScreenGUI : MonoBehaviour {

	float titleWidth = 100;
	float titleHeight = 100;
	float buttonWidth = 200;
	float buttonHeight = 200;
	float scale = 0f;
	public Texture2D buttonBackground;
    string playButton;
    string instructionButton;
    public Transform target;
    public float movementSpeed;
	
	// Use this for initialization
	void Start () {
		scale = Mathf.Max (Screen.width / 326, Screen.height / 435);
		titleWidth *= scale;
		titleHeight *= scale;
		buttonWidth *= scale;
		buttonHeight *= scale;

        if (Application.loadedLevelName == "ScoreScreen")
        {
            playButton = "Play Again";
            instructionButton = "Main Menu";
        }
        else
        {
            playButton = "Play";
            instructionButton = "Instructions";
        }
	}
	
	// Update is called once per frame
	void Update () {
        
		
	}
	
	void OnGUI(){
		GUIStyle style = new GUIStyle ();
		style.fontSize = Mathf.RoundToInt(40*scale);
		style.normal.textColor = Color.white;
		style.alignment = TextAnchor.UpperCenter;
		GUI.Label (new Rect(Screen.width/2 - titleWidth/2, Screen.height * 0.05f*scale, titleWidth, titleHeight), "Word Snack",style);
		
		
		GUIStyle ButtonStyle = new GUIStyle ();
		ButtonStyle.fontSize = Mathf.RoundToInt(32*scale);
		ButtonStyle.normal.textColor = Color.white;
		ButtonStyle.normal.background = buttonBackground;
		ButtonStyle.alignment = TextAnchor.LowerCenter;
		GUI.BeginGroup (new Rect (Screen.width / 2 - buttonWidth/2, Screen.height * 0.5f, buttonWidth, buttonHeight));
		if (GUILayout.Button (playButton, ButtonStyle)) {
			Debug.Log ("Play is pressed");
			Application.LoadLevel("CharacterSelect");
		}
		if (GUILayout.Button ( instructionButton, ButtonStyle))
        {
            if (Application.loadedLevelName == "ScoreScreen")
            {
                Debug.Log("Main Menu Clicked.");
                Application.LoadLevel("StartScreen");
            }
        }
		GUILayout.Button ( "About", ButtonStyle);
		GUI.EndGroup ();
		
		Debug.Log (Screen.height);
		Debug.Log (Screen.width);
	}


    public GUIStyle ButtonStyle { get; set; }
}
