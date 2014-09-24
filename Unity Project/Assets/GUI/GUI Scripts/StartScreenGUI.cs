using UnityEngine;
using System.Collections;

public class StartScreenGUI : MonoBehaviour {

	public GUITexture MainMenu;
	float scaleFactor;

	void Start(){
		scaleFactor = Mathf.Max (Screen.width / MainMenu.pixelInset.width, Screen.height / MainMenu.pixelInset.height);
		float newWidth = MainMenu.pixelInset.width * scaleFactor;
		float newHeight = MainMenu.pixelInset.height * scaleFactor;
		MainMenu.pixelInset = new Rect (-newWidth / 2, -newHeight / 2, newWidth, newHeight);
	}
	
	// Update is called once per frame
	void Update () {
	}

	void OnGUI(){
		GUI.Button(new Rect (Screen.width*0.35f, Screen.height*0.36f, Screen.width*0.25f, Screen.height*0.12f), "Play");
		GUI.Button(new Rect (Screen.width*0.25f, Screen.height*0.6f, Screen.width*0.45f, Screen.height*0.12f), "Play");
		GUI.Button(new Rect (Screen.width*0.28f, Screen.height*0.81f, Screen.width*0.4f, Screen.height*0.12f), "Play");
	}

}
