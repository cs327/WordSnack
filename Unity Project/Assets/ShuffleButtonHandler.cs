using UnityEngine;
using System.Collections;

public class ShuffleButtonHandler : MonoBehaviour {

	LetterController l;
	public Sprite shufflePressed;
	public Sprite shuffleUnPressed;
    
	// Use this for initialization
	void Start () {
		l = GameObject.Find ("letterGeneration").GetComponent<LetterController> ();
	}

    // Shuffle button is pressed - shuffle the letters
	void OnMouseDown(){
		l.shuffleLetters ();
		gameObject.GetComponent<SpriteRenderer>().sprite = shufflePressed;
	}

	void OnMouseUp() {
		gameObject.GetComponent<SpriteRenderer>().sprite = shuffleUnPressed;
	}
}
