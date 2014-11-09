using UnityEngine;
using System.Collections;

public class SetRowText : MonoBehaviour {
	string text;
	// Use this for initialization
	void Start () {
		switch(gameObject.name)
		{
		case "Discarded Letters Mesh":
			if (GameObject.Find("WordsFed") != null) {
				text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().trashLetterNum.ToString();
			} else {
				text = "0";
			}
			//                    text = PlayerPrefs.GetInt("Trashed Letters").ToString();
			break;
		case "Discarded Points Mesh":
			if (GameObject.Find("WordsFed") != null) {
				text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().trashedLetterScore.ToString ();
			} else {
				text = "0";
			}
			//                    text = PlayerPrefs.GetInt("Trashed Letter Score").ToString();
			break;
		case "Word Score Mesh":
			if (GameObject.Find("WordsFed") != null) {
				text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().rawScore.ToString();
			} else {
				text = "0";
			}
			//                    text = PlayerPrefs.GetInt("Total Letter Score").ToString();
			break;
		case "Multiplier Bonus Mesh":
			if (GameObject.Find("WordsFed") != null) {
				text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().multiScore.ToString();
			} else {
				text = "0";
			}
			//                    text = PlayerPrefs.GetInt("Total Multiplier Score").ToString();
			break;
		case "Total Mesh":
			if (GameObject.Find("WordsFed") != null) {
				text = GameObject.Find ("WordsFed").GetComponent<StoreWordsFed>().score.ToString();
			} else {
				text = "0";
			}
			//                    text = PlayerPrefs.GetFloat("Score").ToString();
			break;
		}
		gameObject.GetComponent<TextMesh>().text = text;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
