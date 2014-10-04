using UnityEngine;
using System.Collections;

public class CharacterSelectGUI : MonoBehaviour {
	public Texture characters;
	public int characterNumber;
	public int maxSelection;
	bool[] characterSelected;
	bool showWarning;
	float scale;
		
	void Start(){
		characterSelected = new bool[characterNumber];
		scale = Mathf.Max (Screen.width / 479.0f, Screen.height/ 319.0f);
	}

	bool checkSelectionLimit(){
		int counter = 0;
		for(int i = 0; i< characterSelected.Length; i++){
			if(characterSelected[i] == true){
				counter ++;
			}
			if(counter >= maxSelection){
				return false;
			}
		}
		return true;
	}

	void Update(){
		if(UniversalInput.press && UniversalInput.inRect(new Rect (Screen.width*0.05f, Screen.height*0.72f - 60*scale, Screen.width*0.2f, Screen.height*0.2f))){
			if(checkSelectionLimit()){
				characterSelected[0] = !characterSelected[0];
			}else{
				if(characterSelected[0] == true){
					characterSelected[0] = !characterSelected[0];
					showWarning = false;
				}else{
					showWarning = true;
				}
			}
		}

		else if(UniversalInput.press && UniversalInput.inRect(new Rect (Screen.width * 0.28f, Screen.height * 0.5f - 60*scale, Screen.width * 0.17f, Screen.height * 0.45f))){
			if(checkSelectionLimit()){
				characterSelected[1] = !characterSelected[1];
			}else{
				if(characterSelected[1] == true){
					characterSelected[1] = !characterSelected[1];
					showWarning = false;
				}
				else{
					showWarning = true;
				}
			}
		}

		else if(UniversalInput.press && UniversalInput.inRect(new Rect (Screen.width * 0.51f, Screen.height * 0.47f - 60*scale, Screen.width * 0.23f, Screen.height * 0.5f))){
			if(checkSelectionLimit()){
				characterSelected[2] = !characterSelected[2];
			}else{
				if(characterSelected[2] == true){
					characterSelected[2] = !characterSelected[2];
					showWarning = false;
				}
				else{
					showWarning = true;
				}
			}
		}

		else if(UniversalInput.press && UniversalInput.inRect(new Rect (Screen.width * 0.78f, Screen.height * 0.4f - 60*scale, Screen.width * 0.2f, Screen.height * 0.53f))){
			if(checkSelectionLimit()){
				characterSelected[3] = !characterSelected[3];
			}else{
				if(characterSelected[3] == true){
					characterSelected[3] = !characterSelected[3];
					showWarning = false;
				}
				else{
					showWarning = true;
				}
			}
		}
	}

	void OnGUI(){
		GUI.DrawTexture (new Rect (0, -60*scale, Screen.height * 1024 / 542, Screen.height), characters);
				
		GUIStyle style = new GUIStyle ();
		style.fontSize = Mathf.RoundToInt(22*scale);
		style.normal.textColor = Color.blue;

		GUI.Box (new Rect (Screen.width * 0.18f, Screen.height * 0.06f, Screen.width * 0.4f, Screen.height * 0.1f), "Choose Exactly Two Creatures!", style);


		style.fontSize = Mathf.RoundToInt(18*scale);
		style.normal.textColor = Color.red;
		if (characterSelected[0]) {
			GUI.Label (new Rect (Screen.width * 0.07f, Screen.height * 0.65f - 60*scale, Screen.width * 0.15f, Screen.height * 0.18f), "Selected!", style);
		}

		if (characterSelected[1]) {
			GUI.Label(new Rect (Screen.width * 0.28f, Screen.height * 0.42f - 60*scale, Screen.width * 0.15f, Screen.height * 0.18f), "Selected!", style);
		}

		if (characterSelected[2]) {
			GUI.Label(new Rect (Screen.width * 0.53f, Screen.height * 0.4f - 60*scale, Screen.width * 0.15f, Screen.height * 0.18f), "Selected!", style);
		}

		if (characterSelected[3]) {
			GUI.Label(new Rect (Screen.width * 0.78f, Screen.height * 0.3f - 60*scale, Screen.width * 0.15f, Screen.height * 0.18f), "Selected!", style);
		}

		if(showWarning){
			// make the title flicker
		}

		if (!checkSelectionLimit ()) {
			if(GUI.Button(new Rect(Screen.width*0.75f, Screen.height*0.85f, Screen.width*0.2f, Screen.height*0.1f), "Feed them!", style)){
				Debug.Log ("feed");
			}
		}

	}
}
