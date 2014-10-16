using UnityEngine;
using System.Collections;

public class ScoreGUI : MonoBehaviour {

	public GUIStyle big;
	public int characterNum;
	TextMesh totalScoreTextMesh;
	public TextMesh[] wordsFed;
	int selectedCharacter1;
	int selectedCharacter2;
	float score;

	// Use this for initialization
	void Start () {
		score = PlayerPrefs.GetFloat("Score");
		totalScoreTextMesh = transform.GetChild (0).GetComponent<TextMesh> ();
		wordsFed = new TextMesh[characterNum];



		selectedCharacter1 = PlayerPrefs.GetInt ("Character 1");
		selectedCharacter2 = PlayerPrefs.GetInt ("Character 2");
		Debug.Log (selectedCharacter1);
		Debug.Log (selectedCharacter2);
	}

	void Update(){
		totalScoreTextMesh.text = score.ToString();
	}

	//Method to display words fed
	void DisplayWordsFed()
	{
		
		
	}
}
