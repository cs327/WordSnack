using UnityEngine;
using System.Collections;

public class randomLetters : MonoBehaviour {
	public int numA,numB,numC,numD,numE,numF,numG,numH,numI,numJ,numK,numL,numM,numN,numO,numP,numQ,numR,numS,numT,numU,numV,numW,numX,numY,numZ;
	public int totalLetters,totalVowels;
	public GameObject [] letterObjs;
	public GameObject spawnMe;
	public bool initialize = true;
	public GameObject [] lettersOnBoard;
	public float timer = 0f;
	public int boardSize = 7;

	void Awake(){
		print ("im awake");
	}

	// Use this for initialization
	void Start () {
		print ("beginning of start function");
		//initialize the lettersOnBoard array as the size of the board, as gameobjects
		lettersOnBoard = new GameObject[boardSize];
;
	}
	
	// Update is called once per frame
	void Update () {
		//keep time
		timer += Time.deltaTime;
		print (timer.ToString());
		//after one second, if the game has not initialized, initialize the first board
		//THIS SHOULD PROBABLY BE TURNED INTO ITS OWN FUNCTION called InitializeBoard();
		if(initialize && timer > 1){
		//flip initialize off, because after this it will have been done and no longer needed
			initialize = false;
			//run Tuning list, which establishes letter frequency
			TuningList();
			//create a String of 10 random letters generated using returnLetters, then print them
			string myLetters = returnLetters(boardSize);
			print (myLetters + initialize.ToString());
			//run CreateLetters to turn the random string (myLetters) into GameObjects on screen.
			CreateLetters(myLetters);
			print ("created letters, should be done NOW");
		}
	}

	string returnLetters(int n)
	{
		//Random r = new Random();
		//for the number of letters asked for, return a string with that many random letters in it
		string letters = randomLetter().ToString();
		for(int i = 1; i < n; i++)
		{
			letters += randomLetter();
		}
		return letters;
	}

//	char randomVowel(int r)
//	{	
//		int currentPos = 0;
//		//TuningList tl = new TuningList();
//		int letter = Mathf.RoundToInt(Random.Range(0,totalVowels));
//		
//		// System.Console.WriteLine(totalVowels + " " + letter);
//
//		if(letter < numE)
//			return 'e';
//		currentPos += numE;
//		if(letter < (currentPos + numA))
//			return 'a';
//		currentPos += numA;
//		if(letter < (currentPos + numI))
//			return 'i';
//		currentPos += numI;
//		if(letter < (currentPos + numO))
//			return 'o';
//		currentPos += numO;
//		if(letter < (currentPos + numU))
//			return 'u';
//		return '.';
//	}
	
	char randomLetter()
	{
		int currentPos = 0;
//		TuningList tl = new TuningList();
		int letter = Random.Range(0,totalLetters);
		
		// System.Console.WriteLine(totalLetters + " " + letter);
		
		if(letter < numE)
			return 'e';
		currentPos += numE;
		if(letter < (currentPos + numA))
			return 'a';
		currentPos += numA;
		if(letter < (currentPos + numI))
			return 'i';
		currentPos += numI;
		if(letter < (currentPos + numO))
			return 'o';
		currentPos += numO;
		if(letter < (currentPos + numN))
			return 'n';
		currentPos += numN;
		if(letter < (currentPos + numR))
			return 'r';
		currentPos += numR;
		if(letter < (currentPos + numT))
			return 't';
		currentPos += numT;
		if(letter < (currentPos + numL))
			return 'l';
		currentPos += numL;
		if(letter < (currentPos + numS))
			return 's';
		currentPos += numS;
		if(letter < (currentPos + numU))
			return 'u';
		currentPos += numU;
		if(letter < (currentPos + numD))
			return 'd';
		currentPos += numD;
		if(letter < (currentPos + numG))
			return 'g';
		currentPos += numG;
		if(letter < (currentPos + numB))
			return 'b';
		currentPos += numB;
		if(letter < (currentPos + numC))
			return 'c';
		currentPos += numC;
		if(letter < (currentPos + numM))
			return 'm';
		currentPos += numM;
		if(letter < (currentPos + numP))
			return 'p';
		currentPos += numP;
		if(letter < (currentPos + numF))
			return 'f';
		currentPos += numF;
		if(letter < (currentPos + numH))
			return 'h';
		currentPos += numH;
		if(letter < (currentPos + numV))
			return 'v';
		currentPos += numV;
		if(letter < (currentPos + numW))
			return 'w';
		currentPos += numW;
		if(letter < (currentPos + numY))
			return 'y';
		currentPos += numY;
		if(letter < (currentPos + numK))
			return 'k';
		currentPos += numK;
		if(letter < (currentPos + numJ))
			return 'j';
		currentPos += numJ;
		if(letter < (currentPos + numX))
			return 'x';
		currentPos += numX;
		if(letter < (currentPos + numQ))
			return 'q';
		currentPos += numQ;
		if(letter < (currentPos + numZ))
			return 'z';
		return '.';
	}

