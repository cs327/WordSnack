using System;

namespace WordSnacks
{
	class RandomLetters
	{

		static string returnLetters(int n)
		{
			Random r = new Random();
			string letters = randomVowel(r).ToString();
			for(int i = 1; i < n; i++)
			{
				letters += randomLetter(r);
			}
			return letters;
		}

		static char randomVowel(Random r)
		{	
			int currentPos = 0;
			TuningList tl = new TuningList();
			int letter = r.Next(0,tl.totalVowels);

			// System.Console.WriteLine(tl.totalVowels + " " + letter);

			if(letter < tl.numE)
				return 'e';
			currentPos += tl.numE;
			if(letter < (currentPos + tl.numA))
				return 'a';
			currentPos += tl.numA;
			if(letter < (currentPos + tl.numI))
				return 'i';
			currentPos += tl.numI;
			if(letter < (currentPos + tl.numO))
				return 'o';
			currentPos += tl.numO;
			if(letter < (currentPos + tl.numU))
				return 'u';
			return '.';
		}

		static char randomLetter(Random r)
		{
			int currentPos = 0;
			TuningList tl = new TuningList();
			int letter = r.Next(0,tl.totalLetters);

			// System.Console.WriteLine(tl.totalLetters + " " + letter);

			if(letter < tl.numE)
				return 'e';
			currentPos += tl.numE;
			if(letter < (currentPos + tl.numA))
				return 'a';
			currentPos += tl.numA;
			if(letter < (currentPos + tl.numI))
				return 'i';
			currentPos += tl.numI;
			if(letter < (currentPos + tl.numO))
				return 'o';
			currentPos += tl.numO;
			if(letter < (currentPos + tl.numN))
				return 'n';
			currentPos += tl.numN;
			if(letter < (currentPos + tl.numR))
				return 'r';
			currentPos += tl.numR;
			if(letter < (currentPos + tl.numT))
				return 't';
			currentPos += tl.numT;
			if(letter < (currentPos + tl.numL))
				return 'l';
			currentPos += tl.numL;
			if(letter < (currentPos + tl.numS))
				return 's';
			currentPos += tl.numS;
			if(letter < (currentPos + tl.numU))
				return 'u';
			currentPos += tl.numU;
			if(letter < (currentPos + tl.numD))
				return 'd';
			currentPos += tl.numD;
			if(letter < (currentPos + tl.numG))
				return 'g';
			currentPos += tl.numG;
			if(letter < (currentPos + tl.numB))
				return 'b';
			currentPos += tl.numB;
			if(letter < (currentPos + tl.numC))
				return 'c';
			currentPos += tl.numC;
			if(letter < (currentPos + tl.numM))
				return 'm';
			currentPos += tl.numM;
			if(letter < (currentPos + tl.numP))
				return 'p';
			currentPos += tl.numP;
			if(letter < (currentPos + tl.numF))
				return 'f';
			currentPos += tl.numF;
			if(letter < (currentPos + tl.numH))
				return 'h';
			currentPos += tl.numH;
			if(letter < (currentPos + tl.numV))
				return 'v';
			currentPos += tl.numV;
			if(letter < (currentPos + tl.numW))
				return 'w';
			currentPos += tl.numW;
			if(letter < (currentPos + tl.numY))
				return 'y';
			currentPos += tl.numY;
			if(letter < (currentPos + tl.numK))
				return 'k';
			currentPos += tl.numK;
			if(letter < (currentPos + tl.numJ))
				return 'j';
			currentPos += tl.numJ;
			if(letter < (currentPos + tl.numX))
				return 'x';
			currentPos += tl.numX;
			if(letter < (currentPos + tl.numQ))
				return 'q';
			currentPos += tl.numQ;
			if(letter < (currentPos + tl.numZ))
				return 'z';
			return '.';
		}
	
		// static void Main(string[] args)
		// {			
		// 	System.Console.WriteLine(returnLetters(100));
		// }
	}
}