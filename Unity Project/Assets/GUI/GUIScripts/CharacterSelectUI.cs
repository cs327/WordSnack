using UnityEngine;
using System.Collections;

public class CharacterSelectUI : MonoBehaviour {
	public VariableControl variables;
	public GameObject chooseTwo;
	public GameObject whoElse;
	public GameObject characters;
	SpriteRenderer feedMeSprite;
	public bool FeedPressed = false;

	public Texture feedMeClicked;
	public Texture feedMeUnClicked;
	//public GameObject feedMePressed;

	// Use this for initialization
	void Start () {
		variables = GameObject.Find("VariableController").GetComponent<VariableControl>();

		feedMeSprite = gameObject.GetComponent<SpriteRenderer> ();
		//feedMePressed = GameObject.Find ("feedMePressed");
//		feedMeSprite.enabled = false;
		whoElse.SetActive(false);
		chooseTwo.SetActive (false);

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
				whoElse.transform.position = new Vector3(-3f,-4.0f,0);
			}
			else{
				//whoElse.transform.position = new Vector3(2.01f,-.786f,0);
				whoElse.transform.position = new Vector3(2.5f, -2.0f, 0);
			}
		}

		if (variables.currentCharacterSelectNum < 2) {
			gameObject.transform.position = new Vector3 (0, -1, -20);
		}


		if(variables.currentCharacterSelectNum == variables.characterSelectNum){
			gameObject.transform.position = new Vector3 (0, 1, -10);
			chooseTwo.SetActive(false);
			whoElse.SetActive(false);
		}
	}

	void OnMouseDown(){
		gameObject.GetComponent<MeshRenderer> ().renderer.material.mainTexture = feedMeClicked;
	}
//	void OnMouseUp()
//	{
//		gameObject.GetComponent<MeshRenderer>().renderer.material.mainTexture = feedMeUnClicked;
//	}
	void OnMouseUpAsButton()
	{
//		gameObject.GetComponent<MeshRenderer>().renderer.material.mainTexture = feedMeUnClicked;
		FeedPressed = true;
		characters.SetActive(false);
		GameObject.Find("GameController").GetComponent<characterSelectController>().loadMainGame();
	}
}
