//Hannah
//Plays all aduio in wordmaking scene!
using UnityEngine;
using System.Collections;

public class PlayMusic3 : MonoBehaviour {

	public GameObject audio;
	AudioManager audioManager;
	
	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();
	}
	
	// Update is called once per frame
	void Update () {
		
		audioManager.PlayLoop(9);
		
	}
}
