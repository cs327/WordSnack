﻿using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class ScoreManager
{
    void Awake()
    {
        // Forces a different code path in the BinaryFormatter that doesn't rely on run-time code generation (which would break on iOS).
        //Environment.SetEnvironmentVariable ("MONO_REFLECTION_SERIALIZER", "yes");
        //Environment.SetEnvironmentVariable("MONO_REFLECTION_SERIALIZER", "yes");
    }
    // Stores a description of a high score and a list of scores that fit the description. 
    // i.e "Timed Meghan Stella" might return [323, 200, 100], those being the top three scores by
    // Meghan and Stella on timed mode
    private static Dictionary<string, List<int>> scoreList = new Dictionary<string, List<int>>();
    public static bool NeverShowInstructions = false;

    // Opens the save file, saves the current scoreList, then closes
    private static void SaveScores()
    {
        string highScoreString = "";
        Debug.Log("ScoreList count: " + scoreList.Count);
        foreach (var key in scoreList)
        {
            highScoreString += key.Key.ToString() + "\n";
            string vals = "";
            foreach (int val in key.Value)
                vals += val + " ";
            highScoreString += vals + "\n";
            Debug.Log(key.Key + " is the key");
            Debug.Log(vals + " are the values");
        }

        PlayerPrefs.SetString("HighScores", highScoreString);
        Debug.Log("Saving pref set to: " + highScoreString);
    }

    // Reads the save file if it exists, loads the scores into scoreList
    private static void LoadScores()
    {
        
        string dataString = PlayerPrefs.GetString("HighScores");
        if (dataString == "")
            Debug.Log("No saved scores");

        //Debug.Log("Loading highscore string is : " + dataString);
        string[] scoreString = dataString.Split('\n');
        if (scoreString.Length%2 == 0)
        {
            for (int i = 0; i < scoreString.Length - 1; i += 2)
            {
                string key = scoreString[i];
                string[] scoreValues = scoreString[i + 1].Split(' ');
                List<int> scores = new List<int>();
                foreach (string s in scoreValues)
                    scores.Add(Convert.ToInt32(s));
                scoreList.Add(key, scores);
                Debug.Log("Loading key = " + key);
                Debug.Log("Loading vals = " + scoreValues.ToString());
            }
        }
        
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
        temp.Sort(delegate(int s1, int s2)
        {
            return s2.CompareTo(s1);
        });
        scoreList[charKey] = temp;
        SaveScores();

        // If the current score is the highest score, return true
        return scoreList[charKey][0] == score ? true : false;
    }

    // Saves the current value of "Never show instructions?" in the file UserSettings.gd
    private static void SaveNeverShowSetting(bool setting)
    {
        //Debug.Log("Saving 'never show? = " + setting + "'");
        //BinaryFormatter bf = new BinaryFormatter();
        //FileStream file = File.Create(Application.persistentDataPath + "/UserSettings.gd");
        //bf.Serialize(file, setting);
        //file.Close();
    }



    public static string ToString()
    {
        LoadScores();
        string str = "";
        foreach (var key in scoreList.Keys)
        {
            str += key + "have scores of ";
            foreach (int i in scoreList[key])
            {
                str += i + ", ";
            }
            str += "\n";
        }
        return str;
    }


    public static T StrToObject<T>(string _data) where T : class
    {
        if (!String.IsNullOrEmpty(_data))
        {
            BinaryFormatter _bin = new BinaryFormatter();
            try
            {
                MemoryStream _mem = new MemoryStream(Convert.FromBase64String(_data));

                T _obj = _bin.Deserialize(_mem) as T;

                return _obj;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }
        else
        {
            throw new Exception("_data is null or empty");
        }
    }
    public static string ObjectToStr<T>(T _saveMe)
    {
        BinaryFormatter _bin = new BinaryFormatter();
        MemoryStream _mem = new MemoryStream();
        _bin.Serialize(_mem, _saveMe);

        return Convert.ToBase64String(
            _mem.GetBuffer()
        );
    }



}