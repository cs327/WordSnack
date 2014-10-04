using UnityEngine;
using System.Collections;

public class ScoreGUI : MonoBehaviour {
	public float score;
	public GUIStyle big;
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
		GUI.color = Color.white;
		GUI.Box(new Rect(600, 150, 100, 30), score.ToString(), big);
	}
}
