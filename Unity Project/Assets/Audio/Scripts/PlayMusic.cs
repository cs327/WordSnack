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

    public const int X = 24;
    public float[] volumeArray = new float[X];

	//public GameObject audioManager;
	
	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();

        foreach (UnityEngine.AudioSource element in audioManager.audioSourceArray)
        {
            int j = 1;
            audioManager.SetVolume(i, volumeArray[j]);
        }
        

        if (Application.loadedLevelName == "CharacterSelectTest")
        {
            charSel = selecter.GetComponent<CharacterSelectUI>();
            variables = GetComponent<VariableControl>();
        }
        if (Application.loadedLevelName == "StartScreenTest")
        {
            playButtonHandler = GameObject.Find("PlayButton").GetComponent<PlayButtonHandler>();
            aboutButtonHandler = GameObject.Find("AboutButton").GetComponent<AboutButtonHandler>();

        }

        if (Application.loadedLevelName == "ScoreScreen")
        {
            gameObject.AddComponent<ReceiptMove>();
            gameObject.AddComponent<GoBackToMenu>();
        }


        if (Application.loadedLevelName == "WordMaking")
        {
            DelayedLetterGeneration();
        }
	
	}
	
	// Update is called once per frame
	void Update () {

        if (Application.loadedLevelName == "WordMaking")
        {
            audioManager.PlayLoop(6);
        }

        if (Application.loadedLevelName == "SplashScreen")
        {
            audioManager.PlayLoop(5);
        }
        if (Application.loadedLevelName == "StartScreenTest")
        {
            audioManager.Stop(17);
            audioManager.Stop(16);
            audioManager.Stop(15);
            audioManager.Stop(21);
            if (audioManager.audioSourceArray[5].isPlaying == false)
            {
                audioManager.PlayLoop(5);
            }

            audioManager.Stop(6);

            if (GameObject.Find("PlayButton").GetComponent<PlayButtonHandler>().buttonPressed == true || GameObject.Find("AboutButton").GetComponent<AboutButtonHandler>().buttonPressed == true)
            {
                audioManager.Play(1);

            }
        }

        if (Application.loadedLevelName == "ScoreScreen")
        {
            audioManager.Stop(6);
            // if (gameObject.GetComponent<ReceiptMove>().winSound == true)
            {
                if (GameObject.Find("ReceiptPrefab").transform.position.y < 1.20)
                {
                    audioManager.SetVolume(21, 1.0f);         //17, 1.0f);
                    audioManager.PlayLoop(21);
                    audioManager.PlayLoop(15);
                    //  audioManager.FadeOut(17);
                    //receipt.winSound = false;
                } 
                else if(playedVictory == false && audioManager.audioSourceArray[15].isPlaying == false){
                   // audioManager.KillAll();
                    audioManager.Play(16);
                    playedVictory =true;
                    Debug.Log("helllyeah");
                }
            

                if (GameObject.Find("Menu").GetComponent<GoBackToMenu>().backToStart == true)
                {
                    Debug.Log("it has played");
                    audioManager.Play(1);


                }
            }
        }


        if (Application.loadedLevelName == "CharacterSelectTest")
        {
            audioManager.Stop(18);
            audioManager.Stop(17);
            audioManager.Stop(16);
            audioManager.Stop(15);
            audioManager.Stop(21);

            if (audioManager.audioSourceArray[5].isPlaying == false)
            {
                audioManager.PlayLoop(5);
            }

            if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum == 0)
            {
                numSelected = 0;
            }

            if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum > numSelected)
            {
                if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum == 2)
                {
                    audioManager.Play(4);
                    Debug.Log("booop");
                    numSelected++;
                }
                else
                {
                    audioManager.Play(1);
                    Debug.Log("ding");
                    numSelected++;
                }
            }

            if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum < numSelected)
            {
                audioManager.Play(3);
                numSelected--;
                Debug.Log(numSelected.ToString());
            }


            if (GameObject.Find("feedMe").GetComponent<CharacterSelectUI>().FeedPressed == true)
            {
                audioManager.Play(2);
                GameObject.Find("feedMe").GetComponent<CharacterSelectUI>().FeedPressed = false;
            }
        }

        if (Application.loadedLevelName == "WordMaking")
        {
            audioManager.PlayLoop(6);
            audioManager.Stop(5);
            //audioManager.Stop(5);
            NewOnStove();
            Sizzle();
            HappySound();
            RejectedSound();
            Chewing();
            Shuffle();
            Pause();
            letterGen = GameObject.Find("VariableController").GetComponent<VariableControl>().letterGenerationSound;
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
            audioManager.Play(7);
            i++;
        }
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove < i)
        {
            audioManager.Play(9);
            i--;
        }
    }
    //Method to play Happy sounds when a character likes a word.
    void HappySound()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().happySound > 0)
        {
            audioManager.Play(GameObject.Find("VariableController").GetComponent<VariableControl>().happySound);
            GameObject.Find("VariableController").GetComponent<VariableControl>().bonus = false;
            GameObject.Find("VariableController").GetComponent<VariableControl>().happySound = 0;
        }
    }
    void RejectedSound()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().notWord)
        {
            audioManager.Play(12);
            GameObject.Find("VariableController").GetComponent<VariableControl>().notWord = false;
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
        audioManager.SetVolume(11, 0.0f);
        audioManager.PlayLoop(11);


        if (sizzleStart == false && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > 0 )
        {
            audioManager.Play(10); // start sound goes 
            sizzleStart = true;
           
        }

        if (sizzleStart == true && audioManager.audioSourceArray [10].isPlaying == false && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > 0)
        {
            audioManager.SetVolume(11, 0.2f); //play sizzle loop
            sizzled = true;
            playedSteamEnd = false;

        } else
        {
            audioManager.SetVolume(11, 0.0f);
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
            if (GameObject.Find("VariableController").GetComponent<VariableControl>().chewingSound == 14)
            {
                DelayedSuccessSound();
                MoreDelayedLetterGeneration();
            }
        }
    }
    void Shuffle()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().shuffleSound == true)
            audioManager.Play(20);
        GameObject.Find("VariableController").GetComponent<VariableControl>().shuffleSound = false;

    }
    void LetterGeneration()
    {
        audioManager.Play(8);

        GameObject.Find("VariableController").GetComponent<VariableControl>().letterGenerationSound = false;
        Debug.Log("generation");
    }
    void DelayedLetterGeneration()
    {
        Invoke("LetterGeneration", 0.5f);
    }
    void MoreDelayedLetterGeneration()
    {
        Invoke("LetterGeneration", 0.6f);
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
    void SuccessSound()
    {
        audioManager.Play(13);
    }
    void DelayedSuccessSound()
    {
        Invoke("SuccessSound", 0.5f);
    }
}