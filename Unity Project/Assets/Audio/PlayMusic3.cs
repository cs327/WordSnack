//Hannah
//Plays all aduio in wordmaking scene!
using UnityEngine;
using System.Collections;

public class PlayMusic3 : MonoBehaviour {

	int i =0;

	public GameObject audio;
	AudioManager audioManager;

	public GameObject letterCont;
	LetterController letterController;
	
	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();
		letterController = letterCont.GetComponent<LetterController>();
	}
	
	// Update is called once per frame
	void Update () {
		
		audioManager.PlayLoop(9);
		NewOnStove ();
		
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


}
