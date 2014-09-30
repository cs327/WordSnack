using UnityEngine;
using System.Collections;

public class ChangeScene : MonoBehaviour {
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown () {
		if (Application.loadedLevelName == "SplashScreen") {
			Application.LoadLevel("StartScreen");
		}
	}
}
