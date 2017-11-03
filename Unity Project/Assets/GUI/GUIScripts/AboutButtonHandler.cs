using UnityEngine;
using System.Collections;

public class AboutButtonHandler : MonoBehaviour {
	public Texture aboutUnselected;
	public Texture aboutSelected;
	MeshRenderer mAbout;
	public bool buttonPressed = false;
    public bool clickSound;

	// Use this for initialization
	void Start () {
		mAbout = gameObject.GetComponent<MeshRenderer> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (Application.loadedLevelName != "StartScreenTest") {
			mAbout.GetComponent<Renderer>().material.mainTexture = aboutUnselected;
		}
	}
	
	void OnMouseDown(){
		if(mAbout.GetComponent<Renderer>().material.mainTexture == aboutUnselected){
			mAbout.GetComponent<Renderer>().material.mainTexture = aboutSelected;
		}
    }
     void OnMouseUp()
    {
        if (mAbout.GetComponent<Renderer>().material.mainTexture == aboutSelected)
        {
            mAbout.GetComponent<Renderer>().material.mainTexture = aboutUnselected;
        }
    }
     void OnMouseUpAsButton()
     {
         if (mAbout.GetComponent<Renderer>().material.mainTexture == aboutSelected)
         {
             mAbout.GetComponent<Renderer>().material.mainTexture = aboutUnselected;
         }
         buttonPressed = true;
         clickSound = true;
         Application.LoadLevel("About");
     }
	
}
