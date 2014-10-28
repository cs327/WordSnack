using UnityEngine;
using System.Collections;

public class PlayAgain : MonoBehaviour {
	public Sprite PlayAgainPressed;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown () {
		print ("clicked");
		gameObject.GetComponent<SpriteRenderer>().sprite = PlayAgainPressed;
		Application.LoadLevel("CharacterSelectTest");
	}
}
