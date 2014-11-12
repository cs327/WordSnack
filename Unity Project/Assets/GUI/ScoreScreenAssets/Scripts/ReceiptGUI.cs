using System.Configuration;
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
    public float highestOffset;
    // A constant used to adjust how far up the receipt should scroll
    public float lowestOffset;
    public GameObject lightRowPrefab;
    public GameObject darkRowPrefab;
    public GameObject bottomInstance;
    public TextMesh Character1Name;
    public TextMesh Character2Name;
    public Texture2D HighScoreReceiptTexture;

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

        #endregion

        // Add code to create rows/fill them
		rowCount = Math.Max(char1WordsFed.Count, char2WordsFed.Count);

        #region Create wordsFed Rows
        Vector3 pos;
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
                char1Score = wordInfo[1] + "x" + wordInfo[2];
            }
            if (i < char2WordsFed.Count)
            {
                wordInfo = char2WordsFed[i].Split(' ');
                char2Word = wordInfo[0];
                char2Score = wordInfo[1] + "x" + wordInfo[2];
            }
            AddRow(char1Word, char1Score, char2Word, char2Score, i);
        }
        #endregion

        #region High Score setup
        string gameMode = PlayerPrefs.GetInt("timed") == 1 ? "timed" : "casual";
        Debug.Log("Current gamemode is " + gameMode);
        if (ScoreManager.AddHighScore(gameMode, char1String, char2String, (int)PlayerPrefs.GetFloat("Score")))
        {
            renderer.material.mainTexture = HighScoreReceiptTexture;
        }
        #endregion

        // Add code for bottom of receipt
        bottomInstance.transform.parent = gameObject.transform;
        pos = bottomInstance.transform.position;

        ReceiptMover.lowestPos = lowestOffset;
        ReceiptMover.highestPos = lowestOffset - rowCount*rowOffset + highestOffset;

        if (ReceiptMover.highestPos <= ReceiptMover.lowestPos)
        {
            ReceiptMover.lowestPos = lowestOffset;
            ReceiptMover.highestPos = lowestOffset;
        }
        
        //Debug.Log("ALERT");
        //Debug.Log("Setting endpos - " + ReceiptMover.endPos);
        //Debug.Log("Setting startpos - " + ReceiptMover.lowestPos);
        Debug.Log("ROWCOUNT: " + rowCount);

        #region Scrapcode

        //        pos.y += rowOffset * rowCount;
//		pos.y += rowOffset * rowCount;

//		Component[] meshes;
//		for (int i = 0; i < gameObject.transform.childCount; i++) {
//			if (gameObject.transform.GetChild(i).GetComponent<TextMesh>() != null) {
//				meshes
//			}
//		}
//        Component[] meshes = bottomInstance.GetComponentsInChildren<TextMesh>();
//		meshes = bottomInstance.GetComponentsInChildren<TextMesh>();
//        foreach(TextMesh mesh in meshes)
//        {
//            switch(mesh.name)
//            {
//                case "Discarded Letters Mesh":
//					if (GameObject.Find("WordsFed") != null) {
//						mesh.text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().trashLetterNum.ToString();
//					} else {
//						mesh.text = "0";
//					}
////                    mesh.text = PlayerPrefs.GetInt("Trashed Letters").ToString();
//                    break;
//                case "Discarded Points Mesh":
//					if (GameObject.Find("WordsFed") != null) {
//						mesh.text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().trashedLetterScore.ToString ();
//					} else {
//						mesh.text = "0";
//					}
////                    mesh.text = PlayerPrefs.GetInt("Trashed Letter Score").ToString();
//                    break;
//                case "Word Score Mesh":
//					if (GameObject.Find("WordsFed") != null) {
//						mesh.text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().rawScore.ToString();
//					} else {
//						mesh.text = "0";
//					}
////                    mesh.text = PlayerPrefs.GetInt("Total Letter Score").ToString();
//                    break;
//                case "Multiplier Bonus Mesh":
//					if (GameObject.Find("WordsFed") != null) {
//						mesh.text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().multiScore.ToString();
//					} else {
//						mesh.text = "0";
//					}
////                    mesh.text = PlayerPrefs.GetInt("Total Multiplier Score").ToString();
//                    break;
//                case "Total Mesh":
//					if (GameObject.Find("WordsFed") != null) {
//						mesh.text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().score.ToString();
//					} else {
//						mesh.text = "0";
//					}
////                    mesh.text = PlayerPrefs.GetFloat("Score").ToString();
//                    break;
//            }
//        }

        #endregion


    }

    // Given the strings to be displayed on a row, as well as the row number (starting at zero)
    // this method creates a row with that text placed accordingly to the row number
    public void AddRow(string char1Word, string char1Score, string char2Word, string char2Score, int rowIndex)
    {
        Vector3 pos;
        GameObject rowInstance;
        if (rowIndex % 2 == 0)
            rowInstance = (GameObject)Instantiate(darkRowPrefab);
        else
            rowInstance = (GameObject)Instantiate(lightRowPrefab);
        rowInstance.transform.parent = gameObject.transform;
        pos = rowInstance.transform.position;
        pos.y += rowOffset * rowIndex;
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
		bottomInstance.transform.position = gameObject.transform.position;
		bottomInstance.transform.position += (rowOffset * (rowCount + 8.5F) * Vector3.up);
    }

    //Method to display words fed
    void DisplayWordsFed()
    {


    }
}
