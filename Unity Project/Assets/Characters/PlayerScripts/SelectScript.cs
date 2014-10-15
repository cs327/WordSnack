using UnityEngine;
using System.Collections;

// 
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
    // A reference to the 
	public GameObject leftCard;
	public GameObject rightCard;
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

		leftCard.SetActive (false);
		rightCard.SetActive (false);

	}
		// Use this for initialization
		// Update is called once per frame
		void Update ()
		{
		print (variables.currentCharacterSelectNum);
				//increases the character's size if it is selected
				

				//deselects character when "Phase2" is loaded 
				if (Application.loadedLevelName == "WordMaking" && selected) {
						selected = false;
						gameObject.transform.localScale = new Vector3 (0.5F, 0.5F, 0.5F);
				}
		}
		

	

	void OnMouseDown () {
		if (variables.currentCharacterSelectNum > 1) {
			print ("this error is happening");
		}
		newSelect = true;
		//selected = true;
		toggleSelect(); 
		Debug.Log ("variables.currentCharacterSelectNum: " + variables.currentCharacterSelectNum);
		//only active during the selection phase
		if (Application.loadedLevelName == "CharacterSelectTest" && (variables.currentCharacterSelectNum < variables.characterSelectNum - 1 || selected)) {
			//changes the selected state
			//toggleSelect();
			//adds the character to the selected array and parents it to the main variableController
			if (selected) {

				selectNum = variables.currentCharacterSelectNum;
				variables.characterSelected[variables.currentCharacterSelectNum] = true;
				variables.selectedCharacters[variables.currentCharacterSelectNum] = gameObject;
				variables.selectedCharacterNums[variables.currentCharacterSelectNum] = character.characterNum;
				variables.currentCharacterSelectNum++;
//				gameObject.transform.parent = variableController.transform;
			} else if (selected == false) {
				//reverses the effects: moving gameObject back to original parent and removing it from arrays
//				gameObject.transform.parent = characterParent.transform;
				variables.characterSelected[selectNum] = false;
				variables.selectedCharacters[selectNum] = null;
				selectNum = -1;
				variables.currentCharacterSelectNum--;
			}

			if (selected) {
				Debug.Log("Something Has been pressed"); 
				//gameObject.transform.localScale = new Vector3 (1.5F, 1.5F, 1.5F);
				if(variables.currentCharacterSelectNum == 1){
					chooseTwoSprite.enabled = false;
					chooseOneMoreSprite.enabled = true;
					leftCard.SetActive(true);
					gameObject.GetComponent<SpriteRenderer>().enabled = false;
				}else if(variables.currentCharacterSelectNum == 2){
					chooseOneMoreSprite.enabled = false;
					rightCard.SetActive(true);
					gameObject.GetComponent<SpriteRenderer>().enabled = false;
				}else{
					gameObject.GetComponent<SpriteRenderer>().enabled = true;
				}
				
				
			} else {
				//otherwise resets character to regular size
				gameObject.transform.localScale = new Vector3 (1, 1, 1);
			}
		}
	}


	void toggleSelect ()
	{
		if (variables.currentCharacterSelectNum < variables.characterSelectNum) {
			selected = !selected;
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
