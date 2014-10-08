using UnityEngine;

public class StartScreenGUI : MonoBehaviour {

	public Texture background;

	void OnGUI(){
//		GUI.DrawTexture (new Rect (0, 0, Screen.width, Screen.height), background);
	}
	
	// Update is called once per frame
	void Update () {
		if (UniversalInput.press){
			if( UniversalInput.inRect (new Rect(Screen.width * 0.35f, Screen.height * 0.36f, Screen.width * 0.25f, Screen.height * 0.12f))) {
				Debug.Log ("pressed on the play area");
				Application.LoadLevel("CharacterSelect");
			}else if(UniversalInput.inRect (new Rect (Screen.width*0.25f, Screen.height*0.6f, Screen.width*0.45f, Screen.height*0.12f))){
				Debug.Log ("pressed on the characters area");
				Application.LoadLevel("CharacterSelect");
			}else if(UniversalInput.inRect(new Rect (Screen.width*0.28f, Screen.height*0.81f, Screen.width*0.4f, Screen.height*0.12f))){
				Debug.Log ("pressed on the options area");
			}
		}
	}

}
