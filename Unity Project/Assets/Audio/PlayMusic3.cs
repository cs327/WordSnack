//Hannah
//Plays all aduio in wordmaking scene!
using UnityEngine;
using System.Collections;

public class PlayMusic3 : MonoBehaviour {

	int i = 0;

	public GameObject audio;
	AudioManager audioManager;

	public GameObject letterCont;
	LetterController letterController;

    VariableControl variables;
	
	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();
		letterController = letterCont.GetComponent<LetterController>();
        variables = GameObject.Find("VariableController").GetComponent<VariableControl>();
	}
	
	// Update is called once per frame
	void Update () {
		
		audioManager.PlayLoop(9);
		NewOnStove ();
        HappySound();
        SadSound();
		
	}
        
	void NewOnStove(){
				if (letterController.numLettersOnStove == 0) {
						i = 0;
				}
				if (letterController.numLettersOnStove > i) {
						audioManager.Play (13);
						i++;
				}
				if (letterController.numLettersOnStove < i) {
						audioManager.Play (14);
						i--;
				}
		}
    //Method to play Happy sounds when a character likes a word.
    void HappySound(){
        if ((variables.happySound > 0) && (variables.bonus))
        {
            audioManager.Play(variables.happySound);
            variables.bonus = false;
            variables.happySound = 0;
        }
    }
    void SadSound()
    {
        if ((variables.sadSound > 0) && (variables.notWord))
        {
            audioManager.Play(variables.sadSound);
            variables.notWord = false;
            variables.sadSound = 0;
        }
    }


}
