using UnityEngine;
using System.Collections;

public class GoBackToMenu : MonoBehaviour {
	Bounds bounds;
	Camera camera;

	// Use this for initialization
	void Start () {
		bounds = gameObject.GetComponent<BoxCollider> ().bounds;
		camera = GameObject.Find ("Main Camera").GetComponent<Camera> ();
	}
	
	// Update is called once per frame
	void Update () {
		if(UniversalInput.press && UniversalInput.inRect(bounds, camera)){
			Application.LoadLevel("StartScreenTest");
		}
		
	}
}
