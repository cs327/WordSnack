using UnityEngine;
using System.Collections;

public class letterBehaviour : MonoBehaviour
{
		public bool selected = false;
		public bool onStove = false;
		public bool used = false;
		public string letter;
		public int orderOnStove;
		public SpriteRenderer thisSprite;
		public Sprite[] sprites;
		public Sprite[] spriteStove;
		public int letterAlphabetOrder;
		LetterController l; 
		VariableControl variables;
		public bool isMoving = false;
		void Start ()
		{
			//set this gameobject to have the correct components according to its character given during instantiation
			//fromt the letterController
				thisSprite = gameObject.GetComponent<SpriteRenderer> ();
				SetLetter ();
				l = GameObject.Find ("letterGeneration").GetComponent<LetterController> ();
				variables = GameObject.Find ("VariableController").GetComponent<VariableControl> (); 
		}
	
		// Update is called once per frame
		void Update ()
		{
				CheckSelected (selected);
				if (l.gamePaused) {
						thisSprite.enabled = false;
				} else {
						thisSprite.enabled = true;
				}

				//if not on the stove - make sure the letter is green 
				//Used because there was a bug when taking multiple letters off the stove
				//didn't change every color. 
				if (!onStove && letter != ".") { 
						// if there are fewer than 8 letters this creates an index out of bounds error.
						//Debug.Log("Sprite size: " + sprites.Length + " letterAlphabetOrder: " + letterAlphabetOrder);
						thisSprite.sprite = sprites [letterAlphabetOrder];
				}
		}

		// Switch the checked status
		void OnMouseDown ()
		{

				if (!selected) {
						selected = true;
						//put it on the stove and change the color
						thisSprite.sprite = spriteStove [letterAlphabetOrder];
                        GameObject.Find("AudioManager_Prefab(Clone)").GetComponent<AudioManager>().Play(6);
				} else {
						selected = false;
						//change the color back to green when it's no longer on the stove
						thisSprite.sprite = sprites [letterAlphabetOrder];
                        GameObject.Find("AudioManager_Prefab(Clone)").GetComponent<AudioManager>().Play(8);
				}
		}

		// Colors the letter depending on if it's selected or not
		void CheckSelected (bool on)
		{
				if (on) {
						gameObject.transform.localScale = new Vector3 (.275f, .275f, .275f);
				} else {
						gameObject.transform.localScale = new Vector3 (.33f, .33f, .33f);
				}
		}
		void SetLetter ()
		{

			char [] thisChar = letter.ToCharArray ();

			letterAlphabetOrder = thisChar [0].GetHashCode () - 97;

			if (letterAlphabetOrder >= 0){
					thisSprite.sprite = sprites [letterAlphabetOrder];
			}
		//The below line checks if the assigned character is a period, the placeholder.
		//if it is it destroys the collider so it cannot be clicked.
			if(letterAlphabetOrder == -51){
				gameObject.collider.enabled = false;
			}
		}
}
