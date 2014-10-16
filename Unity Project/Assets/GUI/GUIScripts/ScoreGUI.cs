using UnityEngine;
using System.Collections;

public class ScoreGUI : MonoBehaviour {

	public GUIStyle big;
	public int characterNum;
	public TextMesh totalScoreText;
	public TextMesh[] wordsFed;
	int selectedCharacter1;
	int selectedCharacter2;
	float score;

	// Use this for initialization
	void Start () {
		score = PlayerPrefs.GetFloat("Score");
		totalScoreText = 
		gameObject.GetComponent<TextMesh> ().text = score.ToString();
		selectedCharacter1 = PlayerPrefs.GetInt ("Character 1");
		selectedCharacter2 = PlayerPrefs.GetInt ("Character 2");
		Debug.Log (selectedCharacter1);
		Debug.Log (selectedCharacter2);
	}

	//Method to display words fed
	void DisplayWordsFed()
	{
		
		
	}
}
