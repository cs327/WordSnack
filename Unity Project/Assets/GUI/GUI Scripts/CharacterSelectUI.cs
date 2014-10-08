using UnityEngine;
using System.Collections;

public class CharacterSelectUI : MonoBehaviour {

	public Texture2D background;
	float scale;
	// Use this for initialization
	void Start () {
		scale = Mathf.Max (Screen.width / 479.0f, Screen.height/ 319.0f);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI(){
		GUIStyle style = new GUIStyle ();
		style.fontSize = Mathf.RoundToInt(20 * scale);
		style.normal.textColor = Color.black;
		style.normal.background = background;
		GUI.Label (new Rect (Screen.width * 0.22f, Screen.height*0.08f, Screen.width*0.55f, Screen.height*0.13f), "", style);
		style.normal.background = null;
		GUI.Label (new Rect (Screen.width * 0.25f, Screen.height*0.1f, Screen.width*0.55f, Screen.height*0.15f), "Choose Two Characters!", style);
	
		if(GameObject.Find("VariableController").GetComponent<VariableControl>().timeToChangeGameState){
			style.fontSize = Mathf.RoundToInt(14*scale);
			style.normal.background = background;
			GUI.Label (new Rect (Screen.width * 0.84f, Screen.height*0.85f, Screen.width*0.15f, Screen.height*0.12f), "", style);
			style.normal.background = null;
			if(GUI.Button (new Rect (Screen.width * 0.84f, Screen.height*0.85f, Screen.width*0.15f, Screen.height*0.12f), "Feed them", style)){
				GameObject.Find("GameController").GetComponent<characterSelectController>().loadMainGame();
			}
		}

	}
}
