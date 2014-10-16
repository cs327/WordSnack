using UnityEngine;
using System.Collections;

public class ChangeScene : MonoBehaviour {
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		if (Time.time > 1.3) {
			if (Application.loadedLevelName == "SplashScreen") {
				Application.LoadLevel("StartScreenTest");
			}
		}
	
	}

    
	void OnMouseDown () {
		if (Application.loadedLevelName == "SplashScreen") {
			Application.LoadLevel("StartScreenTest");
		}
	}
}
