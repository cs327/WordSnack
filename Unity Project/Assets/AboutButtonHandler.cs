using UnityEngine;
using System.Collections;

public class AboutButtonHandler : MonoBehaviour {
	public Texture aboutUnselected;
	public Texture aboutSelected;
	MeshRenderer mAbout;
	public bool buttonPressed = false;

	// Use this for initialization
	void Start () {
		mAbout = gameObject.GetComponent<MeshRenderer> ();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void OnMouseDown(){
		if(mAbout.renderer.material.mainTexture == aboutUnselected){
			mAbout.renderer.material.mainTexture = aboutSelected;
		}
		buttonPressed = true;
		Application.LoadLevel("About");
	}
}
