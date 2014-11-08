using UnityEngine;
using System.Collections;
public class PlayMusic : MonoBehaviour {
	
	public GameObject audio;
	AudioManager audioManager;
	
	//PlayButtonHandler playButtonHandler;
	//AboutButtonHandler aboutButtonHandler;

	//public GameObject selecter;
	//CharacterSelectUI charSel;

	//public GameObject VariableControl;
	//VariableControl variables;

	//public GameObject wordControl;
	//wordBuildingController words;

   // public GameObject character;
	//Character charac;

	int numSelected = 0;

	//ReceiptMove receipt;
	//public GameObject receiptScript;

	//GoBackToMenu toMenu;
	//public GameObject toMenuScript;

	//bool playedVictory = false;

	int i = 0;

	//LetterController letterController;
	
	//Booleans for Stove Sound Looping.
	bool sizzleStart = false;
	bool sizzleEnd = false;
	bool playedSteamEnd = false;
	bool sizzled = false;

	//Boolean 
	//bool letterGen;


	//public GameObject audioManager;
	
	// Use this for initialization
	void Start () {
		
		audioManager = audio.GetComponent<AudioManager>();
		audioManager.SetAllVolume();


		if (Application.loadedLevelName == "SplashScreen")
		{
			//Plays the Space Ship Sound with a possible delay.
			Invoke("SpaceShipSound", 0);
		}

	}
	
	// Update is called once per frame
	void Update () {
		//Splash Screen Sounds
		if (Application.loadedLevelName == "SplashScreen")
		{
			//Stops any other music or sound tracks that may still be playing.
			audioManager.Stop(5);
			audioManager.Stop(20);
			audioManager.Stop(16);
			audioManager.Stop(14);
			//Plays the Menu Music
			audioManager.PlayLoop(4);
		}

		if (Application.loadedLevelName == "StartScreenTest")
		{
			//Stops any music that should not be playing
			audioManager.Stop(5);
			audioManager.Stop(20);
			audioManager.Stop(16);
			audioManager.Stop(14);

			//Plays the menu music only if it is not already playing.
			if (audioManager.audioSourceArray[4].isPlaying == false)
			{
				audioManager.PlayLoop(4);
			}
			//Click sound for Play button and About Button.
			if (GameObject.Find("PlayButton").GetComponent<PlayButtonHandler>().buttonPressed == true || GameObject.Find("AboutButton").GetComponent<AboutButtonHandler>().buttonPressed == true)
			{
				audioManager.Play(1);
			}
		}

		//Sounds for Character Select Screen
		if (Application.loadedLevelName == "CharacterSelectTest")
		{
			//Stops any sounds that should not be playing.
			audioManager.Stop(5);
			audioManager.Stop(20);
			audioManager.Stop(16);
			audioManager.Stop(14);

			//Plays menu music if it is not already playing.
			if (audioManager.audioSourceArray[4].isPlaying == false)
			{
				audioManager.PlayLoop(4);
			}
			//////////////////////////////////
			//Character Select Sound effects//
			//////////////////////////////////

			//Plays Click sound when first character is selected. Plays second character selected sound when second character is selected.
			if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum > numSelected)
			{
				if (numSelected == 0)
				{
					audioManager.Play(1);
				}
				else
				{
					audioManager.Play(3);
				}
				Debug.Log("ding");
				numSelected++;
				if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum == 0)
				{
					numSelected = 0;
				}
			}

