using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

	int titleWidth = 100;
	int titleHeight = 100;
	public Texture2D buttonBackground;

	float scale = 0f;

	// Use this for initialization
	void Start () {
		scale = Mathf.Max (Screen.width / 326, Screen.height / 435);
		titleWidth *= (int) scale;
		titleHeight *= (int) scale;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI(){
		GUIStyle style = new GUIStyle ();
		style.fontSize = Mathf.RoundToInt(40*scale);
		style.normal.textColor = Color.white;
		style.alignment = TextAnchor.UpperCenter;
		GUI.Label (new Rect(Screen.width/2 - 50*scale, Screen.height * 0.05f*scale, titleWidth, titleHeight), "Word Snack",style);


		GUIStyle ButtonStyle = new GUIStyle ();
		ButtonStyle.fontSize = Mathf.RoundToInt(30*scale);
		ButtonStyle.normal.textColor = Color.white;
		ButtonStyle.normal.background = buttonBackground;
		ButtonStyle.alignment = TextAnchor.LowerCenter;
		GUI.BeginGroup (new Rect (Screen.width / 2 - 50*scale, Screen.height * 0.5f, titleWidth, titleHeight));
		if (GUILayout.Button ("Play", ButtonStyle)) {
			Debug.Log ("Play is pressed");
		}
		GUILayout.Button ( "Instructions", ButtonStyle);
		GUILayout.Button ( "About", ButtonStyle);
		GUI.EndGroup ();

		Debug.Log (Screen.height);
		Debug.Log (Screen.width);
	}
}
