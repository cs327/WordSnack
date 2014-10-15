using UnityEngine;
using System.Collections;

public class CharacterSelectUI : MonoBehaviour {

	SpriteRenderer feedMeSprite;

	// Use this for initialization
	void Start () {
		feedMeSprite = gameObject.GetComponent<SpriteRenderer> ();
		feedMeSprite.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
		if(GameObject.Find("VariableController").GetComponent<VariableControl>().timeToChangeGameState){
			feedMeSprite.enabled = true;
		}
	}

	void OnMouseDown(){
		GameObject.Find("GameController").GetComponent<characterSelectController>().loadMainGame();
	}
}
