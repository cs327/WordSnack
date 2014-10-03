using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LetterController : MonoBehaviour {
    VariableControl variables = new VariableControl();
	public int numA,numB,numC,numD,numE,numF,numG,numH,numI,numJ,numK,numL,numM,numN,numO,numP,numQ,numR,numS,numT,numU,numV,numW,numX,numY,numZ;
	public int totalLetters,totalVowels;
//	public letterBehaviour [] letterObjs;
//	public letterBehaviour spawnMe;
	public letterBehaviour letterObj;
	public letterBehaviour [] lettersOnBoard;
	public letterBehaviour [] lettersOnStove;
	public int numLettersOnStove = 0;
	public float timer = 0f;
	public int boardSize = 7;
	public Vector3 [] stoveSpots;
	public Vector3 [] bankSpots;
	public bool needsUpkeep = true;

	public int next;
	public bool [] newArraySpot;

	public TextAsset sowpods;
	public int minWordLength;
	public int maxWordLength;
	private List<string> wordList = new List<string>();



	void Awake(){
	}

	// Use this for initialization
	void Start () {
		//initialize the lettersOnBoard array as the size of the board, as letterBehaviour. Also creates array for lettersOnStove
		lettersOnBoard = new letterBehaviour[boardSize];
		lettersOnStove = new letterBehaviour[boardSize];
		newArraySpot = new bool[boardSize];

		//establishes tuning list, frequencies letters are likely to show up.
		TuningList();
		//Creates the list of valid words
		makeWordList ();


		//initialize all physical spots on board (as arrays of Vector3's according to amount of letters on board
		stoveSpots = new Vector3[boardSize];
		bankSpots = new Vector3[boardSize];
		for (int i = 0; i < boardSize; i++){
			stoveSpots[i] = new Vector3 (i*(1.5f * (boardSize/7))-4,-1.5f,0);
			bankSpots[i] = new Vector3 (i*(1.5f * (boardSize/7))-5,-3.5f,0);
		}

	}
	
	// Update is called once per frame
	void Update () {
		//keep local time in scripts
		timer += Time.deltaTime;

		//Calls MoveToFromStoveArray, which in turn calls three functions related to making sure any letters clicked either go to the stove,
		//are removed from stove (if they are clicked off the stove)
		moveToAndFromStove();

		//if there are fewer than boardSize letters (basically if a word has been sent to a character) refills the letter banks
		//to the adequate size
		replaceBankLetters();
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
		print (l.ToString());
		//run all the characters through a loop, find them, and then at the end of each loop iteration, instantiate the found letter in the array lettersOnBoard
		for (int i = 0; i < l.Length; i++){
//			//print(letterArray[i]);
//			switch(letterArray[i]){
//			case 'a':
//				//print("its a");
//				spawnMe = letterObjs[0];
//				//Instantiate(letterObjs[0], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'b':
//				//print("its b");
//				spawnMe = letterObjs[1];
//				//Instantiate(letterObjs[1], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'c':
//				//print("its c");
//				spawnMe = letterObjs[2];
//				//Instantiate(letterObjs[2], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'd':
//				//print("its d");
//				spawnMe = letterObjs[3];
//				//Instantiate(letterObjs[3], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'e':
//				//print("its e");
//				spawnMe = letterObjs[4];
//				//Instantiate(letterObjs[4], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'f':
//				//print("its f");
//				spawnMe = letterObjs[5];
//				//Instantiate(letterObjs[5], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'g':
//				//print("its g");
//				spawnMe = letterObjs[6];
//				//Instantiate(letterObjs[6], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'h':
//				//print("its h");
//				spawnMe = letterObjs[7];
//				//Instantiate(letterObjs[7], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'i':
//				//print("its i");
//				spawnMe = letterObjs[8];
//				//Instantiate(letterObjs[8], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'j':
//				//print("its j");
//				spawnMe = letterObjs[9];
//				//Instantiate(letterObjs[9], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'k':
//				//print("its k");
//				spawnMe = letterObjs[10];
//				//Instantiate(letterObjs[10], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'l':
//				//print("its l");
//				spawnMe = letterObjs[11];
//				//Instantiate(letterObjs[11], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'm':
//				//print("its m");
//				spawnMe = letterObjs[12];
//				//Instantiate(letterObjs[12], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'n':
//				//print("its n");
//				spawnMe = letterObjs[13];
//				//Instantiate(letterObjs[13], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'o':
//				//print("its o");
//				spawnMe = letterObjs[14];
//				//Instantiate(letterObjs[14], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'p':
//				//print("its p");
//				spawnMe = letterObjs[15];
//				//Instantiate(letterObjs[15], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'q':
//				//print("its q");
//				spawnMe = letterObjs[16];
//				//Instantiate(letterObjs[16], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'r':
//				//print("its r");
//				spawnMe = letterObjs[17];
//				//Instantiate(letterObjs[17], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 's':
//				//print("its s");
//				spawnMe = letterObjs[18];
//				//Instantiate(letterObjs[18], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 't':
//				//print("its t");
//				spawnMe = letterObjs[19];
//				//Instantiate(letterObjs[19], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'u':
//				//print("its u");
//				spawnMe = letterObjs[20];
//				//Instantiate(letterObjs[20], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'v':
//				//print("its v");
//				spawnMe = letterObjs[21];
//				//Instantiate(letterObjs[21], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'w':
//				//print("its w");
//				spawnMe = letterObjs[22];
//				//Instantiate(letterObjs[22], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'x':
//				//print("its x");
//				spawnMe = letterObjs[23];
//				//Instantiate(letterObjs[23], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'y':
//				//print("its y");
//				spawnMe = letterObjs[24];
//				//Instantiate(letterObjs[24], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			case 'z':
//				//print("its z");
//				spawnMe = letterObjs[25];
//				//Instantiate(letterObjs[25], new Vector3 (i*2-5,0,0),new Quaternion (0,0,0,0));
//				break;
//			}
			//Add the letter into the array Letters on Board, and create the object
			// at the place it is in the returned string from RandomLetters
			//This puts the letters on screen 
			//lettersOnBoard[boardSize-i-1] = Instantiate(spawnMe, bankSpots[boardSize-i-1],new Quaternion(0,0,0,0)) as letterBehaviour;

			lettersOnBoard[boardSize-i-1] = Instantiate(letterObj, bankSpots[boardSize-i-1],new Quaternion(0,0,0,0)) as letterBehaviour;
			lettersOnBoard[boardSize-i-1].letter = letterArray[i].ToString();
		}

	}

//	void UpkeepBank(bool upkeepMe){
//		if(upkeepMe){
//			int numberToReplace = 0;
//			for (int i = (boardSize-1); i> 0; i--){
//				if(lettersOnBoard[i] == null){
//					numberToReplace++;
//				}
//				if(lettersOnBoard[i] != null && lettersOnBoard[i-1] == null){
//					lettersOnBoard[i-1] = lettersOnBoard[i];
//					lettersOnBoard[i] = null;
//					numberToReplace++;
//				}
//			}
//
//			if(numberToReplace > 0){
//				string newLetters = returnLetters(numberToReplace);
//				//CreateLetters(newLetters);
//				print (numberToReplace.ToString());
//				print (newLetters);
//			}
//			needsUpkeep = false;
//		}
//	}



	void replaceBankLetters(){

		//makes sure the array containing the letters on board is filled from the front until there are no more letters
		//so there are no spaces in the array between letters. Only has any effect if a word was sent out recently and there
		//are now fewer letters on board than boardSize.

		for (int i = (boardSize-1); i> 0; i--){
			if(lettersOnBoard[i] != null && lettersOnBoard[i-1] == null){
				lettersOnBoard[i-1] = lettersOnBoard[i];
				lettersOnBoard[i] = null;
			}
		}

		//if a letter was sent out recently and it has been one second since then,
		//this block of code replaces all missing letters on board with random ones
		// and effectively fills the bank.

		if(timer > 1 && needsUpkeep){
			//print ("time to replace");
			int needsReplacing = 0;
			for(int i = 0; i < boardSize; i++){
				if(lettersOnBoard[i] == null){
					needsReplacing++;
				}
			}
			if(needsReplacing > 0){
				string newLetters = returnLetters(needsReplacing);
				//print (newLetters);
				CreateLetters(newLetters);
			}
			needsUpkeep = false;
		}
	}

	void moveToAndFromStove(){

		//runs a loop through every letter on board
		for (int i=0; i < lettersOnBoard.Length; i++){

			//checks if any letters on the board should be moved to the stove and adds them to the stove array if so
			if(lettersOnBoard[i] != null){
				if(!lettersOnBoard[i].onStove && lettersOnBoard[i].selected){
					lettersOnStove[numLettersOnStove] = lettersOnBoard[i];
					lettersOnBoard[i].onStove = true;
					lettersOnBoard[i].orderOnStove = numLettersOnStove;
					numLettersOnStove++;
				}

				//checks if any of the letters on the board should be removed from the stove, and if so removes them from the stove array
				if(lettersOnBoard[i].onStove && !lettersOnBoard[i].selected){

					//the following actions go through and get rid of every letter on the stove to the right of the selected one for removal, by for looping through all the letters on the stove
					numLettersOnStove = lettersOnBoard[i].orderOnStove;
					for (int x = lettersOnBoard[i].orderOnStove; x < boardSize ; x++){
						if(lettersOnStove[x] != null){
							
							lettersOnStove[x].orderOnStove = -1;
							lettersOnStove[x].selected = false;
							lettersOnStove[x].onStove = false;
							lettersOnStove[x] = null;
						}
					}
				}
				//checks all letters on stove, and puts them in the correct position
				if(lettersOnStove[i] != null){
					lettersOnStove[i].transform.position = stoveSpots[i];
				}

				//checks all letters that are on the board but not the stove, and puts them in the correct position
				if(!lettersOnBoard[i].onStove){
					lettersOnBoard[i].transform.position = bankSpots[i];
				}
			}
		}



	}

//	void ReorderStoveArrays(){
//		//this function pushes all members of the stove array to the front of it
//		//runs a reverse for loop to count down and move any letters whos next lower element is empty
//		for (int i = (boardSize-1); i> 0; i--){
//			if(lettersOnStove[i] != null && lettersOnStove[i-1] ==null){
//				lettersOnStove[i-1] = lettersOnStove[i];
//				lettersOnStove[i] = null;
//				lettersOnStove[i-1].orderOnStove = (i-1);
//
//			}
//		}
//	}

//	void PlaceAllLetters(){
//
//		for(int i = 0; i < boardSize; i++){
//			if(lettersOnStove[i] != null){
//				lettersOnStove[i].transform.position = stoveSpots[i];
//			}
//
//			if(lettersOnBoard[i] != null && !lettersOnBoard[i].onStove){
//				lettersOnBoard[i].transform.position = bankSpots[i];
//			}
//		}
//	}


	public void ResetStove(){

		for(int i =0; i<boardSize; i++){
			if(lettersOnStove[i] != null){
				lettersOnStove[i].used = true;
				Destroy(lettersOnStove[i].gameObject);
				lettersOnStove[i] = null;
			}
		}
		numLettersOnStove = 0;
		timer = 0;
		needsUpkeep = true;

	}

	//can be called to return whatever is on the stove as a string
	public string sendWord(){
		//creates a local variable to be returned- whatever word is on stove
		string currentWord = null;

		//runs through all letters on stove, adds their char to the currentword in the order it is on the stove,
		//and then destroys the letters (SHOULD BE CHANGED IF METHOD OF CHECKING/DISCARDING WORDS CHANGED)!!
		for(int i =0; i<boardSize; i++){
			if(lettersOnStove[i] != null){
				currentWord += lettersOnStove[i].letter;
			}
		}

		//resets all variables related to whats on stove, resets local timer, and then returns the string of whats on stove
//		print("WORD SUBMITTED: " + currentWord.ToString());
		return currentWord;

	}
	
	//shuffles the letters currently in your hand
	void shuffleLetters () {
		int nextSpotNum = -1;
		//creates an array to temporarily store the new array locations for each letter
		letterBehaviour[] nextLetters;
		nextLetters = new letterBehaviour[boardSize];
		//clears the boolean array that determines which spots are taken
		clearSpots();
		//finds a new spot for each letter in the array
		for (int i = 0; i < boardSize; i++) {
			//finds an untaken spot for that letter
			while (nextSpotNum == -1) {
				nextSpotNum = findNewSpot();
			}
			//stores the letter in the temp array
			nextLetters[nextSpotNum] = lettersOnBoard[i];
			newArraySpot[nextSpotNum] = true;
			nextSpotNum = -1;
		}
		//sets the letter array to the temp array and changes positions
		for (int i = 0; i < boardSize; i++) {
			lettersOnBoard[i] = nextLetters[i];
			lettersOnBoard[i].transform.position = bankSpots[i];
		}
	}


	//clears the spots in the bool array for new letter spots
	void clearSpots () { 
		for (int i = 0; i < boardSize; i++) {
			newArraySpot[i] = false;
		}
	}

	//returns a random int if that spot in the array is untaken
	int findNewSpot () {
		int nextSpotNum = 0;
		nextSpotNum = (int) Random.Range (0, 7);
		if (newArraySpot[nextSpotNum] == false) {
			return nextSpotNum;
		} else {
			return -1;
		}	 
	}

	//current test for sending words from stove
	void OnGUI(){
		//if (GUI.Button(new Rect(430, 370, 100, 30), "Send Word")){
		//	sendWord();
		//} else 
		if (GUI.Button(new Rect( 100, 290, 100, 30), "Shuffle Letters")) { //shuffles the letters in your hand
			shuffleLetters();
		}
//		if (GUI.Button(new Rect(100, 330, 100, 30), "Send Word")){
//			if(checkForWord(sendWord())){
//				variables.score++;
//				print ("I'm a word!");
//				print("Current Score: " + variables.score);
//			}
//			else{
//				print ("Not a word");
//			}
//		}
	}

	void makeWordList () {
		//This method makes the word list once
		string [] tempWordList = sowpods.text.Split ('\n');
		for (int j = 0; j < tempWordList.Length; j++) {
			string proposedWord = tempWordList [j].Trim ();
			if ((proposedWord.Length >= minWordLength) && (proposedWord.Length <= maxWordLength)) {
				wordList.Add (proposedWord);
			}
		}
	}
	
	bool checkForWord (string word){
		//This method will, when passed a word, check if it's a valid word
		//Our word list happens to contain uppercase only words, so convert before checking
		return (wordList.Contains (word.ToUpper ()));
	}

}

