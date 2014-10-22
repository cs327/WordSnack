using UnityEngine;
using System.Collections;

public class letterBehaviour : MonoBehaviour {
	public bool selected = false;
	public bool onStove = false;
	public bool used = false;
	public string letter;
	public int orderOnStove;
	public SpriteRenderer thisSprite;
	public Sprite [] sprites;
	public int letterAlphabetOrder;
	LetterController l; 

	void Start () {
		thisSprite = gameObject.GetComponent<SpriteRenderer>();
		SetLetter();
		l = GameObject.Find ("letterGeneration").GetComponent<LetterController> ();
	}
	
	// Update is called once per frame
	void Update () {
		CheckSelected(selected);
		if (l.gamePaused) {
			thisSprite.enabled = false;
		}
		else{
			thisSprite.enabled = true;
		}
	}

    // Switch the checked status
	void OnMouseDown(){
		if(!selected){
			selected = true;
		}
		else{
			selected = false;
		}

	}

    // Colors the letter depending on if it's selected or not
	void CheckSelected(bool on){
		if(on){
			//gameObject.renderer.material.color = Color.magenta;
		}
		else{
			gameObject.renderer.material.color = Color.white;
		}
	}
	void SetLetter(){

		char [] thisChar = letter.ToCharArray();

		letterAlphabetOrder = thisChar[0].GetHashCode() - 97;

		if (letterAlphabetOrder >= 0)
        thisSprite.sprite = sprites[letterAlphabetOrder];
	}
}
