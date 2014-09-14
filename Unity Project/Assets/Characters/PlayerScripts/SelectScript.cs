using UnityEngine;
using System.Collections;

public class SelectScript : MonoBehaviour {
	//script reference 
	public GameObject gameController;
	VariableControl variables;

	//parent reference
	public GameObject characterParent;

	//click control variables 
	bool selected = false;
	int selectNum = -1;

	// Use this for initialization
	void Start () {
		//establishes script reference
		variables = gameController.GetComponent<VariableControl>();
	}
	
	// Update is called once per frame
	void Update () {
		//increases the character's size if it is selected
		if (selected) {
			gameObject.transform.localScale = new Vector3 (1.5F, 1.5F, 1.5F);
		} else {
			//otherwise resets character to regular size
			gameObject.transform.localScale = new Vector3 (1, 1, 1);
		}

		//deselects character when "Phase2" is loaded 
		if (Application.loadedLevelName == "Phase2" && selected) {
			selected = false;
			gameObject.transform.localScale = new Vector3 (0.5F, 0.5F, 0.5F);
		}
	}
	
	void OnMouseDown () {
		//only active during the selection phase
		if (Application.loadedLevelName == "Phase1") {
			//changes the selected state
			toggleSelect();
			//adds the character to the selected array and parents it to the main gameController
			if (selected) {
				selectNum = variables.currentCharacterSelectNum;
				variables.characterSelected[variables.currentCharacterSelectNum] = true;
				variables.selectedCharacters[variables.currentCharacterSelectNum++] = gameObject;
				gameObject.transform.parent = gameController.transform;
			} else {
				//reverses the effects: moving gameObject back to original parent and removing it from arrays
				gameObject.transform.parent = characterParent.transform;
				variables.characterSelected[selectNum] = false;
				variables.selectedCharacters[selectNum] = null;
				selectNum = -1;
			}
		}
	}

	void toggleSelect () {
		if (selected == true) {
			selected = false;
		} else if (selected == false) {
			selected = true;
		}
	}
}
