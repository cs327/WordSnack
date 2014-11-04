using UnityEngine;
using System.Collections;
public class PlayMusic : MonoBehaviour {
	
	public GameObject audio;
	AudioManager audioManager;
	
	PlayButtonHandler playButtonHandler;
	AboutButtonHandler aboutButtonHandler;

    public GameObject selecter;
    CharacterSelectUI charSel;

    public GameObject VariableControl;
    VariableControl variables;

    public GameObject wordControl;
    wordBuildingController words;

    int numSelected = 0;

    ReceiptMove receipt;
    public GameObject receiptScript;

    GoBackToMenu toMenu;
    public GameObject toMenuScript;

    bool playedVictory = false;

    int i = 0;

    LetterController letterController;

    bool sizzleStart = false;
    bool sizzleEnd = false;
    bool playedSteamEnd = false;
    bool sizzled = false;
    bool letterGen;


	//public GameObject audioManager;
	
	// Use this for initialization
	void Start () {
		
        audioManager = audio.GetComponent<AudioManager>();
        audioManager.SetAllVolume();


        if (Application.loadedLevelName == "SplashScreen")
        {

        }

        if (Application.loadedLevelName == "StartScreenTest")
        {
            playButtonHandler = GameObject.Find("PlayButton").GetComponent<PlayButtonHandler>();
            aboutButtonHandler = GameObject.Find("AboutButton").GetComponent<AboutButtonHandler>();

        }


        if (Application.loadedLevelName == "WordMaking")
        {
            variables = GetComponent<VariableControl>();
            letterGen = GameObject.Find("VariableController").GetComponent<VariableControl>().letterGenerationSound;
            words= GameObject.Find("GameController").GetComponent<wordBuildingController>();
        }
	
	}
	
	// Update is called once per frame
	void Update () {

        if (Application.loadedLevelName == "WordMaking")
        {
            audioManager.Stop(4);
            audioManager.PlayLoop(5);
            NewOnStove();
            Sizzle();
            //HappySound();
            RejectedSound();
            Chewing();
            Shuffle();
            Pause();
            ClickSound();

        }

        if (Application.loadedLevelName == "SplashScreen")
        {
                audioManager.Stop(5);
                audioManager.Stop(20);
                audioManager.Stop(16);
                audioManager.Stop(14);
                audioManager.PlayLoop(4);
        }
        if (Application.loadedLevelName == "StartScreenTest")
        {
            audioManager.Stop(5);
            audioManager.Stop(20);
            audioManager.Stop(16);
            audioManager.Stop(14);

            if (audioManager.audioSourceArray[4].isPlaying == false)
            {
                audioManager.PlayLoop(4);
            }

            if (GameObject.Find("PlayButton").GetComponent<PlayButtonHandler>().buttonPressed == true || GameObject.Find("AboutButton").GetComponent<AboutButtonHandler>().buttonPressed == true)
            {
                audioManager.Play(1);

            }
        }

        if (Application.loadedLevelName == "ScoreScreen")
        {
            audioManager.Stop(5);
           
        // if (gameObject.GetComponent<ReceiptMove>().winSound == true)

            //////////////////
            //LOOPED VERSION//
            //////////////////

            //if (GameObject.Find("ReceiptPrefab").transform.position.y < 1.20)
            //{
            //    audioManager.PlayLoop(20);
            //    audioManager.PlayLoop(14);
            //    //  audioManager.FadeOut(17);
            //    //receipt.winSound = false;
            //}
            //else if (playedVictory == false && audioManager.audioSourceArray[14].isPlaying == false)
            //{
            //    // audioManager.KillAll();
            //    audioManager.Play(15);
            //    playedVictory = true;
            //    Debug.Log("helllyeah");
            //}

            if (GameObject.Find("ReceiptPrefab").transform.position.y < 1.20)
            {
                audioManager.PlayLoop(20);
                audioManager.PlayLoop(16);
            }

            if (GameObject.Find("Menu").GetComponent<GoBackToMenu>().backToStart == true)
            {
                Debug.Log("it has played");
                audioManager.Play(1);


            }
            
        }


        if (Application.loadedLevelName == "CharacterSelectTest")
        {
            audioManager.Stop(5);
            audioManager.Stop(20);
            audioManager.Stop(16);
            audioManager.Stop(14);

            if (audioManager.audioSourceArray[4].isPlaying == false)
            {
                audioManager.PlayLoop(4);
            }

           

            if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum > numSelected)
            {
               
                    audioManager.Play(1);
                    Debug.Log("ding");
                    numSelected++;
                if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum == 0)
                {
                    numSelected = 0;
                }
            }

