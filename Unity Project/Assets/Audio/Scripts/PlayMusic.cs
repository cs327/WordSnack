using UnityEngine;
using System.Collections;
public class PlayMusic : MonoBehaviour {
	
	public GameObject audio;
	AudioManager audioManager;
	
	PlayButtonHandler playButtonHandler;
	AboutButtonHandler aboutButtonHandler;

    ReceiptMove receipt;
    public GameObject receiptScript;

    GoBackToMenu toMenu;
    public GameObject toMenuScript;
	
	//public GameObject audioManager;
	
	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();
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
    }
}