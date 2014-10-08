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
    
    public static void SaveScores()
    {
        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + 
            "/Unity Project/Assets/HighScores/HighScoreSaveFile.hs");
        bf.Serialize(file, scoreList);
        file.Close();
    }

    public static void AddHighScore(int score)
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
    }

    public static void LoadScores()
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
