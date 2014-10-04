using UnityEngine;
using System.Collections;
using System.Linq;



public static class TasteCollection
{
	public delegate float Taste(string word);
	
	public static float UnCommonMult;
	public static float StartsWithEMult;
	public static float TwoOrMoreSameMult;
	public static float StartsAndEndsWithSameMult;
	public static float ThreeLetterWordsMult;
	public static float FourLetterWordsMult;
	public static float FiveLetterWordsMult;
	public static float WordsLongerThanFiveMult;
	public static float WordsEndingInVowelMult;
	public static float WordsWith2OrMoreVowelsMult;
	
	private static char[] consonants =
	{
		'a', 'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's',
		't', 'v', 'w', 'x', 'y', 'z',
	};
	
	private static char[] vowels =
	{
		'a','e','i','o','u',
	};
	
	private static char[] uncommonLetters =
	{
		'f', 'h', 'v', 'w', 'y', 'k', 'j', 'x', 'q', 'z',
	};
	
	public static float UncommonLetters(string word)
	{
		foreach (char letter in word) { 
			if (uncommonLetters.Contains (letter))
				return 1*UnCommonMult;		
		}
		return 0;
	}
	
	public static float StartsWithE(string word)
	{
		if (word [0] == 'e')
			return 1;
		else
			return 0;
	}
	
	public static float TwoOrMoreSame(string word)
	{
		var distinct = word.Distinct ();				
		if (distinct.Count() == word.Length)
			return 0;
		else
			return 1;
	}
	public static float StartsAndEndsWithSame(string word)
	{
		if (word [0] == word [word.Length - 1])
			return 2;
		else
			return 1;
	}
	
	
	
	public static float ThreeLetterWords(string word)
	{
		if (word.Length == 3)
			return 1;
		else
			return 0;
	}
	public static float FourLetterWords(string word)
	{
		if (word.Length == 4)
			return 1;
		else
			return 0;
	}
	public static float FiveLetterWords(string word)
	{
		if (word.Length == 5)
			return 1;
		else
			return 0;
	}
	
	public static float WordsLongerThan5(string word)
	{
		return (word.Length <= 5) ? 0 : 1;
	}
	
	public static float WordsEndingInVowel(string word)
	{
		if (vowels.Contains(word[word.Length - 1]))
			return 1;
		return 0;
	}
	
	// Returns 1 if the word has at least 2 vowels
	// Otherwise returns 0
	public static float WordsWith2OrMoreVowels(string word)
	{
		int vowelCount = 0;
		foreach (char letter in word)
		{
			if (vowels.Contains(letter))
				vowelCount++;
			if (vowelCount == 2)
			{
				return 1;
			}
		}
		return 0;
	}
}

/*
 * Very vague idea of approximately how to use this - Josiah
 * 
 * 			List<TasteCollection.Taste> myTastes = new List<TasteCollection.Taste>(); * 
			myTastes.Add(TasteCollection.WordsLongerThan5); //Any valid taste

			int answer = myTastes[0]("Words");


			or Do this:
			
			List<TasteCollection.Taste> myTastes = new List<TasteCollection.Taste>(); * 
			myTastes.Add(TasteCollection.WordsLongerThan5); //Any valid taste
			Character character = ....
			Taste taste = TasteCollection.ThreeLetterWords;
			character.AddTaste(taste);
			These are just examples for clarity - the character class's "Likes" function does this
			for you - just call it on a character
			*/
