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

    bool playedVictory = false;
	
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
            audioManager.PlayLoop(5);
        }
        if (Application.loadedLevelName == "StartScreenTest")
        {
            audioManager.SetVolume(17, 0.0f);
            audioManager.SetVolume(5, 1.0f);
            audioManager.SetVolume(6, 0.0f);
            if (GameObject.Find("PlayButton").GetComponent<PlayButtonHandler>().buttonPressed == true || GameObject.Find("AboutButton").GetComponent<AboutButtonHandler>().buttonPressed == true)
            {
                audioManager.Play(1);

            }
        }

        if (Application.loadedLevelName == "ScoreScreen")
        {
            audioManager.SetVolume(6, 0.0f);
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
            

                if (GameObject.Find("Background").GetComponent<GoBackToMenu>().backToStart == true)
                {
                    Debug.Log("it has played");
                    audioManager.Play(1);


                }
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

    }
}