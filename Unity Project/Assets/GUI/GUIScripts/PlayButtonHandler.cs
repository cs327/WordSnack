﻿using UnityEngine;
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
    void OnMouseUp()
    {
        if (mPlay.renderer.material.mainTexture == playSelected)
        {
            mPlay.renderer.material.mainTexture = playUnselected;
        }
    }
    void OnMouseUpAsButton(){
        if (mPlay.renderer.material.mainTexture == playSelected)
        {
            mPlay.renderer.material.mainTexture = playUnselected;
        }
		buttonPressed = true;
		PlayerPrefs.SetInt("timed",0);
		Application.LoadLevel("CharacterSelectTest");
    }
}
