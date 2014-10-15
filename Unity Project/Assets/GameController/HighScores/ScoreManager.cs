using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public static class ScoreManager 
{
    public static List<int> scoreList;
    
    // Opens the save file, saves the current scoreList, then closes
    private static void SaveScores()
    {
        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + 
            "/Unity Project/Assets/HighScores/HighScoreSaveFile.hs");
        bf.Serialize(file, scoreList);
        file.Close();
    }

    // Given a score, this loads the score list, adds it to the list,
    // saves the list back to file and the returns the score list
    public static List<int> AddHighScore(int score)
    {
        int scoreListSizeLimit = GameObject.Find("GameController").GetComponent<VariableControl>().scoreListSize;

        if (scoreList == null)
            LoadScores();
       
        scoreList.Add(score);
        if (scoreList.Count > scoreListSizeLimit)
        {
            scoreList.Sort();
            scoreList.RemoveRange(scoreListSizeLimit, scoreList.Count - scoreListSizeLimit);
        }
        SaveScores();
        return scoreList;
    }

    // Reads the save file if it exists, loads the scores into scoreList
    private static void LoadScores()
    {
        if (File.Exists(Application.persistentDataPath + 
            "/Unity Project/Assets/HighScores/HighScoreSaveFile.hs"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            FileStream file = File.Open(Application.persistentDataPath + "/savedGames.gd", FileMode.Open);
            scoreList = (List<int>) bf.Deserialize(file);
            scoreList.Sort();
            file.Close();
        }
        else
        {
            scoreList = new List<int>();
        }
    }


        
}
