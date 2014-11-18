using UnityEngine;
using System.Collections;

public class ShuffleButtonHandler : MonoBehaviour {

	LetterController l;

	// Use this for initialization
	void Start () {
		l = GameObject.Find ("letterGeneration").GetComponent<LetterController> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown(){
		l.shuffleLetters ();
	}
}
