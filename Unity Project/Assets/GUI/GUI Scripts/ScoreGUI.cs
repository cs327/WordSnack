using UnityEngine;
using System.Collections;

public class ScoreGUI : MonoBehaviour {
	public float score;
	public GUIStyle big;
	public Texture background;
	float scale;

	// Use this for initialization
	void Start () {
		scale = Mathf.Max (Screen.width / 479.0f, Screen.height/ 319.0f);
		score = PlayerPrefs.GetFloat("Score");

	}
	
	// Update is called once per frame
	void Update () {

		// the okay button brings player back to main menu screen
		if(UniversalInput.press && UniversalInput.inRect(new Rect (Screen.width * 0.55f, Screen.height * 0.81f, Screen.width * 0.15f, Screen.height * 0.18f))){
			Debug.Log ("Clicked on the okay");
			Application.LoadLevel("StartScreenTest");
		}

	}

	void OnGUI () {
		big = new GUIStyle();
		big.fontSize = Mathf.RoundToInt(24*scale);
		big.normal.textColor = Color.black;

		GUI.DrawTexture (new Rect (0, 0, Screen.width, Screen.height), background);
		GUI.color = Color.black;
		GUIUtility.RotateAroundPivot(-9.8f, new Vector2(Screen.width/2, Screen.height/2));
		GUI.Label(new Rect(Screen.width*0.65f, Screen.height*0.71f, Screen.width*0.2f, Screen.height*0.2f), score.ToString(), big);
	}
}