			//Plays click sound when characters are unselected.
			if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum < numSelected)
			{
				audioManager.Play(1);
				numSelected--;
				Debug.Log(numSelected.ToString());
			}

			//Plays "FeedMe" sound when feed them button is pressed.
			if (GameObject.Find("feedMe").GetComponent<CharacterSelectUI>().FeedPressed == true)
			{
				audioManager.Play(2);
				GameObject.Find("feedMe").GetComponent<CharacterSelectUI>().FeedPressed = false;
			}
		}
		////////////////////////////
		//Word Making Phase Sounds//
		////////////////////////////
		if (Application.loadedLevelName == "WordMaking")
		{
			//Stops the Menu Music.
			audioManager.Stop(4);
			//Loops the GamePlay Music.
			audioManager.PlayLoop(5);
			NewOnStove();
			Sizzle();
			RejectedSound();
			Chewing();
			Shuffle();
			Pause();
			ClickSound();

		}
		///////////////////////
		//Score Screen Sounds//
		///////////////////////
		if (Application.loadedLevelName == "ScoreScreen")
		{
			//Stops the GamePlay Music
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

			//Loops the Receipt printing sounds while the receipt is both on screen and moving.
			if ((1.20 > GameObject.Find("ReceiptPrefab").transform.position.y) && (GameObject.Find("ReceiptPrefab").transform.position.y > -6.5))
			{
				audioManager.PlayLoop(20);
			}
			//Loops the Victory Music until receipt stops moving.
			if (GameObject.Find("ReceiptPrefab").transform.position.y < 1.20)
			{
				audioManager.PlayLoop(16);
			}
			//Click Sound for Menu Button
			if (GameObject.Find("Menu").GetComponent<GoBackToMenu>().clickSound == true)
			{
				Debug.Log("it has played");
				audioManager.Play(1);
				GameObject.Find("Menu").GetComponent<GoBackToMenu>().clickSound = false;
			}
			//Click Sound for Play Again Button.
			if (GameObject.Find("PlayAgain").GetComponent<PlayAgain>().clickSound == true)
			{
				audioManager.Play(1);
				GameObject.Find("PlayAgain").GetComponent<PlayAgain>().clickSound = false;
			}
			
		}


	}



	// Update is called once per frame

	//NewOnStove plays letter select sound when letters move to the stove, letter deselect sound when moving letters off the stove.
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
	
	//RejectedSound plays the rejected sound when a character is fed something that is not a word.
	void RejectedSound()
	{
		if (GameObject.Find("VariableController").GetComponent<VariableControl>().sadSound != 0)
		{
			audioManager.Play(GameObject.Find("VariableController").GetComponent<VariableControl>().sadSound);
			GameObject.Find("VariableController").GetComponent<VariableControl>().sadSound = 0;
		}
	}

	//Sizzle plays the sizzle sound when letters are on the stove.
	void Sizzle()
	{
		//Stops any sizzling if there are no letters on the stove.
		if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
		{
			sizzleStart = false;
			sizzleEnd = false;
		   
			audioManager.Stop(10);
		}
		//Plays the beginning of the sizzle sound when a letter is added to the stove.
		if (sizzleStart == false && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > 0 )
		{
			audioManager.Play(10); // start sound goes 
			sizzleStart = true;
		   
		}
		//Loops the middle of the sizzle sound while the letter is on the stove.
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
		//Plays the end of the sizzle sound when the letter is removed from the stove.
		if(playedSteamEnd == false && audioManager.audioSourceArray[10].isPlaying == false && sizzled == true && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
		{
			audioManager.Play(37);
			Debug.Log("steamend");
			playedSteamEnd = true;

		}



		
	}
	//Plays the sounds related to feeding a character an actual word.
	void Chewing()
	{
		//First plays Chewing sound if the character is not the trash character, otherwise plays the trash sound.
		if (GameObject.Find("VariableController").GetComponent<VariableControl>().chewing == true)
		{
			audioManager.Play(GameObject.Find("VariableController").GetComponent<VariableControl>().chewingSound);
			GameObject.Find("VariableController").GetComponent<VariableControl>().chewing = false;
			//Next, checks for tastes if the character is not the trash character.
			if (GameObject.Find("VariableController").GetComponent<VariableControl>().chewingSound == 13)
			{
				//If only one taste is met, play "Taste matched sound.
				if (GameObject.Find("VariableController").GetComponent<VariableControl>().timeToHighlightTaste[0]
						^ GameObject.Find("VariableController").GetComponent<VariableControl>().timeToHighlightTaste[1]
						^ GameObject.Find("VariableController").GetComponent<VariableControl>().timeToHighlightTaste[2]
						^ GameObject.Find("VariableController").GetComponent<VariableControl>().timeToHighlightTaste[3])

						{
							audioManager.Play(21);
							Debug.Log("Taste");

						}
				//If no tastes are met, play neutral sound.
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
		if (GameObject.Find("VariableController").GetComponent<VariableControl>().paused == true)
		{
			audioManager.Pause(5);
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
		if (Application.loadedLevelName == "WordMaking")
		{
			if (GameObject.Find("pauseButton").GetComponent<pause>().clickSound == true)
			{
				audioManager.Play(1);
				GameObject.Find("pauseButton").GetComponent<pause>().clickSound = false;
			}

			if (GameObject.Find("VariableController").GetComponent<VariableControl>().paused == true)
			{
				if (GameObject.Find("resumeButton").GetComponent<resumeButton>().clickSound == true)
				{
					audioManager.Play(1);
					GameObject.Find("resumeButton").GetComponent<resumeButton>().clickSound = false;
				}
				if (GameObject.Find("exitButton").GetComponent<exitGameplayButton>().clickSound == true)
				{
					audioManager.Play(1);
					GameObject.Find("exitButton").GetComponent<exitGameplayButton>().clickSound = false;
				}
			}

		}

	}
	void SpaceShipSound()
	{
		audioManager.Play(26);
	}

}