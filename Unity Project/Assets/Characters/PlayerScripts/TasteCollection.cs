using UnityEngine;
using System.Collections;
using System.Linq;

//This is a bunch of delegate functions that check if the word matches the taste,
//and then returns the appropriate multiplier
//All the multipliers are in VariableControl, so that they
//are tweakable in the inspector by the Game Designers.
public static class TasteCollection
{
    // This is a delegate. It shows what the taste methods below should look like
    // They all take a string and return a float representing the taste modifier for that word. 
    public delegate float Taste(string word);

    //makes sure we're using the same copy as everybody else
    private static VariableControl variables = GameObject.Find("VariableController").GetComponent<VariableControl>();

    // These three arrays below are used to see if words contain consonants/vowels/uncommon letters
    private static char[] consonants =
	{
		'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's',
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

    //Checks if we have any uncommon letters in the word. If we do, return the unCommonLettersMult
    //plus an additional bonus +1 multiplier for each uncommon letter beyond the first
    public static float unCommonLetters(string word)
    {
        int unCommonLetterCount = 0;
        foreach (char letter in word)
        {
            if (uncommonLetterList.Contains(letter))
                unCommonLetterCount++;
        }
        if (unCommonLetterCount > 0)
            return variables.uncommonLettersMult + (unCommonLetterCount - 1);
        else
            return 0;
    }

    //Checks if we have two or more of the same letter. If we do, return twoOrMoreSameMult
    //plus an additional bonus +1 multiplier for each additional time any letter repeats itself
    //So, for instance, effeet would get a +2, while effort would get a +0 but would match, and 
    //melee would get a +1
    public static float twoOrMoreSame(string word)
    {
        int multipleCount = 0;
        foreach (char letter in word.Distinct())
        {//We want to count the number of each distinct letter in word
            //If we didn't do Distinct, we'd find each multiple twice, which makes life difficult
            int count = word.Count(f => f == letter); //Count how many of this letter there is in the word
            if (count > 1)
            { //If there were more than one, then
                //increment multiplecount by one less than how many of that letter there were in the word
                //because if there were two of 'em, then that's one multiple.
                //If there were three, then that's two multiples, etc.
                multipleCount += (count - 1);
            }
        }
        if (multipleCount > 0)
            return variables.twoOrMoreSameMult + (multipleCount - 1);
        else
            return 0;
    }

    public static float startsAndEndsWithSame(string word)
    {
        if (word[0] == word[word.Length - 1])
            return variables.startsAndEndsWithSameMult;
        else
            return 0;
    }

    // Returns the vowel total. Y is a vowel if it doesn't begin the word
    private static int GetVowelCount(string word)
    {
        int vowelCount = 0;
        for (int i = 0; i < word.Length; i++)
        {
            if (vowels.Contains(word[i]) || (i != 0 && word[i] == 'y'))
                vowelCount++;
        }
        return vowelCount;
    }

    private static int GetConsonantCount(string word)
    {
        int consonantCount = 0;
        for (int i = 0; i < word.Length; i++)
        {
            if (consonants.Contains(word[i]))
                consonantCount++;
        }
        return consonantCount;
    }

    // If there are more consonants than vowels this returns their difference plus one. 
    // Note 'Y' is a vowel if it doens't begin the word
    public static float lotsOfConsonants(string word)
    {
        int numConsonants = GetConsonantCount(word);
        int numVowels = GetVowelCount(word);
        if (numConsonants > numVowels)
            return 1 + numConsonants - numVowels;
        else
            return 0;
    }

    public static float fourLetters(string word)
    {
        if (word.Length == 4)
            return variables.fourLettersMult;
        else
            return 0;
    }

    public static float threeLetters(string word)
    {
        if (word.Length == 3)
            return variables.threeLettersMult;
        else
            return 0;
    }

    public static float fiveOrLonger(string word)
    {
        //If the word is longer than 5 letters, give an extra +1 for each letter beyond the fifth
        int wordLength = word.Count();
        if (wordLength >= 5)
            return variables.fiveOrLongerMult + (wordLength - 5);
        else
            return 0;
    }

    public static float endsWithVowel(string word)
    {
        if (vowels.Contains(word[word.Length - 1]) || word[word.Length - 1 ] == 'y')
            return variables.endsWithVowelMult;
        return 0;
    }

    public static float startsWithVowel(string word)
    {
        if (vowels.Contains(word[0]))
            return variables.startsWithVowelMult;
        return 0;
    }

    //Returns 1 if it doesn't have two more vowels,
    //returns twoOrMoreVowelsMult + vowelCount - 2 if it does
    public static float twoOrMoreVowels(string word)
    {
        int vowelCount = GetVowelCount(word);
        //if we had two or more vowels, we've matched this taste. Give an extra +1 for each beyond the 2nd, if applicable
        if (vowelCount >= 2)
            return variables.twoOrMoreVowelsMult + (vowelCount - 2);
        else
            return 0;
    }

    public static float equalVowelsAndConsonants(string word)
    {
        int vowelCount = GetVowelCount(word);
        int consonantCount = GetConsonantCount(word);
     
        if (vowelCount == consonantCount)
            return variables.equalVowelsAndConsonantsMult;
        else
            return 0;
    }

    public static float trashCollection(string word)
    {
        //Debug.Log ("Collecting trash!");
        return variables.trashCollectionMult;
    }


}

