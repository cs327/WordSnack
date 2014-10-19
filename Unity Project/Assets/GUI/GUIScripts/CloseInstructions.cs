using UnityEngine;
using System.Collections;

public class CloseInstructions : MonoBehaviour {

	public GameObject instructions;
	public GameObject checkBox;
	bool hideChecked;
	Vector3 position;

	// Use this for initialization
	void Start () {
		instructions = GameObject.Find ("instructionsBackground");
		position = instructions.GetComponent<Transform>().position;
		checkBox = GameObject.Find ("checkBox");
		hideChecked = checkBox.GetComponent<HideInstructions> ().disableInstructions;
	}
	
	// Update is called once per frame
	void Update (){ 
		hideChecked = checkBox.GetComponent<HideInstructions> ().disableInstructions;
	}

	void OnMouseDown(){
		Debug.Log ("clicked on the cross");
		position.x = -20.0f;
		instructions.GetComponent<Transform> ().position = position;

		if(hideChecked){
			PlayerPrefs.SetInt ("instructions", 1);
		}
	}
}
