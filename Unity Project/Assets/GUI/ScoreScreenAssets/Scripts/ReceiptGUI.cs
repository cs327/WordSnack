using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class ReceiptGUI : MonoBehaviour
{

    public GUIStyle big;
    public int characterNum;
    public float rowOffset;
    public GameObject rowPrefab;
    public GameObject bottomPrefab;

    //text meshes for each value on the receipt 
    //Later gets set with the correct string and int 
    //public TextMesh totalScoreTextMesh;
    //public TextMesh rawScoreTextMesh;
    //public TextMesh MultiplierTextMesh;
    //public TextMesh DiscardedLettersTextMesh;
    //public TextMesh DiscardedPointsTextMesh;

    int selectedCharacter1;
    int selectedCharacter2;
    float score;

    //Ints that later get set from the values retrieved from Player Prefs
    int rawScore;
    int multiScore;
    int trashLetterNum;
    int trashedLetterScore;

    // Use this for initialization
    void Start()
    {
        
        selectedCharacter1 = PlayerPrefs.GetInt("Character 1");
        selectedCharacter2 = PlayerPrefs.GetInt("Character 2");

        // Add code for character names


        var char1Data = PlayerPrefs.GetString("WordsFedToCharacter " + selectedCharacter1);
        var char2Data = PlayerPrefs.GetString("WordsFedToCharacter " + selectedCharacter2);
        List<string> char1WordsFed;
        List<string> char2WordsFed;

        // I deserialize the player pref data into a list of strings representing the
        // words eaten and the scores associated. 
        if (!string.IsNullOrEmpty(char1Data))
        {
            BinaryFormatter binaryFormatter = new BinaryFormatter();
            var memStream = new MemoryStream(Convert.FromBase64String(char1Data));
            char1WordsFed = (List<String>)binaryFormatter.Deserialize(memStream);
        }
        else
        {
            char1WordsFed = new List<string>();
            char1WordsFed.Add("Dog");
            Debug.Log("Char1 empty");
        }
        if (!string.IsNullOrEmpty(char2Data))
        {
            BinaryFormatter binaryFormatter = new BinaryFormatter();
            var memStream = new MemoryStream(Convert.FromBase64String(char2Data));
            char2WordsFed = (List<String>)binaryFormatter.Deserialize(memStream);            
        }
        else
        {
            char2WordsFed = new List<string>();
            char2WordsFed.Add("Dog");
            Debug.Log("Char2 empty");
        }

        //char1WordsFed = new List<string>();
        //char1WordsFed.Add("Dog");
        //Debug.Log("Char1 empty");

        //char2WordsFed = new List<string>();
        //char2WordsFed.Add("Dog");
        //Debug.Log("Char2 empty");


        // Add code to create rows/fill them
        int rowCount = Math.Min(char1WordsFed.Count, char2WordsFed.Count);
        Vector3 pos;
        Debug.Log(char1WordsFed.Count);
        for(int i = 0; i < rowCount; i++)
        {
            GameObject rowInstance = (GameObject)Instantiate(rowPrefab);
            rowInstance.transform.parent = gameObject.transform;
            pos = rowInstance.transform.position;
            pos.y += rowOffset * i;
            rowInstance.transform.position = pos;

        }

        // Add code for bottom of receipt
        GameObject receiptInstance = (GameObject)Instantiate(bottomPrefab);
        receiptInstance.transform.parent = gameObject.transform;
        pos = receiptInstance.transform.position;
        pos.y += rowOffset * rowCount;
        receiptInstance.transform.position = pos;

    }

    void Update()
    {
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
