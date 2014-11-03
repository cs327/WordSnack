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
		if(mPlay.renderer.material.mainTexture == playUnselected){
			mPlay.renderer.material.mainTexture = playSelected;
		}
    }
        void OnMouseUpAsButton(){
		buttonPressed = true;
		Application.LoadLevel("CharacterSelectTest");
        }
	}
