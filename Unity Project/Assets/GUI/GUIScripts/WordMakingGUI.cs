using UnityEngine;
using System.Collections;

public class WordMakingGUI : MonoBehaviour {
	//public Texture2D background;
	//float scale;
	public GameObject variableController;
	public VariableControl variableControl;
	public TextMesh textMesh;

	// Use this for initialization
	void Start () {
		//scale = Mathf.Max (Screen.width / 479.0f, Screen.height/ 319.0f);
		variableControl = variableController.GetComponent<VariableControl> ();
		textMesh = gameObject.GetComponent<TextMesh> ();
	}
	
	// Update is called once per frame
	void Update () {
		textMesh.text = "SCORE: " + variableControl.score.ToString();
	}

//	void OnGUI(){
//		GUIStyle style = new GUIStyle ();
//		style.fontSize = Mathf.RoundToInt(16 * scale);
//		style.normal.textColor = Color.black;
//		style.normal.background = background;
//		// score display
//		GUI.Label (new Rect (Screen.width * 0.01f, Screen.height*0.01f, Screen.width*0.22f, Screen.height*0.08f), "", style);
//		style.normal.background = null;
//		GUI.Label (new Rect (Screen.width * 0.008f, Screen.height*0.018f, Screen.width*0.18f, Screen.height*0.08f), "\tScore:  " + variableController.GetComponent<VariableControl>().score, style);
//
//		// tiles remaining
//		style.normal.background = background;
//		GUI.Label (new Rect (Screen.width * 0.32f, Screen.height*0.01f, Screen.width*0.38f, Screen.height*0.08f), "", style);
//		style.normal.background = null;
//		GUI.Label (new Rect (Screen.width * 0.34f, Screen.height*0.018f, Screen.width*0.35f, Screen.height*0.08f), "Tiles Remaining:  " + variableController.GetComponent<VariableControl>().totalLetters, style);
//
//
//		// menu button
//		style.normal.background = background;
//		GUI.Label (new Rect (Screen.width * 0.79f, Screen.height*0.01f, Screen.width*0.2f, Screen.height*0.08f), "", style);
//		style.normal.background = null;
//		GUI.Label (new Rect (Screen.width * 0.85f, Screen.height*0.018f, Screen.width*0.15f, Screen.height*0.08f), "Menu", style);
//	}
}
