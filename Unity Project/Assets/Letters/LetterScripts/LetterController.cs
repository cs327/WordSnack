using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class LetterController : MonoBehaviour
{
	VariableControl variables = new VariableControl();
	//	public letterBehaviour [] letterObjs;
	//	public letterBehaviour spawnMe;
	public letterBehaviour letterObj;
	public letterBehaviour[] lettersOnBoard;
	public letterBehaviour[] lettersOnStove;
	public int[] positionOnBoard;
	public int numLettersOnStove = 0;
	public float timer = 0f;
	private int boardSize;
	public Vector3[] stoveSpots;
	public Vector3[] bankSpots;
	public bool needsUpkeep = true;
	public GameObject steamPrefab;
	public GameObject [] stoveSteam;
	public GameObject heatPrefab;
	public GameObject [] stoveHeat;
	public string letters;
	public int vowels = 0;
	public string myLetters;
	public bool firstHand = true;
	public int firstHandCount;
	int safetyCount;
	public int vowelsAddedInCycle = 0;
	public int next;
	public bool[] newArraySpot;
	public int emptyLetterCount = 0;
	public TextAsset sowpods;
	private List<string> wordList = new List<string>();
	public static Dictionary<char, int> letterScores;
	public Texture2D shuffleButton;
	public bool gamePaused;
	public GameObject gameController;
	public bool needsReordering = true;
	public int countToEndGame;
	public string lastWordChecked;
	//letter tuning from Josiah 
	private char[] vowelList = {'a', 'e', 'i', 'o', 'u'};
	private char[] consonantList =
	{
		'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's',
		't', 'v', 'w', 'x', 'y', 'z',
	};
	public int numVowels;


	// Use this for initialization
	void Start()
	{
		//initialize variablecontrol reference
		variables = GameObject.Find ("VariableController").GetComponent<VariableControl> ();

		//connects boardSize variable to the value in the variable controller
		boardSize = variables.boardSize;

		//initialize the lettersOnBoard array as the size of the board, as letterBehaviour. Also creates array for lettersOnStove
		lettersOnBoard = new letterBehaviour[boardSize];
		lettersOnStove = new letterBehaviour[boardSize];
		newArraySpot = new bool[boardSize];
		positionOnBoard = new int[boardSize];

		//creates the list of valid words and letter scores
		makeWordListAndScoreDict ();

		//initialize all physical spots on board (as arrays of Vector3's according to amount of letters on board
		stoveSpots = new Vector3[boardSize];
		bankSpots = new Vector3[boardSize];
		for (int i = 0; i < boardSize; i++) {
			stoveSpots [i] = new Vector3 (i * 1.4f - 5.7f, -1.26f, 0);
			bankSpots [i] = new Vector3 (i * 1.8f - 6.3f, -3.6f, 0);
			positionOnBoard [i] = -1;
		}
		GameObject.Find("VariableController").GetComponent<VariableControl>().letterGenerationSound = true;
		CreateSteam ();
	}

	// Update is called once per frame
	void Update()
	{
		string word = sendWord();
		//check if there even is a word!
		if (word == null || word.Length < variables.minWordLength || !checkForWord(word)) {
			variables.isWord = false;
		} else {
			variables.isWord = true;
		}
		//triggers the check to met tastes if the word on the stove is a new and valid 
		if (variables.isWord && lastWordChecked != word) {
			lastWordChecked = word;
			GameObject.Find ("VariableController").GetComponent<VariableControl>().timeToCheckForTastes = true;
		} 
		//waits to count letters until they've been initialized 
//		if (safetyCount > 10) {
//			firstHand = false;
//			myLetters = lettersInHand();
//			numVowels = countVowels();
//		} else {
//			safetyCount++;
//		}
		//keep local time in scripts
		myLetters = lettersInHand();
		timer += Time.deltaTime;

		//Calls MoveToFromStoveArray, which in turn calls three functions related to making sure any letters clicked either go to the stove,
		//are removed from stove (if they are clicked off the stove)
		moveToAndFromStove();

		//if there are fewer than boardSize letters (basically if a word has been sent to a character) refills the letter banks
		//to the adequate size
		replaceBankLetters();

		//ends the game if the player has run out of letters
		//changed - used to be emptyLetterCount >= 5
		if ((variables.totalLetters == 0) && (countToEndGame >= 7)) {
			gameController.GetComponent<wordBuildingController>().sendVariablestoScoreScreen();
			Application.LoadLevel ("ScoreScreen");
		}
		TurnOnOffSteam();
		  countToEndGame = CountEmptyLetters(myLetters);
		  
	}


	 IEnumerator animateLetters (letterBehaviour letterToMove, Vector3 currentSpot, Vector3 moveToHere){

		letterToMove.isMoving = true;
//		int numSteps = 10;
//		Vector3 stepIncrement = (moveToHere-currentSpot)/numSteps;
//		for (int i = 0; i< numSteps; i++){
//			letterToMove.transform.position += stepIncrement;
//			yield return null;
//		}

//		for( float i = 0f; i < 1; i += .15f){
//			letterToMove.transform.position = Vector3.Slerp(currentSpot, moveToHere, i);
//			yield return null;
//		}
		Vector3 velocity = new Vector3(0,0,0);
		int dontCrash = 0;
		//for( float i = 0f; i < 1; i += .15f){
        if (letterToMove == null)
            Debug.Log("LetterToMove is null and shouldn't be!! Error!");
		while(dontCrash < 100 && letterToMove.transform.position != moveToHere){
			dontCrash++;
			letterToMove.transform.position = Vector3.SmoothDamp(letterToMove.transform.position, moveToHere, ref velocity, .05f);
			yield return null;	
		}
		//}
		letterToMove.isMoving = false;

	 }
	
	 

	void CreateSteam (){
		stoveSteam = new GameObject[boardSize];
		stoveHeat = new GameObject[boardSize];

		for( int x = 0; x < boardSize; x++){
			stoveSteam[x] = Instantiate (steamPrefab,stoveSpots[x] + new Vector3(0,-.5f,-.5f),new Quaternion (0,0,0,0)) as GameObject;
			stoveSteam[x].transform.eulerAngles = new Vector3 (-90,0,0);

			stoveHeat[x] = Instantiate (heatPrefab, stoveSpots[x] + new Vector3(0,-.5f,-.5f),new Quaternion (0,0,0,0)) as GameObject;
			//stoveHeat[x].transform.eulerAngles = new Vector3 (-90,0,0);
			stoveHeat[x].transform.Translate(new Vector3(0.0f, 0.5f, 0.0f));
		}
	}

	void TurnOnOffSteam(){
		for(int x = 0; x < boardSize; x++){
			if(x < numLettersOnStove){
				stoveSteam[x].particleSystem.emissionRate = 30;
				stoveHeat[x].particleSystem.emissionRate = 10;
			}
			else{
				stoveSteam[x].particleSystem.emissionRate = 0;
				stoveHeat[x].particleSystem.emissionRate = 0;
			}
		}
	}


	string returnLetters(int n)
	{
		//Random r = new Random();
		//for the number of letters asked for, return a string with that many random letters in it
		letters = randomLetter().ToString();
		char randLetterChar;
		for (int i = 1; i < n; i++)
		{
		  randLetterChar = randomLetter();
		  letters += randLetterChar;
		  if (randLetterChar == '.')
			 emptyLetterCount++;
		}
		//resets the vowels added in cycle variable
		vowelsAddedInCycle = 0;
		return letters;
	}

	//takes a random letter out of the bag
	char randomLetter ()
	{   
		//makes sure to take both vowels and consonants if it is the first hand 
		if (firstHand) {
			firstHandCount++;
		}
		if (firstHandCount > 8) {
			firstHand = false;
		}
		print ("did the thing");
		//Make a big long list of all the letters in the letter bag, for easy picking
		//Let's also make bags of just the vowels and consonants at the same time, for even easier picking
		//These bags aren't the real things - they're copies just for the purposes of choosing a random letter,
		//recreated from the real thing each time we ask for a random letter
		//We will decrement the real thing when we choose one
		List<char> serializedLetterBag = new List<char> ();
		List<char> vowelsInLetterBag = new List<char> (); 
		List<char> consonantsInLetterBag = new List<char> ();
		
		foreach (KeyValuePair<char, int> entry in variables.letterBag) { //loop through our letterBag Dictionary
			for (int i = 1; i <= entry.Value; i++) { //Add that many letters to our serialized version (it could well be 0 - that's fine)
				serializedLetterBag.Add (entry.Key);
				if (vowelList.Contains (entry.Key)) { //If it's a vowel, add it to the vowel bag 
					vowelsInLetterBag.Add (entry.Key);
				}
				if (consonantList.Contains (entry.Key)) { //If it's a consonant, add it to the consonant bag
					consonantsInLetterBag.Add (entry.Key);
				}
			}
		}
		//update the number of vowels in hand
		numVowels = countVowels (); //count the number of vowels that are on the board so that we know what to do later in this function
		
		//Debug.Log ("Number of vowels on board thinks it's " + numVowels);
		//Debug.Log ("Serialized Letter Bag's Length is " + serializedLetterBag.Count ());
		//First check if there are any letters in the bag. If not, return a ",", which says to returnLetters that we're empty - we've got none letters. Too bad.
		if (serializedLetterBag.Count () == 0)
			return '.';
		//If we don't have enough vowels on the board, return a vowel, as long as we've got one
		if (numVowels < variables.minNumVowels && variables.totalVowels <= 0)
			Debug.Log ("There aren't enough vowels on the board, but we don't have any left!");
		if (!firstHand && numVowels < variables.minNumVowels && variables.totalVowels > 0) {
			//Debug.Log ("Logic says we MUST return a vowel and we've got one to give");
			char vowelToReturn = vowelsInLetterBag [Random.Range (0, vowelsInLetterBag.Count () - 1)]; //pick a random vowel
			variables.totalVowels--; //decrement total number of Vowels
			variables.totalLetters--; //decrement total number of letters
			variables.letterBag [vowelToReturn] = variables.letterBag [vowelToReturn] - 1; //decrement the number of that letter in the global letterBag
			return vowelToReturn; //return that vowel!
		}
		if (!firstHand && numVowels >= variables.maxNumVowels) { //If we already have enough vowels (or too many, but we screwed up if that happens), return a consonant
			//Debug.Log ("Logic says we MUST return a consonant");
			char consonantToReturn = consonantsInLetterBag [Random.Range (0, consonantsInLetterBag.Count () - 1)]; //pick a random consonant
			variables.letterBag [consonantToReturn] = variables.letterBag [consonantToReturn] - 1; //decrement the number of that letter in the global letterBag
			variables.totalLetters--; //decrement total number of letters to display to player
			return consonantToReturn;
		} else { //Else, we're free to return anything - we don't have the max number of vowels or too few vowels
			//Debug.Log ("Logic says we can return anything we want.");
			char letterToReturn = serializedLetterBag [Random.Range (0, serializedLetterBag.Count () - 1)];
			variables.letterBag [letterToReturn] = variables.letterBag [letterToReturn] - 1; //decrement the number of that letter in the global letterBag
			if (vowelList.Contains (letterToReturn))
				variables.totalVowels--; //if it's a vowel, decrement global vowel number
			variables.totalLetters--; //decrement total number of tiles in bag to display to player
			return letterToReturn;
		}
	}


	void CreateLetters(string l)
	{
		if(!gamePaused){
			//take the string of letters to turn into on screen objects, and chop it into an array of its characters
			char[] letterArray = l.ToCharArray();
			print(l.ToString());
			//run all the characters through a loop, find them, and then at the end of each loop iteration, instantiate the found letter in the array lettersOnBoard

			for (int i = 0; i < l.Length; i++)
			{
			  //			//print(letterArray[i]);

			  lettersOnBoard[boardSize - i - 1] = Instantiate(letterObj, bankSpots[boardSize - i - 1] - new Vector3 (0,10,0), new Quaternion(0, 0, 0, 0)) as letterBehaviour;
			  lettersOnBoard[boardSize - i - 1].letter = letterArray[i].ToString();
			}
		}

	}




	void replaceBankLetters()
	{

		//makes sure the array containing the letters on board is filled from the front until there are no more letters
		//so there are no spaces in the array between letters. Only has any effect if a word was sent out recently and there
		//are now fewer letters on board than boardSize.

		for (int i = (boardSize - 1); i > 0; i--)
		{
		  if (lettersOnBoard[i] != null && lettersOnBoard[i - 1] == null)
		  {
			 lettersOnBoard[i - 1] = lettersOnBoard[i];
			 lettersOnBoard[i] = null;
		  }
		}

		//if a letter was sent out recently and it has been one second since then,
		//this block of code replaces all missing letters on board with random ones
		// and effectively fills the bank.

		if (timer > .25f && needsUpkeep)
		{
		  //print ("time to replace");
		  int needsReplacing = 0;
		  for (int i = 0; i < boardSize; i++)
		  {
			 if (lettersOnBoard[i] == null)
			 {
				needsReplacing++;
			 }

				positionOnBoard[i] = -1;
		  }
		  if (needsReplacing > 0)
		  {
			 string newLetters = returnLetters(needsReplacing);
			 //print (newLetters);
			 CreateLetters(newLetters);
			 
		  }

		  needsUpkeep = false;
		}
	}

	
	void moveToAndFromStove()
	{

		//runs a loop through every letter on board
		for (int i = 0; i < lettersOnBoard.Length; i++)
		{

		  //checks if any letters on the board should be moved to the stove and adds them to the stove array if so
		  if (lettersOnBoard[i] != null)
		  {
			 if (!lettersOnBoard[i].onStove && lettersOnBoard[i].selected)
			 {
				lettersOnStove[numLettersOnStove] = lettersOnBoard[i];
					positionOnBoard[numLettersOnStove] = i;
				lettersOnBoard[i].onStove = true;
				lettersOnBoard[i].orderOnStove = numLettersOnStove;
				numLettersOnStove++;
			 }

			 //checks if any of the letters on the board should be removed from the stove, and if so removes them from the stove array
			 if (lettersOnBoard[i].onStove && !lettersOnBoard[i].selected)
			 {

				//the following actions go through and get rid of every letter on the stove to the right of the selected one for removal, by for looping through all the letters on the stove
				numLettersOnStove = lettersOnBoard[i].orderOnStove;
				for (int x = lettersOnBoard[i].orderOnStove; x < boardSize; x++)
				{
					if (lettersOnStove[x] != null)
					{

						lettersOnStove[x].orderOnStove = -1;
						lettersOnStove[x].selected = false;
						lettersOnStove[x].onStove = false;
						lettersOnStove[x] = null;
							positionOnBoard[x] = -1;
					}
				}
			 }
			 //checks all letters on stove, and puts them in the correct position
				if (lettersOnStove[i] != null && lettersOnStove[i].transform.position != stoveSpots[i])
				{
					//lettersOnStove[i].transform.position = stoveSpots[i];
					if(!lettersOnStove[i].isMoving){
					 	StartCoroutine(animateLetters(lettersOnStove[i],lettersOnStove[i].transform.position, stoveSpots[i]));
					}
				}
				//checks all letters that are on the board but not the stove, and puts them in the correct position
				if (!lettersOnBoard[i].onStove && lettersOnBoard[i].transform.position != bankSpots[i])
				{
					//lettersOnBoard[i].transform.position = bankSpots[i];
					if(!lettersOnBoard[i].isMoving){
						StartCoroutine(animateLetters(lettersOnBoard[i],lettersOnBoard[i].transform.position, bankSpots[i]));
					}
				}
			}
		}
		needsReordering = false;

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


	public void ResetStove()
	{

		for (int i = 0; i < boardSize; i++)
		{
		  if (lettersOnStove[i] != null)
		  {
			 lettersOnStove[i].used = true;
			 Destroy(lettersOnStove[i].gameObject);
			 lettersOnStove[i] = null;
		  }
		}
		numLettersOnStove = 0;
		timer = 0;
		needsUpkeep = true;
	  
		variables.letterGenerationSound = true;

	}

	//can be called to return whatever is on the stove as a string
	public string sendWord()
	{
		//creates a local variable to be returned- whatever word is on stove
		string currentWord = null;

		//runs through all letters on stove, adds their char to the currentword in the order it is on the stove,
		//and then destroys the letters (SHOULD BE CHANGED IF METHOD OF CHECKING/DISCARDING WORDS CHANGED)!!
		for (int i = 0; i < boardSize; i++)
		{
		  if (lettersOnStove[i] != null)
		  {
			 currentWord += lettersOnStove[i].letter;
		  }
		}

		//resets all variables related to whats on stove, resets local timer, and then returns the string of whats on stove
		//		print("WORD SUBMITTED: " + currentWord.ToString());
		return currentWord;

	}

	//shuffles the letters currently in your hand
	void shuffleLetters()
	{
		variables.shuffleSound = true;
		int nextSpotNum = -1;
		//creates an array to temporarily store the new array locations for each letter
		letterBehaviour[] nextLetters;
		nextLetters = new letterBehaviour[boardSize];
		//clears the boolean array that determines which spots are taken
		clearSpots();
		//finds a new spot for each letter in the array
		for (int i = 0; i < boardSize; i++)
		{
			if (!spotIsOnBoard(i)) {
			  //finds an untaken spot for that letter
			  while (nextSpotNum == -1)
			  {
				 nextSpotNum = findNewSpot();
			  }
			  //stores the letter in the temp array
			  nextLetters[nextSpotNum] = lettersOnBoard[i];
			  newArraySpot[nextSpotNum] = true;
			  nextSpotNum = -1;
			}
		}
		//sets the letter array to the temp array and changes positions
		for (int i = 0; i < boardSize; i++)
		{
			if (!spotIsOnBoard(i)) {
			  lettersOnBoard[i] = nextLetters[i];
			  //I commented out the following line because it is taken care of in moveToFromStove() 
				//in general letter placement upkeep
				//lettersOnBoard[i].transform.position = bankSpots[i];

			}
		}
	}


	//clears the spots in the bool array for new letter spots
	void clearSpots()
	{
		for (int i = 0; i < boardSize; i++)
		{
		  newArraySpot[i] = false;
		}
	}

	//returns a random int if that spot in the array is untaken
	int findNewSpot()
	{
		int nextSpotNum = 0;
		nextSpotNum = (int)Random.Range(0, boardSize);
		if (newArraySpot[nextSpotNum] == false && !spotIsOnBoard(nextSpotNum))
		{
		  return nextSpotNum;
		}
		else
		{
		  return -1;
		}
	}

	bool spotIsOnBoard(int spotNum) {
		bool onBoard = false;
		for (int i = 0; i < boardSize; i++) {
			if (positionOnBoard[i] == spotNum) {
				onBoard = true;
			}
		}
		return onBoard;
	}
	//current test for sending words from stove
	void OnGUI()
	{
		//if (GUI.Button(new Rect(430, 370, 100, 30), "Send Word")){
		//	sendWord();
		//} else 
		if(!gamePaused ){
			GUIStyle style = new GUIStyle ();
			style.normal.background = shuffleButton;

			if (GUI.Button(new Rect(Screen.width*0.013f, Screen.height*0.43f, Screen.width*0.07f, Screen.width*0.07f), "", style))
			{ //shuffles the letters in your hand
			  shuffleLetters();
			}
		}
	}

	void makeWordListAndScoreDict()
	{
		if (letterScores == null)
		{
			letterScores = new Dictionary<char, int>();
			
			//Create the dictionary of letter scores
			foreach (char letter in "eaionrtlsu")
			{
				letterScores.Add(letter, 1);
			}
			foreach (char letter in "dg")
			{
				letterScores.Add(letter, 2);
			}
			foreach (char letter in "bcmp")
			{
				letterScores.Add(letter, 3);
			}
			foreach (char letter in "fhvwy")
			{
				letterScores.Add(letter, 4);
			}
			letterScores.Add('k', 5);
			foreach (char letter in "jx")
			{
				letterScores.Add(letter, 8);
			}
			foreach (char letter in "qz")
			{
				letterScores.Add(letter, 10);
			}
			letterScores.Add('.', 0);

		}

		//This method makes the word list once
		string[] tempWordList = sowpods.text.Split('\n');
		for (int j = 0; j < tempWordList.Length; j++)
		{
		  string proposedWord = tempWordList[j].Trim();
		  if ((proposedWord.Length >= variables.minWordLength) && (proposedWord.Length <= variables.maxWordLength))
		  {
			 wordList.Add(proposedWord);
		  }
		}
	}

	public bool checkForWord(string word)
	{
		if (word != null)  {
			//This method will, when passed a word, check if it's a valid word
			//Our word list happens to contain uppercase only words, so convert before checking
			//Debug.Log ("Checking a word in checkForWord!");
			return (wordList.Contains(word.ToUpper()));
		} else {
			return false;
		}
	}
	//counts the current number of vowels
//	public int countVowels (){
//		int vowelCount = 0;
//		if (myLetters.Length == 8) {
//			char[] vowels = new char[] {'a', 'e', 'i', 'o', 'u'};
//			for (int i = 0; i < boardSize; i++) {
//				for (int j = 0; j < 5; j++) {
//					if (myLetters[i] == vowels[j]) {
//						vowelCount++;
//					}
//				}
//			}
//		}
//		return vowelCount;
//	}

	public int countVowels ()
	{
		int vowelCount = 0;
		foreach (char letter in myLetters) {
			if (vowelList.Contains (letter)) {
				vowelCount++;
			}
		}
		return vowelCount;
	}
//	stores a stringo of the current letters 
	public string lettersInHand () {
		string letters = "";
		for (int i = 0; i < boardSize; i++) {
			if (lettersOnBoard[i]!= null) {
				letters += lettersOnBoard[i].letter;
			}
		}
		return letters;
	}
	 int CountEmptyLetters(string myLetters)
	 {
		  int count = 0;
		  foreach (char element in myLetters.ToCharArray())
		  {
				if ((element == ',') || (element == '.'))
				{
					 count++;
				}
		  }
		  return count;
	 }
}

