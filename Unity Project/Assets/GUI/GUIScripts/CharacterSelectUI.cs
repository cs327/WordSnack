using UnityEngine;
using System.Collections;

public class CharacterSelectUI : MonoBehaviour {
	public VariableControl variables;
	public GameObject chooseTwo;
	public GameObject whoElse;
	SpriteRenderer feedMeSprite;

	// Use this for initialization
	void Start () {
		variables = GameObject.Find("VariableController").GetComponent<VariableControl>();

		feedMeSprite = gameObject.GetComponent<SpriteRenderer> ();
		feedMeSprite.enabled = false;
		whoElse.SetActive(false);
		chooseTwo.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {
		if(variables.currentCharacterSelectNum == 0){
			chooseTwo.SetActive(true);
			whoElse.SetActive(false);
			feedMeSprite.enabled = false;
		}
		if(variables.currentCharacterSelectNum == 1){
			chooseTwo.SetActive(false);
			whoElse.SetActive(true);
			feedMeSprite.enabled = false;

			if(variables.selectedCharacters[0] == null){
				whoElse.transform.position = new Vector3(-5.01f,-.786f,0);
			}
			else{
				whoElse.transform.position = new Vector3(2.01f,-.786f,0);
			}


		}

		if(variables.currentCharacterSelectNum == variables.characterSelectNum){
			feedMeSprite.enabled = true;
			chooseTwo.SetActive(false);
			whoElse.SetActive(false);
		}
	}

	void OnMouseDown(){
		GameObject.Find("GameController").GetComponent<characterSelectController>().loadMainGame();
	}
}
