using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class ScoreGUI : MonoBehaviour {

	public GUIStyle big;
	int selectedCharacter1;
	int selectedCharacter2;

	// Use this for initialization
	void Start ()
    {
		selectedCharacter1 = PlayerPrefs.GetInt ("Character 1");
		selectedCharacter2 = PlayerPrefs.GetInt ("Character 2");
		Debug.Log (selectedCharacter1);
		Debug.Log (selectedCharacter2);

        var char1Data = PlayerPrefs.GetString("WordsFedToCharacter " + selectedCharacter1);
        var char2Data = PlayerPrefs.GetString("WordsFedToCharacter " + selectedCharacter2);
        List<string> char1WordsFed;
        List<string> char2WordsFed;

        // I deserialize the player pref data into a list of strings representing the
        // words eaten and the scores associated. 
        if(!string.IsNullOrEmpty(char1Data))
        {
            BinaryFormatter binaryFormatter = new BinaryFormatter();
            var memStream = new MemoryStream(Convert.FromBase64String(char1Data));
            char1WordsFed = (List<String>)binaryFormatter.Deserialize(memStream);
        }
        if(!string.IsNullOrEmpty(char2Data))
        {
            BinaryFormatter binaryFormatter = new BinaryFormatter();
            var memStream = new MemoryStream(Convert.FromBase64String(char2Data));
            char2WordsFed = (List<String>)binaryFormatter.Deserialize(memStream);
        }

    }

	void Update(){
		//updating the text mesh variables with the correct score from game play
        //totalScoreTextMesh.text = score.ToString();
        ////rawScoreTextMesh.text = "Raw Score: " + rawScore.ToString();
        //MultiplierTextMesh.text = "Multiplier Score: " + multiScore.ToString();
        //DiscardedLettersTextMesh.text = "Trashed Letters: " + trashLetterNum.ToString();
        //DiscardedPointsTextMesh.text = "Trashed Letter Score: " + trashedLetterScore.ToString();

	}

	//Method to display words fed
	void DisplayWordsFed()
	{
		
		
	}
}