            if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum < numSelected)
            {
                audioManager.Play(1);
                numSelected--;
                Debug.Log(numSelected.ToString());
            }


            if (GameObject.Find("feedMe").GetComponent<CharacterSelectUI>().FeedPressed == true)
            {
                audioManager.Play(2);
                GameObject.Find("feedMe").GetComponent<CharacterSelectUI>().FeedPressed = false;
            }
        }
    }



    // Update is called once per frame

    void NewOnStove()
    {
       // if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
        //{
          //  i = 0;
       // }
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > i)
        {
            audioManager.Play(6);
            i++;
        }
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove < i)
        {
            audioManager.Play(8);
            i--;
        }
    }
    //Method to play Happy sounds when a character likes a word.
    //void HappySound()
    //{
    //    if (GameObject.Find("VariableController").GetComponent<VariableControl>().happySound > 0)
    //    {
    //        audioManager.Play(GameObject.Find("VariableController").GetComponent<VariableControl>().happySound);
    //        GameObject.Find("VariableController").GetComponent<VariableControl>().bonus = false;
    //        GameObject.Find("VariableController").GetComponent<VariableControl>().happySound = 0;
    //    }
    //}
    void RejectedSound()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().sadSound != 0)
        {
            audioManager.Play(GameObject.Find("VariableController").GetComponent<VariableControl>().sadSound);
            GameObject.Find("VariableController").GetComponent<VariableControl>().sadSound = 0;
        }
    }
    void Sizzle()
    {
       
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
        {
            sizzleStart = false;
            sizzleEnd = false;
           
            audioManager.Stop(10);
        }


        if (sizzleStart == false && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > 0 )
        {
            audioManager.Play(10); // start sound goes 
            sizzleStart = true;
           
        }

        if (sizzleStart == true && audioManager.audioSourceArray [10].isPlaying == false && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > 0)
        {
//           audioManager.SetVolume(11, 0.2f); //play sizzle loop
            audioManager.PlayLoop(11);
            sizzled = true;
            playedSteamEnd = false;

        } else
        {
            audioManager.Stop(11);
        }



        if(playedSteamEnd == false && audioManager.audioSourceArray[10].isPlaying == false && sizzled == true && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
        {
            audioManager.Play(37);
            Debug.Log("steamend");
            playedSteamEnd = true;

        }



        
}
    void Chewing()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().chewing == true)
        {
            audioManager.Play(GameObject.Find("VariableController").GetComponent<VariableControl>().chewingSound);
            GameObject.Find("VariableController").GetComponent<VariableControl>().chewing = false;
            if (GameObject.Find("VariableController").GetComponent<VariableControl>().chewingSound == 13)
            {

               // if(GameObject.Find("GameController").GetComponent<wordBuildingController>().bothTastes == true){
                if ((GameObject.Find("VariableController").GetComponent<VariableControl>().timeToHighlightTaste[0] 
                     && GameObject.Find("VariableController").GetComponent<VariableControl>().timeToHighlightTaste[1]) 
                    || (GameObject.Find("VariableController").GetComponent<VariableControl>().timeToHighlightTaste[2] 
                    &&   GameObject.Find("VariableController").GetComponent<VariableControl>().timeToHighlightTaste[3])){
                    audioManager.Play(23);
                    Debug.Log("double taste");
                   // words.bothTastes = false;
                }

                //DelayedSuccessSound();
               else if (GameObject.Find("VariableController").GetComponent<VariableControl>().bonus == true)
                {
                    audioManager.Play(21);
                    Debug.Log("Taste");

                }


                else 
                {
                    audioManager.Play(22);
                    Debug.Log("Neutral");
                }
            }
            MoreDelayedLetterGeneration();
            Debug.Log("Letter Generation");

        }
       // words.bothTastes = false;
    }
    void Shuffle()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().shuffleSound == true)
            audioManager.Play(19);
        GameObject.Find("VariableController").GetComponent<VariableControl>().shuffleSound = false;

    }
    void LetterGenerationSound()
    {
        audioManager.Play(7);
  //      GameObject.Find("VariableController").GetComponent<VariableControl>().letterGenerationSound = false;
        Debug.Log("generation");
    }
    void DelayedLetterGeneration()
    {
        Invoke("LetterGenerationSound", 0.5f);
    }
    void MoreDelayedLetterGeneration()
    {
        Invoke("LetterGenerationSound", 0.4f);
    }
    void Pause()
    {
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().gamePaused == true)
        {
            audioManager.Pause(6);
        }
        //else if (GameObject.Find("VariableController").GetComponent<LetterController>().gamePaused == true)
        //{

        //}
    }
    //void SuccessSound()
    //{
    //    audioManager.Play(13);
    //}
    //void DelayedSuccessSound()
    //{
    //    Invoke("SuccessSound", 0.5f);
    //}
    void ClickSound()
    {
        if (GameObject.Find("instructions").GetComponent<Tutorial>().clickSound == true)
        {
            audioManager.Play(1);
            GameObject.Find("instructions").GetComponent<Tutorial>().clickSound = false;
        }
    }

}