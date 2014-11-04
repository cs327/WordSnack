using UnityEngine;
using System.Collections;

public class PlayButtonHandler : MonoBehaviour {
	public Texture playUnselected;
	public Texture playSelected;
	MeshRenderer mPlay;
	public bool buttonPressed = false;

	// Use this for initialization
	void Start () {
		mPlay = gameObject.GetComponent<MeshRenderer> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown(){
		gameObject.renderer.material.color = Color.red;
    }
    void OnMouseUp()
    {
		gameObject.renderer.material.color = Color.white;
    }
    void OnMouseUpAsButton(){
       
		buttonPressed = true;
		PlayerPrefs.SetInt("timed",0);
		Application.LoadLevel("CharacterSelectTest");
    }
}
