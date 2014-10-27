using UnityEngine;
using System.Collections;
public class PlayMusic : MonoBehaviour {
	
	public GameObject audio;
	AudioManager audioManager;
	
	PlayButtonHandler playButtonHandler;
	AboutButtonHandler aboutButtonHandler;

    public GameObject selecter;
    CharacterSelectUI charSel;

    public GameObject vControl;
    VariableControl variableControl;

    int numSelected = 0;

    ReceiptMove receipt;
    public GameObject receiptScript;

    GoBackToMenu toMenu;
    public GameObject toMenuScript;
	
	//public GameObject audioManager;
	
	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();

        if (Application.loadedLevelName == "CharacterSelectTest")
        {
            charSel = selecter.GetComponent<CharacterSelectUI>();
            variableControl = vControl.GetComponent<VariableControl>();
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
	
	}
	
	// Update is called once per frame
	void Update () {

        if (Application.loadedLevelName == "SplashScreen")
        {
            audioManager.PlayLoop(7);
        }
        if (Application.loadedLevelName == "StartScreenTest")
        {
            audioManager.SetVolume(20, 0.0f);
            audioManager.SetVolume(7, 1.0f);
            audioManager.SetVolume(9, 0.0f);
            if (GameObject.Find("PlayButton").GetComponent<PlayButtonHandler>().buttonPressed == true || GameObject.Find("AboutButton").GetComponent<AboutButtonHandler>().buttonPressed == true)
            {
                audioManager.Play(1);

            }
        }

        if (Application.loadedLevelName == "ScoreScreen")
        {
            audioManager.SetVolume(9, 0.0f);
         // if (gameObject.GetComponent<ReceiptMove>().winSound == true)
            {
                audioManager.SetVolume(20, 1.0f);
                audioManager.PlayLoop(20);
              //  audioManager.FadeOut(20);
                //receipt.winSound = false;
            }

            if (GameObject.Find("Background").GetComponent<GoBackToMenu>().backToStart == true)
            {
                Debug.Log("it has played");
                audioManager.Play(1);


            }

        }
        if (Application.loadedLevelName == "CharacterSelectTest")
        {
            if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum == 0)
            {
                numSelected = 0;

            }

            if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum > numSelected)
            {
                if (GameObject.Find("VariableController").GetComponent<VariableControl>().currentCharacterSelectNum == 2)
                {
                    audioManager.Play(6);
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
                audioManager.Play(1);
                numSelected--;
            }


            if (GameObject.Find("feedMe").GetComponent<CharacterSelectUI>().FeedPressed == true)
            {
                audioManager.Play(3);
                GameObject.Find("feedMe").GetComponent<CharacterSelectUI>().FeedPressed = false;
            }
        }

    }
}