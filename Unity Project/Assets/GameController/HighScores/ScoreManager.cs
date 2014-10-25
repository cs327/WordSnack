using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using System;
using System.Linq;

public static class ScoreManager 
{
    public static List<string> scoreList;
    
    // Opens the save file, saves the current scoreList, then closes
    private static void SaveScores()
    {
        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + 
            "/HighScores.gd");
        bf.Serialize(file, scoreList);
        file.Close();
    }

    public static void ClearScores()
    {
        scoreList = new List<string>();
        SaveScores();
    }

    // Give it two characters (i.e "Spike" and "Fred") and it will return
    // a sorted list of high scores
    public static List<string> GetScoresForSpecificCharacters(string char1, string char2)
    {
        string[] characters = {char1, char2};
        LoadScores();
        Debug.Log("before has " + scoreList.Count + " entries");

        // Filter the list such that each score is only for the two given characters
        //var tempList = scoreList.Where<string>((x) => characters.Contains<string>(x.Split(' ')[0]) && characters.Contains<string>(x.Split()[1]));

        List<string> evaluatedList = new List<String>();
        foreach(string s in scoreList)
        {
            string[] scoreInfo = s.Split(' ');
            if (characters.Contains<string>(scoreInfo[0]) && 
                characters.Contains<string>(scoreInfo[1]))
                evaluatedList.Add(s);
        }
        Debug.Log("Eval list: " + evaluatedList.Count);
        return evaluatedList;
    }

    // Given a score, this loads the score list, adds it to the list,
    // saves the list back to file and the returns the score list
    public static List<string> AddHighScore(string char1, string char2, int score)
    {
        
        //int scoreListSizeLimit = GameObject.Find("GameController").GetComponent<VariableControl>().scoreListSize;
        int scoreListSizeLimit = 10;
        LoadScores();

        string newScore = char1 + " " + char2 + " " + score.ToString();
        scoreList.Add(newScore);
        //if (scoreList.Count > scoreListSizeLimit)
        //{            
        //    scoreList.RemoveRange(scoreListSizeLimit, scoreList.Count - scoreListSizeLimit);
        //}
        SaveScores();
        return scoreList;
    }

    private static void sortByScore(List<string> scores)
    {
        scores.Sort((x, y) => (Convert.ToInt32(x.Split(' ')[2]) >= Convert.ToInt32(y.Split(' ')[2])) ? 1 : -1);    
    }

    // Reads the save file if it exists, loads the scores into scoreList
    private static void LoadScores()
    {
        if (File.Exists(Application.persistentDataPath +
            "HighScores.gd"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            FileStream file = File.Open(Application.persistentDataPath + "/HighScores.gd", FileMode.Open);
            scoreList = (List<string>) bf.Deserialize(file);
            //sortByScore(scoreList);
            file.Close();
        }
        else
        {
            scoreList = new List<string>();
        }
    }


        
}
