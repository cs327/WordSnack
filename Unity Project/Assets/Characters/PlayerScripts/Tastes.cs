using UnityEngine;
using System.Collections;




public static class TasteCollection
{
	public delegate int Taste(string word);


	public static int WordsLongerThan5(string word)
	{
		return (word.Length <= 5)? 0 : word.Length - 5;
	}
	public static int ThreeLetterWords(string word)
	{
				if (word.Length == 3)
						return 1;
				else
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