using UnityEngine;
using System.Collections;

public class StartScreenGUI : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI () { 
		if (Application.loadedLevelName == "StartScreen") {
			if (GUI.Button (new Rect (100, 100, 100, 30), "Start")) {
				Application.LoadLevel("Phase1");
			}
		}
	}
}
