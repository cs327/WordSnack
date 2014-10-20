using UnityEngine;
using System.Collections;
public class PlayMusic : MonoBehaviour {
	
	public GameObject audio;
	AudioManager audioManager;
	
	StartScreenGUI gui;
	public GameObject guiScript;

    ReceiptMove receipt;
    public GameObject receiptScript;

    GoBackToMenu toMenu;
    public GameObject toMenuScript;
	
	//public GameObject audioManager;
	
	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();
		if(Application.loadedLevelName == "StartScreenTest"){
			gui = guiScript.GetComponent<StartScreenGUI>();
           
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
            if (gui.buttonPressed == true)
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