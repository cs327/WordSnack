using UnityEngine;
using System.Collections;
using System.Linq;
//This is a bunch of delegate functions that check if the word matches the taste,
//and then returns the appropriate multiplier
//All the multipliers are in VariableControl, so that they
//are tweakable in the inspector by the Game Designers.
public static class TasteCollection
{
    public delegate float Taste(string word);

    //makes sure we're using the same copy as everybody else
    private static VariableControl variables = GameObject.Find("GameController").GetComponent<VariableControl>();

    private static char[] consonants =
	{
		'a', 'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's',
		't', 'v', 'w', 'x', 'y', 'z',
	};
    private static char[] vowels =
	{
		'a','e','i','o','u',
	};

    private static char[] uncommonLetterList =
	{
		'f', 'h', 'v', 'w', 'y', 'k', 'j', 'x', 'q', 'z',
	};

    public static float unCommonLetters(string word)
    {
		float scoreMultiplier = 1;
        foreach (char letter in word) //give a multiplier for EACH uncommon letter
        {
            if (uncommonLetterList.Contains(letter))
                scoreMultiplier *= variables.uncommonLettersMult;
        }
        return scoreMultiplier;
    }

    /*
     * This preference no longer exists in the GDD
     * public static float startsWithE(string word)
    {
        if (word [0] == 'e')
            return variables.startsWithEMult;
        else
            return 1;
    }
    */

    public static float twoOrMoreSame(string word)
    {
        var distinct = word.Distinct(); //the number of distinct letters in the word
		int difference = word.Length - distinct.Count();
            return variables.twoOrMoreSameMult * (difference +1); //give an extra multiplier for each similar letter
    }
    public static float startsAndEndsWithSame(string word)
    {
        if (word[0] == word[word.Length - 1])
            return variables.startsAndEndsWithSameMult;
        else
            return 1;
    }

    public static float fourLetters(string word)
    {
        if (word.Length == 4)
            return variables.fourLettersMult;
        else
            return 1;
    }

    public static float threeLetters(string word)
    {
        if (word.Length == 3)
            return variables.threeLettersMult;
        else
            return 1;
    }

    public static float fiveOrLonger(string word)
    {
        return (word.Length >= 5) ?
            variables.fiveOrLongerMult :
            1;
    }

    public static float endsWithVowel(string word)
    {
        if (vowels.Contains(word[word.Length - 1]))
            return variables.endsWithVowelMult;
        return 1;
    }

    public static float startsWithVowel(string word)
    {
        if (vowels.Contains(word[0]))
            return variables.startsWithVowelMult;
        return 1;
    }
    // Returns 1 if the word has at least 2 vowels
    // Otherwise returns 0
    public static float twoOrMoreVowels(string word)
    {
        int vowelCount = 0;
        foreach (char letter in word)
        {
            if (vowels.Contains(letter))
                vowelCount++;
        }
		if (vowelCount <= 1)
						return 0; //If it doesn't have two or more vowels, No!
		else
        	return variables.twoOrMoreVowelsMult*(vowelCount-1); //If it does, give an extra multiplier for each beyond the second
    }

    public static float noPreference(string word)
    {
        return variables.noPreferenceMult;
    }
    public static float trashCollection(string word)
    {
        //Debug.Log ("Collecting trash!");
        return variables.trashCollectionMult;
    }
}

