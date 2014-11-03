using UnityEngine;
using System.Collections;

public class GoBackToMenu : MonoBehaviour {
	public Sprite menuUnclicked;
	public Sprite menuClicked;
    public bool backToStart = false; //for PlayMusic.cs
	SpriteRenderer s;

	// Use this for initialization
	void Start () {
		s = gameObject.GetComponent<SpriteRenderer>();
		s.sprite = menuUnclicked;
	}
	
	// Update is called once per frame
	void OnMouseDown () {
		backToStart = true;
		s.sprite = menuClicked;
		transform.localPosition = new Vector3 (-2.50f, 1, -1.43f);
		transform.localScale = new Vector3 (0.25f, 0.49f, 0.49f);
		Application.LoadLevel ("SplashScreen");
	}
}
