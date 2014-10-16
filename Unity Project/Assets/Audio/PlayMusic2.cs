//Hannah
//Handles audio in char select scene!
using UnityEngine;
using System.Collections;

public class PlayMusic2 : MonoBehaviour {

	public GameObject audio;
	AudioManager audioManager;

	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();
	}
	
	// Update is called once per frame
	void Update () {

		audioManager.PlayLoop(8);
	
	}
}
