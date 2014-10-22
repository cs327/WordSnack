using UnityEngine;
using System.Collections;
public class StartScreenGUI : MonoBehaviour {

	public Texture playUnselected;
	public Texture playSelected;
	public Texture aboutUnselected;
	public Texture aboutSelected;
	public GameObject playButton;
	public GameObject aboutButton;
	MeshRenderer mPlay;
	MeshRenderer mAbout;

	public bool buttonPressed = false;

	void Start(){
		//mPlay = playButton.GetComponent<MeshRenderer> ();
		//mAbout = aboutButton.GetComponent<MeshRenderer> ();

	}

	// Update is called once per frame
	void Update () {
//		// for the play button
//		if(UniversalInput.inRect(playBounds, camera)){
////			playUnselected.transform.renderer.enabled = false;
////			playSelected.transform.renderer.enabled = true;
//			if(UniversalInput.press){
//				playUnselected.transform.renderer.enabled = false;
//				playSelected.transform.renderer.enabled = true;
//				buttonPressed = true;
//				playButtonPos.z += 0.5f;
//				playSelected.transform.position = playButtonPos;
//				playUnselected.transform.renderer.enabled = false;
//				playSelected.transform.renderer.enabled = true;
//				StartCoroutine(waitForButtonPress("CharacterSelectTest"));
////								Application.LoadLevel("CharacterSelectTest"); 
//			}
//		}else{
//			buttonPressed = false;
////			playUnselected.transform.renderer.enabled = true;
////			playSelected.transform.renderer.enabled = false;
//		}
//
//
//
//		// for the about button
//		if(UniversalInput.inRect(aboutBounds, camera)){
////			aboutUnselected.transform.renderer.enabled = false;
////			aboutSelected.transform.renderer.enabled = true;
//			if(UniversalInput.press){
//				aboutUnselected.transform.renderer.enabled = false;
//				aboutSelected.transform.renderer.enabled = true;
//				buttonPressed = true;
//				aboutButtonPos.z += 0.5f;
//				aboutSelected.transform.position = aboutButtonPos;
//				StartCoroutine(waitForButtonPress("About"));
////				Application.LoadLevel("About");
//			}
//		}else{
////			aboutUnselected.transform.renderer.enabled = true;
////			aboutSelected.transform.renderer.enabled = false;
//		}
//
//
//	}
//	IEnumerator waitForButtonPress (string scene) {
//		yield return new WaitForSeconds (0.75f);
//		Application.LoadLevel(scene);
//	}


}
}