namespace WordSnacks
{
	class TuningList
	{
		public int numA,numB,numC,numD,numE,numF,numG,numH,numI,numJ,numK,numL,numM,numN,numO,numP,numQ,numR,numS,numT,numU,numV,numW,numX,numY,numZ;
		public int totalLetters,totalVowels;

		public TuningList()
		{
			numA = 9;
			numB = 2;
			numC = 2;
			numD = 4;
			numE = 12;
			numF = 2;
			numG = 3;
			numH = 2;
			numI = 9;
			numJ = 1;
			numK = 1;
			numL = 4;
			numM = 2;
			numN = 6;
			numO = 8;
			numP = 2;
			numQ = 1;
			numR = 6;
			numX = 1;
			numT = 6;
			numU = 4;
			numV = 2;
			numW = 2;
			numX = 1;
			numY = 2;
			numZ = 1;
			totalLetters =  numA + numB + numC + numD + numE + numF + numG + numH + numI + numJ + numK + numL + numM + numN + numO + numP + numQ + numR + numS + numT + numU + numV + numW + numX + numY + numZ;
			totalVowels = numA + numE + numI + numO + numU;
		}
	}
}