using UnityEngine;

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
		playSelected.SetActive (false);
		aboutSelected.SetActive (false);
	}

	// Update is called once per frame
	void Update () {
		// for the play button
		if(UniversalInput.inRect(playBounds, camera)){
			playUnselected.SetActive(false);
			playSelected.SetActive(true);
			if(UniversalInput.press){
				playButtonPos.z += 0.5f;
				playSelected.transform.position = playButtonPos;
				Application.LoadLevel("CharacterSelectTest");
				buttonPressed = true; 
			}
		}else{
			playUnselected.SetActive(true);
			playSelected.SetActive(false);
		}

		// for the about button
		if(UniversalInput.inRect(aboutBounds, camera)){
			aboutUnselected.SetActive(false);
			aboutSelected.SetActive(true);
			if(UniversalInput.press){
				aboutButtonPos.z += 0.5f;
				aboutSelected.transform.position = aboutButtonPos;
				Application.LoadLevel("About");
				buttonPressed = true;
			}
		}else{
			aboutUnselected.SetActive(true);
			aboutSelected.SetActive(false);
		}


	}

}
