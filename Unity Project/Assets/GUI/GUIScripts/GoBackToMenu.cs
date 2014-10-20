using UnityEngine;
using System.Collections;

public class GoBackToMenu : MonoBehaviour {
	Bounds bounds;
	Camera camera;
    public bool backToStart; //for PlayMusic.cs

	// Use this for initialization
	void Start () {
		bounds = gameObject.GetComponent<BoxCollider> ().bounds;
		camera = GameObject.Find ("Main Camera").GetComponent<Camera> ();
	}
	
	// Update is called once per frame
	void Update () {
		if(UniversalInput.press && UniversalInput.inRect(bounds, camera)){
            backToStart = true;
			Application.LoadLevel("StartScreenTest");
		}
		
	}
}
