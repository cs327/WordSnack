using UnityEngine;
using System.Collections;

public class SelectScript : MonoBehaviour {
	//script reference 
	public GameObject variableController;
	VariableControl variables;
	Character character;
	//parent reference
	public GameObject characterParent;
	//click control variables 
	public bool selected = false;
	int selectNum = -1;
	public GameObject chooseTwoMessage;

	public bool newSelect;
	Camera camera;
	Bounds characterBounds;
	SpriteRenderer card;


	// Use this for initialization
	void Start () {
		//establishes script reference
		variables = variableController.GetComponent<VariableControl>();
		character = gameObject.GetComponent<Character>();
		camera = GameObject.Find ("Main Camera").GetComponent<Camera>();
		characterBounds = gameObject.GetComponent<BoxCollider> ().bounds;
		card = gameObject.GetComponent<SpriteRenderer> ();

	}
		// Use this for initialization
		// Update is called once per frame
		void Update ()
		{
			if(newSelect){
				
				if(UniversalInput.press && UniversalInput.inRect(characterBounds, camera)){
					card.enabled = false;
					chooseTwoMessage.SetActive(false);
			
				}


			}
			else{
				//increases the character's size if it is selected
				if (selected) {
						gameObject.transform.localScale = new Vector3 (1.5F, 1.5F, 1.5F);

				} else {
						//otherwise resets character to regular size
						gameObject.transform.localScale = new Vector3 (1, 1, 1);
				}

				//deselects character when "Phase2" is loaded 
				if (Application.loadedLevelName == "WordMaking" && selected) {
						selected = false;
						gameObject.transform.localScale = new Vector3 (0.5F, 0.5F, 0.5F);
				}
			}
		}

	

	void OnMouseDown () {
		//only active during the selection phase
		if (Application.loadedLevelName == "CharacterSelect" && (variables.currentCharacterSelectNum < variables.characterSelectNum || selected)) {
			//changes the selected state
			toggleSelect();
			//adds the character to the selected array and parents it to the main variableController
			if (selected && variableController.transform.childCount < 2) {
				selectNum = variables.currentCharacterSelectNum;
				variables.characterSelected[variables.currentCharacterSelectNum] = true;
				variables.selectedCharacters[variables.currentCharacterSelectNum] = gameObject;
				variables.selectedCharacterNums[variables.currentCharacterSelectNum++] = character.characterNum;
				gameObject.transform.parent = variableController.transform;
			} else if (selected == false) {
				//reverses the effects: moving gameObject back to original parent and removing it from arrays
				gameObject.transform.parent = characterParent.transform;
				variables.characterSelected[selectNum] = false;
				variables.selectedCharacters[selectNum] = null;
				selectNum = -1;
			}
		}
	}


	void toggleSelect ()
	{
			if (selected == true) {
					selected = false;
			} else if (selected == false) {
					selected = true;
			}
	}

	void OnGUI ()
	{
			if (selected) {
					float scale = Mathf.Max (Screen.width / 479.0f, Screen.height / 319.0f);
					Camera c = GameObject.Find ("Main Camera").camera;
					Vector3 screenPoint = c.WorldToScreenPoint (gameObject.transform.position);
					string taste = gameObject.GetComponent<Character> ().thingsILike;
					GUIStyle boxStyle = "box";
					boxStyle.wordWrap = true;
					GUI.Box (new Rect (screenPoint.x - 30 * scale, screenPoint.y + 80 * scale, Screen.width * 0.15f, Screen.height * 0.2f), "Tastes:" + character.thingsILike);
			}
	}
}
