using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
//acceses high scores from player prefs
public class ScoreManager
{
	//array of strings containing all the different permutations under which the game can be played
	public static string[] scoreLookUps = new string[20] {"Fred Kelvin timed", "Fred Kelvin casual", "Fred Spike timed", "Fred Spike casual", "Fred Stella timed", "Fred Stella casual",
		"Fred Meghan timed", "Fred Meghan casual", "Kelvin Spike timed", "Kelvin Spike casual", "Kelvin Stella timed", "Kelvin Stella casual", "Kelvin Meghan timed", "Kelvin Meghan casual",
		"Spike Meghan timed", "Spike Meghan casual", "Spike Stella timed", "Spike Stella casual", "Stella Meghan timed", "Stella Meghan casual"};

	//saves whether or not instructions have been read
	public static bool NeverShowInstructions = false;

	//checks whether there has been a new high score, and sets the new high score if there has 
	public static bool CheckNewHighScore (string char1, string char2, string mode, float score) { 
		string lookup = PlayerPrefsString(char1, char2, mode);
		if (PlayerPrefs.GetFloat(lookup) == null || score > PlayerPrefs.GetFloat(lookup)){
			PlayerPrefs.SetFloat(lookup, score);
			PlayerPrefs.Save();
			Debug.Log("new high score");
			return true;
		} else {
			return false;
		}
	}

	//fetches the playerprefs score for the current combination of characters and game mode
	public static float GetPlayerPrefsScore (string char1, string char2, string mode) {
		string lookup = PlayerPrefsString(char1, char2, mode);
		if (PlayerPrefs.GetFloat(lookup) != null){
			return PlayerPrefs.GetFloat(lookup);
		} else {
			PlayerPrefs.SetFloat(lookup, 0);
			PlayerPrefs.Save();
			return PlayerPrefs.GetFloat(lookup);
		}
	}

	//detecs which permutation of characters and game modes is being used by looping through the string array
	public static string PlayerPrefsString (string char1, string char2, string mode) {
		foreach (string lookup in scoreLookUps) {
			if (lookup.Contains(char1) && lookup.Contains(char2) && lookup.Contains(mode)) {
				return lookup;
			}
		}
		return "not found";
	}
}