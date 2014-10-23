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

    // This selects the appropriate gameBackground for the given state/scene
	void changeImage () {
		if (Application.loadedLevelName == "SplashScreen") {
			deactivateAllBackgrounds();
			splashBackground.transform.renderer.enabled = true; 
			print ("should have changed textures");
		} else if (Application.loadedLevelName == "StartScreenTest") {
			deactivateAllBackgrounds();
			//startBackground.transform.renderer.enabled = true;
		} else if (Application.loadedLevelName == "CharacterSelect" || Application.loadedLevelName == "WordMaking" ) {
			deactivateAllBackgrounds();
			gameBackground.transform.renderer.enabled = true;
		} else if (Application.loadedLevelName == "ScoreScreen") {
			deactivateAllBackgrounds();
			endBackground.transform.renderer.enabled = true;
		}
	}

    // This deactivates all backgrounds so a single one can be activated
	void deactivateAllBackgrounds () {
		splashBackground.transform.renderer.enabled = false; 
		startBackground.transform.renderer.enabled = false;
		gameBackground.transform.renderer.enabled = false;
		endBackground.transform.renderer.enabled = false;
	}
}
