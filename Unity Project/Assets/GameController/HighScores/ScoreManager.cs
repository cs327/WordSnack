using System.Collections.Generic;
using System.Collections.Specialized;
using System.Security.Cryptography.X509Certificates;
using UnityEngine;
using System.Collections;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using System.Linq;

public static class ScoreManager 
{
    // Stores a description of a high score and a list of scores that fit the description. 
    // i.e "Timed Meghan Stella" might return [323, 200, 100], those being the top three scores by
    // Meghan and Stella on timed mode
    private static Dictionary<string, List<int>> scoreList = new Dictionary<string, List<int>>();
    public static bool NeverShowInstructions = false;
    
    // Opens the save file, saves the current scoreList, then closes
    private static void SaveScores()
    {
        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + "/HighScoreSaves.gd");
        bf.Serialize(file, scoreList);
        file.Close();
    }

    public static void ClearHighScores()
    {
        if (File.Exists(Application.persistentDataPath + "/HighScoreSaves.gd"))
        {
            File.Delete(Application.persistentDataPath + "/HighScoreSaves.gd");
        }
        scoreList = new Dictionary<string, List<int>>();
    }

    // Given two characters, returns the sorted score list or null if they don't exist
    public static List<int> GetAllCharacterScore(string char1, string char2)
    {
        string gameMode = PlayerPrefs.GetInt("timed") == 1 ? "timed" : "casual";
        string charKey = gameMode + " " + GetCharacterHash(char1, char2);

        if (scoreList.ContainsKey(charKey))
            return scoreList[charKey];
        else
            return new List<int>();
    }

    // Saves the current value of "Never show instructions?" in the file UserSettings.gd
    private static void SaveNeverShowSetting(bool setting)
    {
        Debug.Log("Saving 'never show? = " + setting + "'");
        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + "/UserSettings.gd");
        bf.Serialize(file, setting);
        file.Close();
    }

    // Given two characters, this returns their highest score for the
    // game mode currently set
    public static string GetTopScore(string char1, string char2)
    {
        LoadScores();
        string gameMode = PlayerPrefs.GetInt("timed") == 1 ? "timed" : "casual";
        string charKey = gameMode + " " + GetCharacterHash(char1, char2);
        if (!scoreList.ContainsKey(charKey))
        {
            Debug.Log("ERROR: No existing score");
            return "";
        }
        else
        {
            return GetAllCharacterScore(char1, char2)[0].ToString();
        }
    }

    // Given two character names returns a unique value representing their set
    private static string GetCharacterHash(string char1, string char2)
    {
        if (char1.CompareTo(char2) < 0)
            return char1 + " " + char2 + " ";
        if (char1.CompareTo(char2) > 0)
            return char2 + " " + char1 + " ";
        else
        {
            Debug.Log(char1 + " hashed to " + char2);
            return char1 + " " + char2 + " ";
        }
    }

    // Given a score and the players used to get the score this method
    // adds it to a lookup table and returns true if it's a high score for those characters
    public static bool AddHighScore(string gameMode, string char1, string char2, int score)
    {
        
        //int scoreListSizeLimit = GameObject.Find("GameController").GetComponent<VariableControl>().scoreListSize;
        int scoreListSizeLimit = 10;

        LoadScores();
   
        // Used to lookup scores given a key (in this case made of the character names in sorted order)
        string charKey = gameMode + " " + GetCharacterHash(char1, char2);

        if (!scoreList.ContainsKey(charKey))
            scoreList.Add(charKey, new List<int>());
        if (!scoreList[charKey].Contains(score))
            scoreList[charKey].Add(score);
        Debug.Log("Saved to file: " + charKey + score);
        //if (scoreList[charKey].Count > scoreListSizeLimit)
        //{                       
        //    scoreList[charKey].RemoveRange(scoreListSizeLimit, scoreList[charKey].Count - scoreListSizeLimit);
        //}

        List<int> temp = scoreList[charKey];
        scoreList[charKey] = temp.OrderByDescending(x => x).ToList();
        SaveScores();

        // If the current score is the highest score, return true
        return scoreList[charKey][0] == score? true: false;
    }

    // Reads the save file if it exists, loads the scores into scoreList
    private static void LoadScores()
    {
        if (File.Exists(Application.persistentDataPath + "/HighScoreSaves.gd"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            FileStream file = File.Open(Application.persistentDataPath + "/HighScoreSaves.gd", FileMode.Open);
            scoreList = (Dictionary<string, List<int>>) bf.Deserialize(file);            
            file.Close();
        }
        else
        {
            scoreList = new Dictionary<string, List<int>>();
        }
    }

    public static string ToString()
    {
        LoadScores();
        string str = "";
        foreach(var key in scoreList.Keys)
        {
            str += key + "have scores of ";
            foreach(int i in scoreList[key])
            {
                str += i + ", ";
            }
            str += "\n";
        }
        return str;
    }


        
}
