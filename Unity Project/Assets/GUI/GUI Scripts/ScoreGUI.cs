using UnityEngine;
using System.Collections;

public class ScoreGUI : MonoBehaviour {
	public float score;
	public GUIStyle big;
	public Texture background;
	// Use this for initialization
	void Start () {
		score = PlayerPrefs.GetFloat("Score");
		big = new GUIStyle();
		big.fontSize = 60;
		big.normal.textColor = Color.white;
	}
	
	// Update is called once per frame
	void Update () {	
//		gameObject.GetComponent(
	}

	void OnGUI () {
		GUI.DrawTexture (new Rect (0, 0, Screen.width, Screen.height), background);
		GUI.color = Color.black;
		//GUI.Label(new Rect(600, 150, 100, 30), score.ToString(), big);
		GUIUtility.RotateAroundPivot (-90, new Vector2 (160, 30));
		GUI.Label(new Rect(600, 150, 100, 30), score.ToString(), big);
	}
}
