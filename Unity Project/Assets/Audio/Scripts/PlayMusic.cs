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

        charSel = selecter.GetComponent<CharacterSelectUI>();
        variableControl = vControl.GetComponent<VariableControl>();

		if(Application.loadedLevelName == "StartScreenTest"){
			playButtonHandler = GameObject.Find ("PlayButton").GetComponent<PlayButtonHandler>();
			aboutButtonHandler = GameObject.Find ("AboutButton").GetComponent<AboutButtonHandler>();
           
		}
        if (Application.loadedLevelName == "ScoreScreen")
        {
            receipt = receiptScript.GetComponent<ReceiptMove>();
            toMenu = toMenuScript.GetComponent<GoBackToMenu>();
        }
	
	}
	
	// Update is called once per frame
	void Update () {

        if (Application.loadedLevelName == "StartScreenTest")
        {	
            audioManager.PlayLoop(7);
            if (playButtonHandler.buttonPressed == true || aboutButtonHandler.buttonPressed == true)
            {
                audioManager.Play(1);
			
            }
	
        }

        if (Application.loadedLevelName == "ScoreScreen")
        {   
            if (receipt.winSound == true)
            {
                audioManager.PlayLoop(20);
              //  audioManager.FadeOut(20);
                //receipt.winSound = false;
            }

            if(toMenu.backToStart == true){
                Debug.Log("it has played");
                audioManager.Play(1);


            }

        }

        if (variableControl.currentCharacterSelectNum == 0)
        {
            numSelected = 0;

        }

        if (variableControl.currentCharacterSelectNum > numSelected)
        {
            if (variableControl.currentCharacterSelectNum == 2)
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

        if (variableControl.currentCharacterSelectNum < numSelected)
        {
            audioManager.Play(1);
            numSelected--;
        }


        if (charSel.FeedPressed == true)
        {
            audioManager.Play(3);
            charSel.FeedPressed = false;
        }

    }
}