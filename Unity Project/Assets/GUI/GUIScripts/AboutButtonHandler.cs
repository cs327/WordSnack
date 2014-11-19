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
			mAbout.renderer.material.mainTexture = aboutUnselected;
		}
	}
	
	void OnMouseDown(){
		if(mAbout.renderer.material.mainTexture == aboutUnselected){
			mAbout.renderer.material.mainTexture = aboutSelected;
		}
    }
     void OnMouseUp()
    {
        if (mAbout.renderer.material.mainTexture == aboutSelected)
        {
            mAbout.renderer.material.mainTexture = aboutUnselected;
        }
    }
     void OnMouseUpAsButton()
     {
         if (mAbout.renderer.material.mainTexture == aboutSelected)
         {
             mAbout.renderer.material.mainTexture = aboutUnselected;
         }
         buttonPressed = true;
         clickSound = true;
         Application.LoadLevel("About");
     }
	
}