	void TuningList(){
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

	void CreateLetters(string l){
		//take the string of letters to turn into on screen objects, and chop it into an array of its characters
		char [] letterArray = l.ToCharArray();
		//run all the characters through a loop, find them, and then at the end of each loop iteration, instantiate the found letter in the array lettersOnBoard
		for (int i = 0; i< l.Length; i++){
			print(letterArray[i]);
			switch(letterArray[i]){
			case 'a':
				//print("its a");
				spawnMe = letterObjs[0];
				//Instantiate(letterObjs[0], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
			break;
			case 'b':
				//print("its b");
				spawnMe = letterObjs[1];
				//Instantiate(letterObjs[1], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'c':
				//print("its c");
				spawnMe = letterObjs[2];
				//Instantiate(letterObjs[2], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'd':
				//print("its d");
				spawnMe = letterObjs[3];
				//Instantiate(letterObjs[3], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'e':
				//print("its e");
				spawnMe = letterObjs[4];
				//Instantiate(letterObjs[4], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'f':
				//print("its f");
				spawnMe = letterObjs[5];
				//Instantiate(letterObjs[5], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'g':
				//print("its g");
				spawnMe = letterObjs[6];
				//Instantiate(letterObjs[6], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'h':
				//print("its h");
				spawnMe = letterObjs[7];
				//Instantiate(letterObjs[7], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'i':
				//print("its i");
				spawnMe = letterObjs[8];
				//Instantiate(letterObjs[8], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'j':
				//print("its j");
				spawnMe = letterObjs[9];
				//Instantiate(letterObjs[9], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'k':
				//print("its k");
				spawnMe = letterObjs[10];
				//Instantiate(letterObjs[10], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'l':
				//print("its l");
				spawnMe = letterObjs[11];
				//Instantiate(letterObjs[11], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'm':
				//print("its m");
				spawnMe = letterObjs[12];
				//Instantiate(letterObjs[12], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'n':
				//print("its n");
				spawnMe = letterObjs[13];
				//Instantiate(letterObjs[13], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'o':
				//print("its o");
				spawnMe = letterObjs[14];
				//Instantiate(letterObjs[14], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'p':
				//print("its p");
				spawnMe = letterObjs[15];
				//Instantiate(letterObjs[15], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'q':
				//print("its q");
				spawnMe = letterObjs[16];
				//Instantiate(letterObjs[16], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'r':
				//print("its r");
				spawnMe = letterObjs[17];
				//Instantiate(letterObjs[17], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 's':
				//print("its s");
				spawnMe = letterObjs[18];
				//Instantiate(letterObjs[18], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 't':
				//print("its t");
				spawnMe = letterObjs[19];
				//Instantiate(letterObjs[19], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'u':
				//print("its u");
				spawnMe = letterObjs[20];
				//Instantiate(letterObjs[20], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'v':
				//print("its v");
				spawnMe = letterObjs[21];
				//Instantiate(letterObjs[21], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'w':
				//print("its w");
				spawnMe = letterObjs[22];
				//Instantiate(letterObjs[22], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'x':
				//print("its x");
				spawnMe = letterObjs[23];
				//Instantiate(letterObjs[23], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'y':
				//print("its y");
				spawnMe = letterObjs[24];
				//Instantiate(letterObjs[24], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			case 'z':
				//print("its z");
				spawnMe = letterObjs[25];
				//Instantiate(letterObjs[25], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
				break;
			}
			//Add the letter into the array Letters on Board, and create the object
			// at the place it is in the returned string from RandomLetters
			//This puts the letters on screen 
			lettersOnBoard[i] = Instantiate(spawnMe, new Vector3(i*1.5f-7,0,0),new Quaternion(0,0,0,0)) as GameObject;
		}

	}


}

