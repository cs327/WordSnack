using System.Configuration;
using System.Threading;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class ReceiptGUI : MonoBehaviour
{
    #region Variables
    public GUIStyle big;
    public int characterNum;
    public float rowOffset;
    // A constant used to adjust how far down the receipt should scroll
    public float EmptyReceiptLength;
    // A constant used to adjust how far up the receipt should scroll
    public Camera camera;
    public float lowestPoint;
    public float screenOffset;
    public GameObject RowPrefab;
    public GameObject bottomInstance;
    public Vector3 firstRowPos;
    public TextMesh Character1Name;
    public TextMesh Character2Name;
    

    int selectedCharacter1;
    int selectedCharacter2;
	public List <string> char1WordsFed = new List<string>();
	public List <string> char2WordsFed =  new List<string>();
	public Component[] meshes;
    float score;
	int rowCount;

    //Ints that later get set from the values retrieved from Player Prefs
    int rawScore;
    int multiScore;
    int trashLetterNum;
    int trashedLetterScore;

    #endregion

    // Use this for initialization
    void Start()
    {
        #region Get Receipt Info
        firstRowPos = bottomInstance.transform.position;
        Debug.Log("First row pos: " + firstRowPos.ToString());
        selectedCharacter1 = PlayerPrefs.GetInt("Character 1");
        selectedCharacter2 = PlayerPrefs.GetInt("Character 2");

        string char1String = Character.CharacterNameLookup[selectedCharacter1];
        string char2String = Character.CharacterNameLookup[selectedCharacter2];        
        if (selectedCharacter1 == null)
            char1String = "Error";
        if (selectedCharacter2 == null)
            char2String = "Error";

        Debug.Log("Char 1 " + char1String);
        Debug.Log("Char 2 " + char2String);
        Debug.Log(Application.persistentDataPath + " is the save file location");        
        
        Debug.Log(ScoreManager.ToString());        

        Character1Name.text = char1String;
        Character2Name.text = char2String;
		if (GameObject.Find("WordsFed") != null) {
			char1WordsFed = GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().character1Words;
			char2WordsFed = GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().character2Words;
		}

        //char1WordsFed = new List<string>();
        //char2WordsFed = new List<string>();

        //char1WordsFed.Add("cat 30 5");
        //char1WordsFed.Add("Nope 20 9");
        //char1WordsFed.Add("cat 30 5");
        //char1WordsFed.Add("Nope 20 9");
        //char1WordsFed.Add("cat 30 5");
        //char1WordsFed.Add("Nope 20 9");
        //char1WordsFed.Add("cat 30 5");
        //char1WordsFed.Add("Nope 20 9");
        //char1WordsFed.Add("cat 30 5");
        //char1WordsFed.Add("Nope 20 9");
        //char1WordsFed.Add("cat 30 5");
        //char1WordsFed.Add("Nope 20 9");
        //char1WordsFed.Add("cat 30 5");
        //char1WordsFed.Add("Nope 20 9");

        #endregion

        #region Create wordsFed Rows
        // Add code to create rows/fill them
        rowCount = Math.Max(char1WordsFed.Count, char2WordsFed.Count);
        for(int i = 0; i < rowCount; i++)
        {
            string char1Word = "";
            string char1Score = "";
            string char2Word = "";
            string char2Score = "";
            string[] wordInfo;
            if (i < char1WordsFed.Count)
            {
                wordInfo = char1WordsFed[i].Split(' ');
                char1Word = wordInfo[0];
                char1Score = (Convert.ToInt32(wordInfo[1])*Convert.ToInt32(wordInfo[2])).ToString();
            }
            if (i < char2WordsFed.Count)
            {
                wordInfo = char2WordsFed[i].Split(' ');
                char2Word = wordInfo[0];
                char2Score = (Convert.ToInt32(wordInfo[1]) * Convert.ToInt32(wordInfo[2])).ToString();
            }
            AddRow(char1Word, char1Score, char2Word, char2Score, i);
        }
        #endregion

        #region High Score setup
        string gameMode = PlayerPrefs.GetInt("timed") == 1 ? "timed" : "casual";
        Debug.Log("Current gamemode is " + gameMode);

        // The current score is the best score
        if (ScoreManager.AddHighScore(gameMode, char1String, char2String, (int)PlayerPrefs.GetFloat("Score")))
        {
            Debug.Log("NEW HIGH SCORE: \n    " +
                ((int)PlayerPrefs.GetFloat("Score")).ToString());
            GameObject.Find("HighScoreText").GetComponent<TextMesh>().text = 
                "NEW HIGH SCORE: \n    " +
                ((int)PlayerPrefs.GetFloat("Score")).ToString();
        }
        else // Find the previous best instead
        {
            GameObject.Find("HighScoreText").GetComponent<TextMesh>().text =
                " HIGH SCORE: \n     " +
                ScoreManager.GetTopScore(char1String, char2String);
        }
        #endregion

        #region Setup Scroll Limits
        ReceiptMover.lowestPos = lowestPoint;
        ReceiptMover.highestPos = lowestPoint - screenOffset+ rowCount*rowOffset + EmptyReceiptLength;

        if (ReceiptMover.highestPos <= ReceiptMover.lowestPos)
        {
            ReceiptMover.lowestPos = lowestPoint;
            ReceiptMover.highestPos = lowestPoint;
        }

        Debug.Log("The receipt's highest point: " + ReceiptMover.highestPos);
        Debug.Log("The receipt's lowest point: " + ReceiptMover.lowestPos);
        Debug.Log("ROWCOUNT: " + rowCount);
        #endregion 

        #region Setup Receipt Bottom
        bottomInstance.transform.parent = transform;
        Component[] meshes = bottomInstance.GetComponentsInChildren<TextMesh>();
		meshes = bottomInstance.GetComponentsInChildren<TextMesh>();
        foreach(TextMesh mesh in meshes)
        {
            Debug.Log("Mesh is named: " + mesh);
            switch(mesh.name)
            {
                case "Discarded Tiles":
					mesh.text = PlayerPrefs.GetInt("Trashed Letters").ToString();
                    break;
                case "Total":
                    mesh.text = PlayerPrefs.GetFloat("Score").ToString();
                    break;
            }
        }
        firstRowPos = bottomInstance.transform.position;
        firstRowPos.y = firstRowPos.y - rowCount * rowOffset;
        bottomInstance.transform.position = firstRowPos;

        #endregion
    }

    // Given the strings to be displayed on a row, as well as the row number (starting at zero)
    // this method creates a row with that text placed accordingly to the row number
    public void AddRow(string char1Word, string char1Score, string char2Word, string char2Score, int rowIndex)
    {
        Vector3 pos;
        GameObject rowInstance = (GameObject)Instantiate(RowPrefab);
        rowInstance.transform.parent = gameObject.transform;
        pos = rowInstance.transform.position;
        pos.y -= rowOffset * rowIndex;
        rowInstance.transform.position = pos;

        Component[] rowMeshes = rowInstance.GetComponentsInChildren<TextMesh>();
        
        foreach (TextMesh mesh in rowMeshes)
        {
            switch (mesh.name)
            {
                case "char1Word":
                    mesh.text = char1Word;
                    break;
                case "char1Score":
                    mesh.text = char1Score;
                    break;
                case "char2Word":
                    mesh.text = char2Word;
                    break;
                case "char2Score":
                    mesh.text = char2Score;
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
