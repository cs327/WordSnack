using UnityEngine;
using System.Collections;

public class SelectScript : MonoBehaviour {
	public GameObject gameController;
	public GameObject characterParent;
	VariableControl variables;
	bool selected = false;
	int selectNum = -1;
	// Use this for initialization
	void Start () {
		variables = gameController.GetComponent<VariableControl>();
	}
	
	// Update is called once per frame
	void Update () {
		if (selected) {
			gameObject.transform.localScale = new Vector3 (1.5F, 1.5F, 1.5F);
		} else {
			gameObject.transform.localScale = new Vector3 (1, 1, 1);
		}

		if (Application.loadedLevelName == "Phase2" && selected) {
			selected = false;
			gameObject.transform.localScale = new Vector3 (0.5F, 0.5F, 0.5F);
		}
	}

	void OnMouseDown () {
		toggleSelect();
		if (selected) {
			selectNum = variables.currentCharacterSelectNum;
			variables.characterSelected[variables.currentCharacterSelectNum] = true;
			variables.selectedCharacters[variables.currentCharacterSelectNum++] = gameObject;
			gameObject.transform.parent = gameController.transform;
		} else {
			gameObject.transform.parent = characterParent.transform;
			variables.characterSelected[selectNum] = false;
			variables.selectedCharacters[selectNum] = null;
			selectNum = -1;
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
