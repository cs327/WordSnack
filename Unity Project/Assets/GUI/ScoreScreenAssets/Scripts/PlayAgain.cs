using UnityEngine;
using System.Collections;

public class PlayAgain : MonoBehaviour {
	public Sprite PlayAgainPressed;
    public Sprite PlayAgainUnpressed;
    public bool clickSound;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown () {
		print ("clicked");
		gameObject.GetComponent<SpriteRenderer>().sprite = PlayAgainPressed;
	}

    void OnMouseUp()
    {
        gameObject.GetComponent<SpriteRenderer>().sprite = PlayAgainUnpressed;
    }
    void OnMouseUpAsButton()
    {
        gameObject.GetComponent<SpriteRenderer>().sprite = PlayAgainUnpressed;
        clickSound = true;
		ScoreLoadingScript.SetLoadingScreen();
        Application.LoadLevel("WordMaking");
    }
}
