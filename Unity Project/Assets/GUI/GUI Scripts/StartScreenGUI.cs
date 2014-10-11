using UnityEngine;

public class StartScreenGUI : MonoBehaviour {

	public GameObject playUnselected;
	public GameObject playSelected;
	Bounds playBounds;
	Camera camera;
	Vector3 playButtonPos;


	void Start(){
		camera = gameObject.GetComponent<Camera> ();
		playBounds = playUnselected.GetComponent<BoxCollider> ().bounds;
		playButtonPos = playSelected.transform.position;
		playSelected.SetActive (false);
	}

	// Update is called once per frame
	void Update () {

		if(UniversalInput.inRect(playBounds, camera)){
			playUnselected.SetActive(false);
			playSelected.SetActive(true);
			if(UniversalInput.press){
				playButtonPos.z += 0.5f;
				playSelected.transform.position = playButtonPos;
				Application.LoadLevel("CharacterSelect");
			}
		}else{
			playUnselected.SetActive(true);
			playSelected.SetActive(false);
		}


	}

}
