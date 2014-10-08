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
	public GameObject steamPrefab;
	public GameObject mySteam;

	// Use this for initialization
	void Start () {
		thisSprite = gameObject.GetComponent<SpriteRenderer>();
		SetLetter();
		MakeSteam();
	}
	
	// Update is called once per frame
	void Update () {
		CheckSelected(selected);

	}

	void OnMouseDown(){
		if(!selected){
			selected = true;
		}
		else{
			selected = false;
		}
	}

	void CheckSelected(bool on){
		if(on){
			gameObject.renderer.material.color = Color.magenta;
			mySteam.SetActive(true);
		}
		else{
			gameObject.renderer.material.color = Color.white;
			mySteam.SetActive(false);
		}
	}
	void SetLetter(){
		char [] thisChar = letter.ToCharArray();

		letterAlphabetOrder = thisChar[0].GetHashCode() - 97;

		if (letterAlphabetOrder >= 0)
        thisSprite.sprite = sprites[letterAlphabetOrder];
	}
	void MakeSteam(){
		Vector3 steamOffset = new Vector3(0,0,.5f);

		mySteam = Instantiate (steamPrefab, (gameObject.transform.position + steamOffset), new Quaternion (0,0,0,0)) as GameObject;
		mySteam.transform.parent = gameObject.transform;
		mySteam.transform.eulerAngles = new Vector3 (-90,0,0);
	}
}
