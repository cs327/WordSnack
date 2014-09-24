using UnityEngine;
using System.Collections;

public class StartScreenButtons : UIButton{

	public string ButtonName;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	protected override void OnPress (bool isPressed) {
		if(ButtonName == "play" || ButtonName == "replay"){
			Application.LoadLevel("CharacterSelect");
		}else if(ButtonName == "instructions"){
			Debug.Log ("clicked instructions");
		}else if (ButtonName == "About"){
			Debug.Log ("clicked about");
		}
		else if (ButtonName == "main menu"){
			Application.LoadLevel("StartScreen");
		}
	}
}
