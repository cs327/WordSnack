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
	public int selectNum = -1;

	//remember initial position
	public Vector3 startingSpot;

	//Character Card images
	public Sprite selectedImage;
	public Sprite standbyImage;
	public SpriteRenderer thisSprite;
    public TextMesh HighScore;

	// variables added for displaying new UI - Ning
	SpriteRenderer chooseTwoSprite;
	SpriteRenderer chooseOneMoreSprite;
	// A reference to the 

	public bool newSelect;
	Camera camera;
	Bounds characterBounds;
	//-----------------------------------

	// Use this for initialization
	void Start () {
		//start the character with the correct sprite image (standby)
		thisSprite = gameObject.GetComponent<SpriteRenderer>();
		thisSprite.sprite = standbyImage;

		//gives the character a memory of its initial position
		startingSpot = gameObject.transform.position;

		//establishes script reference
		variables = variableController.GetComponent<VariableControl>();
		character = gameObject.GetComponent<Character>();
		camera = GameObject.Find ("Main Camera").GetComponent<Camera>();
		characterBounds = gameObject.GetComponent<BoxCollider> ().bounds;
	}
		// Use this for initialization
		// Update is called once per frame
		void Update ()
		{
			if (variables.timeToChangeGameState && !selected) {
				gameObject.transform.renderer.enabled = false;
			} else {
				gameObject.transform.renderer.enabled = true;
			}
			//deselects character when "Phase2" is loaded 
			if (Application.loadedLevelName == "WordMaking" && selected) {
				selected = false;
				gameObject.transform.localScale = new Vector3 (0.5F, 0.5F, 0.5F);
			}
		}
		

	

	void OnMouseUpAsButton () {
		//change it to be selected or deselected based on what it already was
		toggleSelect(); 


		//only run the following during the selection phase
		if (Application.loadedLevelName == "CharacterSelectTest"){
			string gameMode = PlayerPrefs.GetInt("timed") == 1 ? "timed" : "casual";
			//if clicking the character selected it and there are still open spaces for selection
			if (selected && variables.currentCharacterSelectNum < variables.characterSelectNum) {
				//checks if its the first spot that is open, and places the character there
				if(variables.selectedCharacters[0] == null){
					selectNum = 0;
					variables.characterSelected[0] = true;
					variables.selectedCharacters[0] = gameObject;
					variables.selectedCharacterNums[0] = character.characterNum;
					character.charSelectOrder = 0;
					thisSprite.sprite = selectedImage;
				}
				//if its not the first spot, it puts the character in the second spot
				else{
					selectNum = 1;
					variables.characterSelected[1] = true;
					variables.selectedCharacters[1] = gameObject;
					variables.selectedCharacterNums[1] = character.characterNum;
					character.charSelectOrder = 1;
					thisSprite.sprite = selectedImage;

					//if a player tries to select a character but there are already 2 characters selected, it toggles the select again


				}
				//makes the sprite renderer show the "selected" card and gives it the correct transform

				gameObject.transform.position = variables.phase1SelectedCharPositions[selectNum];
				//gameObject.transform.localScale = new Vector3 (1.37f,1.37f,1);

				gameObject.GetComponent<BoxCollider>().size = new Vector3(5,3,0);
				Vector3 center = gameObject.GetComponent<BoxCollider>().center;
				//center.x -= 1.4f;
				center.x = 0;
				gameObject.GetComponent<BoxCollider>().center = center;
				variables.currentCharacterSelectNum++;
				if (variables.currentCharacterSelectNum == 2) {
					// There are two chars selected now. Set up high score text
					HighScore.text = "Previous Best: "  + ScoreManager.GetPlayerPrefsScore(variables.selectedCharacters[0].name, variables.selectedCharacters[1].name, gameMode);
					if (HighScore.text == "Previous Best: " || HighScore.text == "Previous Best: 0")
						HighScore.text = "";
					Debug.Log("high score text = '"  + HighScore.text + "'");
				}
			} 
			//last check, if a player deselects a character that is already active
			else {
				thisSprite.sprite = standbyImage;

				gameObject.transform.position = startingSpot;
				//gameObject.transform.localScale = new Vector3 (1.5f,1.5f,1);
				//reverses the effects: moving gameObject back to original parent and removing it from arrays
				variables.characterSelected[selectNum] = false;
				variables.selectedCharacters[selectNum] = null;
				Vector3 center = gameObject.GetComponent<BoxCollider>().center;
				center.x += 1.4f;
				gameObject.GetComponent<BoxCollider>().center = center;
				selectNum = -1;
				variables.currentCharacterSelectNum--;
				character.charSelectOrder = -1;

                // There aren't two characters selected, so delete high score text
			    HighScore.text = "";
			}
		}

	}

	void toggleSelect ()
	{
		//simply toggles the select bool whenever it is called.
		if(selected != true ){
			selected = true;
		}
		else{
			selected = false;
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
