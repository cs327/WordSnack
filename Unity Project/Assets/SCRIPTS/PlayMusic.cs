using UnityEngine;
using System.Collections;

public class PlayMusic : MonoBehaviour {

	public GameObject audio;
	AudioManager audioManager;
	//public GameObject audioManager;

	// Use this for initialization
	void Start () {
		audioManager = audio.GetComponent<AudioManager>();
		audioManager.PlayLoop(7);

		Debug.Log ("playing");
		//audioManager.FadeOut (9);
		//Debug.Log ("fading");
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
