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
	public Sprite [] spriteStove;
	public int letterAlphabetOrder;
	LetterController l; 
	public bool isMoving = false;
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

		//if not on the stove - make sure the letter is green 
		//Used because there was a bug when taking multiple letters off the stove
		//didn't change every color. 
		if (!onStove && letter != ",") { 
			thisSprite.sprite = sprites[letterAlphabetOrder];
		}
	}

    // Switch the checked status
	void OnMouseDown(){
		if(!selected){
			selected = true;
			//put it on the stove and change the color
			thisSprite.sprite = spriteStove [letterAlphabetOrder]; 
		}
		else{
			selected = false;
			//change the color back to green when it's no longer on the stove
			thisSprite.sprite = sprites[letterAlphabetOrder];
		}

	}

    // Colors the letter depending on if it's selected or not
	void CheckSelected(bool on){
		if(on){
			gameObject.transform.localScale = new Vector3 (.275f,.275f,.275f);
		}
		else{
			gameObject.transform.localScale = new Vector3 (.33f,.33f,.33f);
		}
	}
	void SetLetter(){

		char [] thisChar = letter.ToCharArray();

		letterAlphabetOrder = thisChar[0].GetHashCode() - 97;

		if (letterAlphabetOrder >= 0)
        thisSprite.sprite = sprites[letterAlphabetOrder];
	}
}
