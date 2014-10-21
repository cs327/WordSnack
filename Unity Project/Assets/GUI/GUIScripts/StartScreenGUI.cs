using UnityEngine;
using System.Collections;
public class StartScreenGUI : MonoBehaviour {

	public GameObject playUnselected;
	public GameObject playSelected;
	public GameObject aboutUnselected;
	public GameObject aboutSelected;
	Bounds playBounds;
	Bounds aboutBounds;
	Camera camera;
	Vector3 playButtonPos;
	Vector3 aboutButtonPos;

	public bool buttonPressed = false;

	void Start(){
		camera = gameObject.GetComponent<Camera> ();
		playBounds = playUnselected.GetComponent<BoxCollider> ().bounds;
		playButtonPos = playSelected.transform.position;
		aboutBounds = aboutUnselected.GetComponent<BoxCollider> ().bounds;
		aboutButtonPos = aboutSelected.transform.position;
		playSelected.transform.renderer.enabled = false;
		aboutSelected.transform.renderer.enabled = false;
	}

	// Update is called once per frame
	void Update () {
		// for the play button
		if(UniversalInput.inRect(playBounds, camera)){
//			playUnselected.transform.renderer.enabled = false;
//			playSelected.transform.renderer.enabled = true;
			if(UniversalInput.press){
				playUnselected.transform.renderer.enabled = false;
				playSelected.transform.renderer.enabled = true;
				buttonPressed = true;
				playButtonPos.z += 0.5f;
				playSelected.transform.position = playButtonPos;
				playUnselected.transform.renderer.enabled = false;
				playSelected.transform.renderer.enabled = true;
				StartCoroutine(waitForButtonPress("CharacterSelectTest"));
//								Application.LoadLevel("CharacterSelectTest"); 
			}
		}else{
			buttonPressed = false;
//			playUnselected.transform.renderer.enabled = true;
//			playSelected.transform.renderer.enabled = false;
		}



		// for the about button
		if(UniversalInput.inRect(aboutBounds, camera)){
//			aboutUnselected.transform.renderer.enabled = false;
//			aboutSelected.transform.renderer.enabled = true;
			if(UniversalInput.press){
				aboutUnselected.transform.renderer.enabled = false;
				aboutSelected.transform.renderer.enabled = true;
				buttonPressed = true;
				aboutButtonPos.z += 0.5f;
				aboutSelected.transform.position = aboutButtonPos;
				StartCoroutine(waitForButtonPress("About"));
//				Application.LoadLevel("About");
			}
		}else{
//			aboutUnselected.transform.renderer.enabled = true;
//			aboutSelected.transform.renderer.enabled = false;
		}


	}
	IEnumerator waitForButtonPress (string scene) {
		yield return new WaitForSeconds (0.75f);
		Application.LoadLevel(scene);
	}


}
