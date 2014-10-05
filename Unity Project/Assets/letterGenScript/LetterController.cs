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

	public static Dictionary<char,int> letterScores;


	void Awake(){
	}

	// Use this for initialization
	void Start () {
		//initialize variablecontrol reference
		variables = GameObject.Find("GameController").GetComponent<VariableControl>();

		//initialize the lettersOnBoard array as the size of the board, as letterBehaviour. Also creates array for lettersOnStove
		lettersOnBoard = new letterBehaviour[boardSize];
		lettersOnStove = new letterBehaviour[boardSize];
		newArraySpot = new bool[boardSize];

		//establishes tuning list, frequencies letters are likely to show up.
		//TuningList();
		//Creates the list of valid words
		makeWordList ();
		//if it hasn't already been done by another character, create the letter score dictionary
		if(letterScores == null)
		{
			letterScores = new Dictionary<char, int> ();
			
			//Create the dictionary of letter scores
			foreach (char letter in "eaionrtlsu") {
				letterScores.Add (letter, 1);
			}
			foreach (char letter in "dg") {
				letterScores.Add (letter, 2);
			}
			foreach (char letter in "bcmp") {
				letterScores.Add (letter, 3);
			}
			foreach (char letter in "fhvwy") {
				letterScores.Add (letter, 4);
			}
			letterScores.Add ('k',5);
			foreach (char letter in "jx") {
				letterScores.Add (letter, 8);
			}
			foreach (char letter in "qz") {
				letterScores.Add (letter, 10);
			}
		}
		//TuningList();
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


	char randomLetter()
	{
		int currentPos = 0;

		int letter = Random.Range(0,variables.totalLetters);

		
		if(letter < variables.numE)
			return 'e';
		currentPos += variables.numE;
		if(letter < (currentPos + variables.numA))
			return 'a';
		currentPos += variables.numA;
		if(letter < (currentPos + variables.numI))
			return 'i';
		currentPos += variables.numI;
		if(letter < (currentPos + variables.numO))
			return 'o';
		currentPos += variables.numO;
		if(letter < (currentPos + variables.numN))
			return 'n';
		currentPos += variables.numN;
		if(letter < (currentPos + variables.numR))
			return 'r';
		currentPos += variables.numR;
		if(letter < (currentPos + variables.numT))
			return 't';
		currentPos += variables.numT;
		if(letter < (currentPos + variables.numL))
			return 'l';
		currentPos += variables.numL;
		if(letter < (currentPos + variables.numS))
			return 's';
		currentPos += variables.numS;
		if(letter < (currentPos + variables.numU))
			return 'u';
		currentPos += variables.numU;
		if(letter < (currentPos + variables.numD))
			return 'd';
		currentPos += variables.numD;
		if(letter < (currentPos + variables.numG))
			return 'g';
		currentPos += variables.numG;
		if(letter < (currentPos + variables.numB))
			return 'b';
		currentPos += variables.numB;
		if(letter < (currentPos + variables.numC))
			return 'c';
		currentPos += variables.numC;
		if(letter < (currentPos + variables.numM))
			return 'm';
		currentPos += variables.numM;
		if(letter < (currentPos + variables.numP))
			return 'p';
		currentPos += variables.numP;
		if(letter < (currentPos + variables.numF))
			return 'f';
		currentPos += variables.numF;
		if(letter < (currentPos + variables.numH))
			return 'h';
		currentPos += variables.numH;
		if(letter < (currentPos + variables.numV))
			return 'v';
		currentPos += variables.numV;
		if(letter < (currentPos + variables.numW))
			return 'w';
		currentPos += variables.numW;
		if(letter < (currentPos + variables.numY))
			return 'y';
		currentPos += variables.numY;
		if(letter < (currentPos + variables.numK))
			return 'k';
		currentPos += variables.numK;
		if(letter < (currentPos + variables.numJ))
			return 'j';
		currentPos += variables.numJ;
		if(letter < (currentPos + variables.numX))
			return 'x';
		currentPos += variables.numX;
		if(letter < (currentPos + variables.numQ))
			return 'q';
		currentPos += variables.numQ;
		if(letter < (currentPos + variables.numZ))
			return 'z';
		return '.';
	}


	void CreateLetters(string l){
		//take the string of letters to turn into on screen objects, and chop it into an array of its characters
		char [] letterArray = l.ToCharArray();
		print (l.ToString());
		//run all the characters through a loop, find them, and then at the end of each loop iteration, instantiate the found letter in the array lettersOnBoard
		for (int i = 0; i < l.Length; i++){
//			//print(letterArray[i]);

			lettersOnBoard[boardSize-i-1] = Instantiate(letterObj, bankSpots[boardSize-i-1],new Quaternion(0,0,0,0)) as letterBehaviour;
			lettersOnBoard[boardSize-i-1].letter = letterArray[i].ToString();
		}

	}



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
		if (GUI.Button(new Rect( 50, 400, 100, 30), "Shuffle Letters")) { //shuffles the letters in your hand
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

	public bool checkForWord (string word){
		//This method will, when passed a word, check if it's a valid word
		//Our word list happens to contain uppercase only words, so convert before checking
		return (wordList.Contains (word.ToUpper ()));
	}

}

