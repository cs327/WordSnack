using UnityEngine;
using System.Collections;

public class ScoreGUI : MonoBehaviour {

	public GUIStyle big;
	public int characterNum;

	//text meshes for each value on the receipt 
	//Later gets set with the correct string and int 
	public TextMesh totalScoreTextMesh;
	public TextMesh rawScoreTextMesh;
	public TextMesh multiScoreTextMesh;
	public TextMesh trashLettersTextMesh;
	public TextMesh trashedLettersScoreTextMesh;

	public TextMesh[] wordsFed;
	int selectedCharacter1;
	int selectedCharacter2;
	float score;

	//Ints that later get set from the values retrieved from Player Prefs
	int rawScore;
	int multiScore;
	int trashLetterNum;
	int trashedLetterScore;

	// Use this for initialization
	void Start () {

		//Getting the variable values from Word Building Scene and saving them as local ints for the receipt
		score = PlayerPrefs.GetFloat("Score");
		rawScore = PlayerPrefs.GetInt("Total Letter Score");
		multiScore = PlayerPrefs.GetInt("Total Multiplier Score");
		trashLetterNum = PlayerPrefs.GetInt("Trashed Letters");
		trashedLetterScore = PlayerPrefs.GetInt("Trashed Letter Score");

		wordsFed = new TextMesh[characterNum];

		selectedCharacter1 = PlayerPrefs.GetInt ("Character 1");
		selectedCharacter2 = PlayerPrefs.GetInt ("Character 2");
		Debug.Log (selectedCharacter1);
		Debug.Log (selectedCharacter2);
	}

	void Update(){
		//updating the text mesh variables with the correct score from game play
		totalScoreTextMesh.text = score.ToString();
		rawScoreTextMesh.text = "Raw Score: " + rawScore.ToString();
		multiScoreTextMesh.text = "Multiplier Score: " + multiScore.ToString();
		trashLettersTextMesh.text = "Trashed Letters: " + trashLetterNum.ToString();
		trashedLettersScoreTextMesh.text = "Trashed Letter Score: " + trashedLetterScore.ToString();

	}

	//Method to display words fed
	void DisplayWordsFed()
	{
		
		
	}
}
