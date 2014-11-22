using System.Configuration;
using System.Threading;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class ReceiptGUI : MonoBehaviour
{
    #region Variables
    public float RowOffset;
    // The length of the receipt in Unity game units (without any rows)
    public float EmptyReceiptLength;
    // The lowest y coordinate the receipt should scroll to
    public float LowestPoint;
    // The distance between the top and bottom edges that the receipt is clamped to
    public float ScreenOffset;
    public GameObject RowPrefab;
    public GameObject BottomInstance;
    // The coordinates of the first row
    public Vector3 FirstRowPos;
    public TextMesh Character1Name;
    public TextMesh Character2Name;
	public TextMesh ScoreText; 
	public TextMesh TilesDiscardedText;

    int selectedCharacter1;
    int selectedCharacter2;
    public List<string> char1WordsFed;
    public List<string> char2WordsFed;
    // Stores the total number of rows, used to position the rows.
	public int rowCount;
    #endregion

    // Use this for initialization
    void Start()
    {
        #region Receipt Setup
        ScoreText.text = ((int)PlayerPrefs.GetFloat("Score")).ToString();
		TilesDiscardedText.text = PlayerPrefs.GetInt("Trashed Letters").ToString();

        //#region Get Receipt Info
        rowCount = 0;
        FirstRowPos = BottomInstance.transform.position;
        Debug.Log("First row pos: " + FirstRowPos.ToString());
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
        

        Character1Name.text = char1String;
        Character2Name.text = char2String;
        
		if (GameObject.Find("WordsFed") != null) {
			char1WordsFed = GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().character1Words;
			char2WordsFed = GameObject.Find("WordsFed").GetComponent<StoreWordsFed>().character2Words;
        }

        #region Add to WordsFed Manually
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
        #endregion

        #region Create wordsFed Rows
        // Add code to create rows/fill them
        int maxCount = Math.Max(char1WordsFed.Count, char2WordsFed.Count);
        for(int i = 0; i < maxCount; i++)
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
            AddRow(char1Word, char1Score, char2Word, char2Score);
        }
        #endregion

        #region High Score Sup
        string gameMode = PlayerPrefs.GetInt("timed") == 1 ? "timed" : "casual";
        Debug.Log("Current gamemode is " + gameMode);

        // If the current score is the best score
		if (ScoreManager.AddHighScore(char1String, char2String, gameMode, (int)PlayerPrefs.GetFloat("Score")))
        {
            Debug.Log("NEW HIGH SCORE: \n    " +
                ((int)PlayerPrefs.GetFloat("Score")).ToString());
			GameObject.Find("HighScoreText").GetComponent<TextMesh>().color = new Vector4(0.6F, 0, 0, 1);
            GameObject.Find("HighScoreText").GetComponent<TextMesh>().text = 
                "NEW HIGH SCORE: \n    " +
				(int)PlayerPrefs.GetFloat("Score");
        }
        else // Find the previous best instead
		{
		    GameObject.Find("HighScoreText").GetComponent<TextMesh>().text =
		        " HIGH SCORE: \n     " +
		        ScoreManager.GetTopScore(char1String, char2String);
		}

        if (rowCount == 0)
        {
            AddRow("", "", "", "");
            AddRow("", "", "", "");
            AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");            
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
            //AddRow("", "", "", "");
        }

        #endregion

        #region Setup Scroll Limits
        ReceiptMover.lowestPos = LowestPoint;
        ReceiptMover.highestPos = LowestPoint - ScreenOffset+ rowCount*RowOffset + EmptyReceiptLength;

        if (ReceiptMover.highestPos <= ReceiptMover.lowestPos)
        {
            ReceiptMover.lowestPos = LowestPoint;
            ReceiptMover.highestPos = LowestPoint;
        }

        Debug.Log("The receipt's highest point: " + ReceiptMover.highestPos);
        Debug.Log("The receipt's lowest point: " + ReceiptMover.lowestPos);
        Debug.Log("ROWCOUNT: " + rowCount);
        #endregion 

        #region Setup bottom
        TilesDiscardedText.text = "0";

        FirstRowPos.y = FirstRowPos.y - rowCount * RowOffset;
        Vector3 pos = BottomInstance.transform.position;
        pos.y -= rowCount*RowOffset;
        BottomInstance.transform.position = pos;
        BottomInstance.transform.parent = gameObject.transform;
        #endregion
		
    }

    // Given the strings to be displayed on a row, as well as the row number (starting at zero)
    // this method creates a row with that text placed accordingly to the row number
    public void AddRow(string char1Word, string char1Score, string char2Word, string char2Score)
    {
        int rowIndex = rowCount;
        rowCount++;
        Vector3 pos;
        // Create a row
        GameObject rowInstance = (GameObject)Instantiate(RowPrefab);
        rowInstance.transform.parent = gameObject.transform;

        // Move the row depending on how far down it is
        pos = rowInstance.transform.position;
        pos.y -= RowOffset * rowIndex;
        rowInstance.transform.position = pos;

        // Set the text fields as given
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


}
