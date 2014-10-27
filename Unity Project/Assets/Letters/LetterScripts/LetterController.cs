using UnityEngine;
using System.Collections;
using System.Collections.Generic;

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
    public string letters;
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
			stoveSpots [i] = new Vector3 (i * 1.3f - 4, -1.8f, 0);
			bankSpots [i] = new Vector3 (i * 1.8f - 6.3f, -3.8f, 0);
			positionOnBoard [i] = -1;
		}
        CreateSteam ();
    }

    // Update is called once per frame
    void Update()
    {
       
        //keep local time in scripts
        timer += Time.deltaTime;

        //Calls MoveToFromStoveArray, which in turn calls three functions related to making sure any letters clicked either go to the stove,
        //are removed from stove (if they are clicked off the stove)
        moveToAndFromStove();

        //if there are fewer than boardSize letters (basically if a word has been sent to a character) refills the letter banks
        //to the adequate size
        replaceBankLetters();

        //ends the game if the player has run out of letters
        if (emptyLetterCount >= 5) {
			gameController.GetComponent<wordBuildingController>().sendVariablestoScoreScreen();
			Application.LoadLevel ("ScoreScreen");
		}
		TurnOnOffSteam();
    }

	 IEnumerator animateLetters (letterBehaviour letterToMove, Vector3 currentSpot, Vector3 moveToHere){
		Vector3 saveThis = new Vector3 (0,0,0);
	 	for (float i = 0; i < .5f; i += .3f){
			if(i == 0){
				saveThis = currentSpot;
			}
	 		letterToMove.transform.position = Vector3.Lerp(saveThis, moveToHere, i);
	 		yield return null;
		}
	 }
	
	 

	void CreateSteam (){
		stoveSteam = new GameObject[boardSize];

		for( int x = 0; x < boardSize; x++){
			stoveSteam[x] = Instantiate (steamPrefab,stoveSpots[x] + new Vector3(0,-.5f,-.5f),new Quaternion (0,0,0,0)) as GameObject;
			stoveSteam[x].transform.eulerAngles = new Vector3 (-90,0,0);
		}
	}

	void TurnOnOffSteam(){
		for(int x = 0; x < boardSize; x++){
			if(x < numLettersOnStove){
				stoveSteam[x].particleSystem.emissionRate = 30;
			}
			else{
				stoveSteam[x].particleSystem.emissionRate = 0;
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
        return letters;
    }

    // Takes a random letter "out of the bag"
    char randomLetter()
    {
        int currentPos = 0;

        int letter = Random.Range(0, variables.totalLetters);
        //Each letter decrements it's own number by one when selected and resets the total number of letters.
        while (variables.totalLetters > 0)
        {
            variables.totalLetters = variables.numA + variables.numB + variables.numC + variables.numD + variables.numE + variables.numF +
                variables.numG + variables.numH + variables.numI + variables.numJ + variables.numK + variables.numL + variables.numM
                + variables.numN + variables.numO + variables.numP + variables.numQ + variables.numR + variables.numS + variables.numT
                + variables.numU + variables.numV + variables.numW + variables.numX + variables.numY + variables.numZ;

            if (letter < variables.numE)
            {
                variables.numE--;
                return 'e';
            }
            currentPos += variables.numE;
            if (letter < (currentPos + variables.numA))
            {
                variables.numA--;
                return 'a';
            }
            currentPos += variables.numA;
            if (letter < (currentPos + variables.numI))
            {
                variables.numI--;
                return 'i';
            }
            currentPos += variables.numI;
            if (letter < (currentPos + variables.numO))
            {
                variables.numO--;
                return 'o';
            }
            currentPos += variables.numO;
            if (letter < (currentPos + variables.numN))
            {
                variables.numN--;
                return 'n';
            }
            currentPos += variables.numN;
            if (letter < (currentPos + variables.numR))
            {
                variables.numR--;
                return 'r';
            }
            currentPos += variables.numR;
            if (letter < (currentPos + variables.numT))
            {
                variables.numT--;
                return 't';
            }
            currentPos += variables.numT;
            if (letter < (currentPos + variables.numL))
            {
                variables.numL--;
                return 'l';
            }
            currentPos += variables.numL;
            if (letter < (currentPos + variables.numS))
            {
                variables.numS--;
                return 's';
            }
            currentPos += variables.numS;
            if (letter < (currentPos + variables.numU))
            {
                variables.numU--;
                return 'u';
            }
            currentPos += variables.numU;
            if (letter < (currentPos + variables.numD))
            {
                variables.numD--;
                return 'd';
            }
            currentPos += variables.numD;
            if (letter < (currentPos + variables.numG))
            {
                variables.numG--;
                return 'g';
            }
            currentPos += variables.numG;
            if (letter < (currentPos + variables.numB))
            {
                variables.numB--;
                return 'b';
            }
            currentPos += variables.numB;
            if (letter < (currentPos + variables.numC))
            {
                variables.numC--;
                return 'c';
            }
            currentPos += variables.numC;
            if (letter < (currentPos + variables.numM))
            {
                variables.numM--;
                return 'm';
            }
            currentPos += variables.numM;
            if (letter < (currentPos + variables.numP))
            {
                variables.numP--;
                return 'p';
            }
            currentPos += variables.numP;
            if (letter < (currentPos + variables.numF))
            {
                variables.numF--;
                return 'f';
            }
            currentPos += variables.numF;
            if (letter < (currentPos + variables.numH))
            {
                variables.numH--;
                return 'h';
            }
            currentPos += variables.numH;
            if (letter < (currentPos + variables.numV))
            {
                variables.numV--;
                return 'v';
            }
            currentPos += variables.numV;
            if (letter < (currentPos + variables.numW))
            {
                variables.numW--;
                return 'w';
            }
            currentPos += variables.numW;
            if (letter < (currentPos + variables.numY))
            {
                variables.numY--;
                return 'y';
            }
            currentPos += variables.numY;
            if (letter < (currentPos + variables.numK))
            {
                variables.numK--;
                return 'k';
            }
            currentPos += variables.numK;
            if (letter < (currentPos + variables.numJ))
            {
                variables.numJ--;
                return 'j';
            }
            currentPos += variables.numJ;
            if (letter < (currentPos + variables.numX))
            {
                variables.numX--;
                return 'x';
            }
            currentPos += variables.numX;
            if (letter < (currentPos + variables.numQ))
            {
                variables.numQ--;
                return 'q';
            }
            currentPos += variables.numQ;
            if (letter < (currentPos + variables.numZ))
            {
                variables.numZ--;
                return 'z';
            }
        }
        return '.';
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

	            lettersOnBoard[boardSize - i - 1] = Instantiate(letterObj, bankSpots[boardSize - i - 1], new Quaternion(0, 0, 0, 0)) as letterBehaviour;
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
				if (lettersOnStove[i] != null)
				{
					//lettersOnStove[i].transform.position = stoveSpots[i];
					 StartCoroutine(animateLetters(lettersOnStove[i],lettersOnStove[i].transform.position, stoveSpots[i]));
				}
				//checks all letters that are on the board but not the stove, and puts them in the correct position
				if (!lettersOnBoard[i].onStove)
				{
					//lettersOnBoard[i].transform.position = bankSpots[i];
					StartCoroutine(animateLetters(lettersOnBoard[i],lettersOnBoard[i].transform.position, bankSpots[i]));
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

			if (GUI.Button(new Rect(Screen.width*0.013f, Screen.height*0.65f, Screen.width*0.07f, Screen.width*0.07f), "", style))
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
        //This method will, when passed a word, check if it's a valid word
        //Our word list happens to contain uppercase only words, so convert before checking
        //Debug.Log ("Checking a word in checkForWord!");
        return (wordList.Contains(word.ToUpper()));
    }

}

