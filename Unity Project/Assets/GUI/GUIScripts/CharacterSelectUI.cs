﻿using UnityEngine;
using System.Collections;

public class CharacterSelectUI : MonoBehaviour {
	public VariableControl variables;
	public GameObject chooseTwo;
	public GameObject whoElse;
	public GameObject characters;
	SpriteRenderer feedMeSprite;
	public bool FeedPressed = false;
	public bool buttonActive = false;
	public Color buttonColor;
	public Color transparentColor;
	public Texture feedMeClicked;
	public Texture feedMeUnClicked;
	public Texture loadingGUI;
	//public GameObject feedMePressed;

	// Use this for initialization
	void Start () {
		variables = GameObject.Find("VariableController").GetComponent<VariableControl>();
		buttonColor = gameObject.transform.GetComponent<Renderer>().material.color;
		feedMeSprite = gameObject.GetComponent<SpriteRenderer> ();
		//feedMePressed = GameObject.Find ("feedMePressed");
//		feedMeSprite.enabled = false;
		whoElse.SetActive(false);
		chooseTwo.SetActive (false);
		gameObject.transform.GetComponent<Renderer>().material.color = new Color(buttonColor.r, buttonColor.g, buttonColor.b, 0);
		transparentColor = new Color(buttonColor.r, buttonColor.g, buttonColor.b, 0);

//		//hide the highlited feed them button
//		feedMePressed.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		if(variables.currentCharacterSelectNum == 0){
			chooseTwo.SetActive(true);
			whoElse.SetActive(false);
				
		}
		if(variables.currentCharacterSelectNum == 1){
			chooseTwo.SetActive(false);
			whoElse.SetActive(true);
//			feedMeSprite.enabled = false;

			if(variables.selectedCharacters[0] == null){
				if (variables.selectedCharacters[1] == null) {
					whoElse.transform.position = new Vector3(-3f,-4.0f,0);
				} else {
					whoElse.transform.position = new Vector3(-2.5f, -2.0f, 0);
				}
			}
			else{
				//whoElse.transform.position = new Vector3(2.01f,-.786f,0);
				whoElse.transform.position = new Vector3(2.5f, -2.0f, 0);
			}
		}

//		if (variables.currentCharacterSelectNum < 2) {
////			gameObject.transform.position = new Vector3 (0, -1, -20);
//		}


		if(variables.currentCharacterSelectNum == variables.characterSelectNum){
//			gameObject.transform.position = new Vector3 (0, 1, -10);
			chooseTwo.SetActive(false);
			whoElse.SetActive(false);
			if (gameObject.transform.GetComponent<Renderer>().material.color == transparentColor) {
				StopCoroutine("toggleStart");
				StartCoroutine(toggleStart(true));
				buttonActive = true;
//				StopCoroutine("toggleStart");
			}
		} else if (buttonActive && gameObject.transform.GetComponent<Renderer>().material.color == buttonColor) {
			StopCoroutine("toggleStart");
			StartCoroutine(toggleStart(false));
			buttonActive = false;
			//				StopCoroutine("toggleStart");
		}
		if (buttonActive) {
			gameObject.GetComponent<BoxCollider>().enabled = true;
		} else {
			gameObject.GetComponent<BoxCollider>().enabled = false;
		}
	}

	void OnMouseDown(){
		if (buttonActive) {
			gameObject.GetComponent<MeshRenderer> ().GetComponent<Renderer>().material.mainTexture = feedMeClicked;
		}
	}
//	void OnMouseUp()
//	{
//		gameObject.GetComponent<MeshRenderer>().renderer.material.mainTexture = feedMeUnClicked;
//	}
	void OnMouseUpAsButton()
	{
		if (buttonActive) {
	//		gameObject.GetComponent<MeshRenderer>().renderer.material.mainTexture = feedMeUnClicked;
			FeedPressed = true;
			characters.SetActive(false);
//			gameObject.GetComponent<MeshRenderer> ().transform.localScale = new Vector3(0.875f, 0.075f, 0.25f);
			gameObject.GetComponent<MeshRenderer> ().GetComponent<Renderer>().material.mainTexture = loadingGUI;
			gameObject.GetComponentInChildren<TextMesh>().transform.position += Vector3.down * 2;
//			gameObject.GetComponentInChildren<TextMesh>().transform.localScale = new Vector3 (0.15f, 0.5f, 1);
			GameObject.Find("GameController").GetComponent<characterSelectController>().loadMainGame();
		}
	}

	void OnMouseUp(){
		if (buttonActive && !FeedPressed) {
			gameObject.GetComponent<MeshRenderer> ().GetComponent<Renderer>().material.mainTexture = feedMeUnClicked;
		}
	}

	//coroutine to fade the start button in and out
	IEnumerator toggleStart (bool fadeIn) {
		if (fadeIn) {
			print ("fading in");
		} else {
			print ("fading out");
		}
		float percentComplete = 0.00f;
		Color startColor;
		Color endColor;
		Color currentColor;
		if (fadeIn) {
			startColor = transparentColor;
			endColor = buttonColor;
		} else {
			startColor = buttonColor;
			endColor = transparentColor;
			print("fading out");
			print (buttonActive);
		}
		while (percentComplete < 1.0f) {
			// make progress as a ratio of deltaTime and desired total time
			percentComplete += Time.deltaTime /0.4f;
			// update the position based on our percentage complete
			currentColor = Color.Lerp(startColor, endColor, percentComplete);
			gameObject.transform.GetComponent<Renderer>().material.color = currentColor;
			// stop processing for now, and continue next frame
			yield return null;
		}
	}
}
