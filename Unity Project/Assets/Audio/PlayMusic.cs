using UnityEngine;
using System.Collections;
public class PlayMusic : MonoBehaviour {
	
	public GameObject audio;
	AudioManager audioManager;
	
	StartScreenGUI gui;
	public GameObject guiScript;
	
	//public GameObject audioManager;
	
	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();
		if(Application.loadedLevelName == "StartScreenTest"){
			gui = guiScript.GetComponent<StartScreenGUI>();
		}
	
	}
	
	// Update is called once per frame
	void Update () {
		audioManager.PlayLoop (7);
		if(Application.loadedLevelName == "StartScreenTest"){	
	if (gui.buttonPressed == true) {
			audioManager.Play(1);
			Debug.Log("its true");
		}
	
	}
	}
}