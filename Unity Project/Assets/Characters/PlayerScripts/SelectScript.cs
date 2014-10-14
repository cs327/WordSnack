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

	// variables added for displaying new UI - Ning
	SpriteRenderer chooseTwoSprite;
	SpriteRenderer chooseOneMoreSprite;
	public GameObject leftCard;
	public GameObject rightCard;
	//SpriteRenderer cardLeftSprite;
	//SpriteRenderer cardRightSprite;
	public bool newSelect;
	Camera camera;
	Bounds characterBounds;
	//-----------------------------------

	// Use this for initialization
	void Start () {
		//establishes script reference
		variables = variableController.GetComponent<VariableControl>();
		character = gameObject.GetComponent<Character>();
		camera = GameObject.Find ("Main Camera").GetComponent<Camera>();
		characterBounds = gameObject.GetComponent<BoxCollider> ().bounds;
		//setting the choose one more image to false so it will not show up until two characters 
		//are selected
		chooseTwoSprite = GameObject.Find ("chooseTwo").GetComponent<SpriteRenderer> ();
		chooseOneMoreSprite = GameObject.Find ("whoElse").GetComponent<SpriteRenderer> ();
		chooseTwoSprite.enabled = true;
		chooseOneMoreSprite.enabled = false;

		//cardLeftSprite = gameObject.transform.GetChild (0).GetComponent<SpriteRenderer> ();
		//cardRightSprite = gameObject.transform.transform.GetChild (1).GetComponent<SpriteRenderer> ();
		//cardLeftSprite.enabled = false;
		//cardRightSprite.enabled = false;
		leftCard.SetActive (false);
		rightCard.SetActive (false);

	}
		// Use this for initialization
		// Update is called once per frame
		void Update ()
		{

			// for testing new UI - Ning
			if (newSelect) {
				if (UniversalInput.press && UniversalInput.inRect (characterBounds, camera)) {
						//card.enabled = false;
						chooseTwoSprite.enabled = false;
						
					if(variables.currentCharacterSelectNum <1 ){
						chooseOneMoreSprite.enabled = true;
					}else{
						chooseOneMoreSprite.enabled = false;
					}
						

					if(variables.currentCharacterSelectNum == 1){
						//cardLeftSprite.enabled = true;
						leftCard.SetActive(true);
						gameObject.GetComponent<SpriteRenderer>().enabled = false;
					}else if(variables.currentCharacterSelectNum == 2){
						//cardRightSprite.enabled = true;
						rightCard.SetActive(true);
						gameObject.GetComponent<SpriteRenderer>().enabled = false;
					}else{
						//gameObject.GetComponent<SpriteRenderer>().enabled = true;
						//cardLeftSprite.enabled = false;
						//cardRightSprite.enabled = false;
							
					}
				}

//				if(cardLeftSprite.enabled == true){
//					// if click on the card on the left
//					if(UniversalInput.press && UniversalInput.inRect(transform.GetChild (0).GetComponent<BoxCollider>().bounds, camera)){
//						cardLeftSprite.enabled = false;
//						gameObject.GetComponent<SpriteRenderer>().enabled = true;
//					}
//				}else if(cardRightSprite.enabled == true){
//					// if click on the card on the right
//					if(UniversalInput.press && UniversalInput.inRect(transform.GetChild (1).GetComponent<BoxCollider>().bounds, camera)){
//						cardRightSprite.enabled = false;
//						gameObject.GetComponent<SpriteRenderer>().enabled = true;
//					}
//				}

			}

			else {
				//increases the character's size if it is selected
				if (selected) {
						Debug.Log("Something Has been pressed"); 
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

	

//	void OnMouseDown () {
//		newSelect = true;
//		//selected = true;
//		toggleSelect(); 
//		//only active during the selection phase
//		if (Application.loadedLevelName == "CharacterSelectTest" && (variables.currentCharacterSelectNum < variables.characterSelectNum || selected)) {
//			//changes the selected state
//			//toggleSelect();
//			//adds the character to the selected array and parents it to the main variableController
//			if (selected && variableController.transform.childCount < 2) {
//				selectNum = variables.currentCharacterSelectNum;
//				variables.characterSelected[variables.currentCharacterSelectNum] = true;
//				variables.selectedCharacters[variables.currentCharacterSelectNum] = gameObject;
//				variables.selectedCharacterNums[variables.currentCharacterSelectNum++] = character.characterNum;
//				gameObject.transform.parent = variableController.transform;
//			} else if (selected == false) {
//				//reverses the effects: moving gameObject back to original parent and removing it from arrays
//				gameObject.transform.parent = characterParent.transform;
//				variables.characterSelected[selectNum] = false;
//				variables.selectedCharacters[selectNum] = null;
//				selectNum = -1;
//			}
//		}
//	}


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

	public void loadMainGame () {
		//		for (int i = 0; i < variables.characterSelectNum; i++) {
		//			variables.selectedCharacters[i].transform.position = variables.phase2CharacterPositions[i];
		//		}
		variables.timeToChangeGameState = false;
		PlayerPrefs.SetInt("Character 1", variables.selectedCharacterNums[0]);
		PlayerPrefs.SetInt("Character 2", variables.selectedCharacterNums[1]);
		Application.LoadLevel("WordMaking");
		//moves the characters into their appropriate positions
	}
}
