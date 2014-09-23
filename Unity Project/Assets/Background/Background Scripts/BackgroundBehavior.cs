using UnityEngine;
using System.Collections;

public class BackgroundBehavior : MonoBehaviour {
	public GameObject splashBackground;
	public GameObject startBackground;
	public GameObject gameBackground;
	public GameObject endBackground;

	// Use this for initialization
	void Start () {
		DontDestroyOnLoad(gameObject);
		deactivateAllBackgrounds();
	}
	
	// Update is called once per frame
	void Update () {
		changeImage();
	}

	void changeImage () {
		if (Application.loadedLevelName == "SplashScreen") {
			deactivateAllBackgrounds();
			splashBackground.transform.renderer.enabled = true; 
			print ("should have changed textures");
		} else if (Application.loadedLevelName == "StartScreen") {
			deactivateAllBackgrounds();
			startBackground.transform.renderer.enabled = true;
		} else if (Application.loadedLevelName == "CharacterSelect" || Application.loadedLevelName == "WordBuilding" ) {
			deactivateAllBackgrounds();
			gameBackground.transform.renderer.enabled = true;
		} else if (Application.loadedLevelName == "ScoreScreen") {
			deactivateAllBackgrounds();
			endBackground.transform.renderer.enabled = true;
		}
	}
	void deactivateAllBackgrounds () {
		splashBackground.transform.renderer.enabled = false; 
		startBackground.transform.renderer.enabled = false;
		gameBackground.transform.renderer.enabled = false;
		endBackground.transform.renderer.enabled = false;
	}
}
