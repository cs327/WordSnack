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
    public GameObject lightRowPrefab;
    public GameObject darkRowPrefab;
    public GameObject bottomPrefab;
    public TextMesh Character1Name;
    public TextMesh Character2Name;

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
        string char1String = Character.CharacterNameLookup[selectedCharacter1];
        string char2String = Character.CharacterNameLookup[selectedCharacter2];
        Debug.Log("Char 1 " + char1String);
        Debug.Log("Char 2 " + char2String);

        
        //List<String> scores = ScoreManager.AddHighScore(char1String, char2String, 100);
        //scores = ScoreManager.AddHighScore(char2String, char1String, 110);
        //Debug.Log(ScoreManager.GetScoresForSpecificCharacters(char1String, char2String).Count + " count");

        Character1Name.text = char1String;
        Character2Name.text = char2String;
        
        var char1Data = PlayerPrefs.GetString("WordsFedToCharacter " + selectedCharacter1);
        var char2Data = PlayerPrefs.GetString("WordsFedToCharacter " + selectedCharacter2);
        List<string> char1WordsFed = new List<string>();
        List<string> char2WordsFed = new List<string>();

        // I deserialize the player pref data into a list of strings representing the
        // words eaten and the scores associated. 
        if (!string.IsNullOrEmpty(char1Data))
        {
            BinaryFormatter binaryFormatter = new BinaryFormatter();
            var memStream = new MemoryStream(Convert.FromBase64String(char1Data));
            char1WordsFed = (List<String>)binaryFormatter.Deserialize(memStream);
        }
        
        if (!string.IsNullOrEmpty(char2Data))
        {
            BinaryFormatter binaryFormatter = new BinaryFormatter();
            var memStream = new MemoryStream(Convert.FromBase64String(char2Data));
            char2WordsFed = (List<String>)binaryFormatter.Deserialize(memStream);            
        }


        //char1WordsFed = new List<string>();
        //char1WordsFed.Add("Dog 3 2");
        //char1WordsFed.Add("lol 3 2");
        //Debug.Log("Char1 empty");

        //char2WordsFed = new List<string>();
        //char2WordsFed.Add("Dog 3 2");
        //Debug.Log("Char2 empty");


        // Add code to create rows/fill them
        int rowCount = Math.Max(char1WordsFed.Count, char2WordsFed.Count);
        Debug.Log("Rowcount: " + rowCount);
        Vector3 pos;
        
        for(int i = 0; i < rowCount; i++)
        {
            GameObject rowInstance;
            if (i % 2 == 0)
                rowInstance = (GameObject)Instantiate(darkRowPrefab);
            else
                rowInstance = (GameObject)Instantiate(lightRowPrefab);
            rowInstance.transform.parent = gameObject.transform;
            pos = rowInstance.transform.position;
            pos.y += rowOffset * i;
            rowInstance.transform.position = pos;
            
            
            Component[] rowMeshes = rowInstance.GetComponentsInChildren<TextMesh>();

            string[] wordInfo;
            foreach(TextMesh mesh in rowMeshes)
            {
                if(i < char1WordsFed.Count)
                {
                    wordInfo = char1WordsFed[i].Split(' ');
                    switch(mesh.name)
                    {
                        case "char1Word":
                            mesh.text = wordInfo[0];
                            break;
                        case "char1Score":
                            mesh.text = wordInfo[1] + " x " + wordInfo[2];
                            break;
                    }
                }
                if(i < char2WordsFed.Count)
                {
                    wordInfo = char2WordsFed[i].Split(' ');
                    switch(mesh.name)
                    {
                        case "char2Word":
                            mesh.text = wordInfo[0];
                            break;
                        case "char2Score":
                            mesh.text = wordInfo[1] + " x " + wordInfo[2];
                            break;
                    }

                }
            }
        }

        // Add code for bottom of receipt
        
        GameObject bottomInstance = (GameObject)Instantiate(bottomPrefab);
        bottomInstance.transform.parent = gameObject.transform;
        pos = bottomInstance.transform.position;
        
        pos.y += rowOffset * rowCount;
        
        bottomInstance.transform.position = pos;
        

        Component[] meshes = bottomInstance.GetComponentsInChildren<TextMesh>();

        foreach(TextMesh mesh in meshes)
        {
            switch(mesh.name)
            {
                case "Discarded Letters Mesh":
                    mesh.text = PlayerPrefs.GetInt("Trashed Letters").ToString();
                    break;
                case "Discarded Points Mesh":
                    mesh.text = PlayerPrefs.GetInt("Trashed Letter Score").ToString();
                    break;
                case "Word Score Mesh":
                    mesh.text = PlayerPrefs.GetInt("Total Letter Score").ToString();
                    break;
                case "Multiplier Bonus Mesh":
                    mesh.text = PlayerPrefs.GetInt("Total Multiplier Score").ToString();
                    break;
                case "Total Mesh":
                    mesh.text = PlayerPrefs.GetFloat("Score").ToString();
                    break;
            }
        }

    }

    void Update()
    {
        

    }

    //Method to display words fed
    void DisplayWordsFed()
    {


    }
}
