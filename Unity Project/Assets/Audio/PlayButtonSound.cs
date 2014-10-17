using UnityEngine;
using System.Collections;

public class PlayButtonSound : MonoBehaviour {

	public GameObject audio;
	AudioManager audioManager;
	StartScreenGUI UI;

	// Use this for initialization
	void Start () {
		UI = GameObject.Find ("Main Camera").GetComponent<StartScreenGUI> ();
		audioManager = audio.GetComponent<AudioManager>();
	}
	
	// Update is called once per frame
	void Update() {
		if (UI.buttonPressed) {
			audioManager.Play(1);
			Debug.Log("its true");
		}
	}
}
