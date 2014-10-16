using UnityEngine;
using System.Collections;

public class PauseMenuButton : MonoBehaviour {

	public GameObject dinerRoom;
	public GameObject pauseMenuBackground;
	public GameObject trashCan;
	public GameObject resumeClicked;
	public GameObject resumeUnclicked;
	Camera camera;
	Bounds pauseButtonBounds;
	Bounds resumeUnclickedBounds;
	Bounds resumeClickedBounds;
	MeshRenderer mPauseButton;
	MeshRenderer mTrash;
	
	// Use this for initialization
	void Start () {
		resumeClicked.SetActive (false);
		resumeUnclicked.SetActive (false);
		pauseButtonBounds = gameObject.GetComponent<BoxCollider> ().bounds;

		camera = GameObject.Find ("Main Camera").GetComponent<Camera> ();
		mPauseButton = gameObject.GetComponent<MeshRenderer> ();
		mTrash = trashCan.GetComponent<MeshRenderer> ();
		pauseMenuBackground.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		if(UniversalInput.press && UniversalInput.inRect(pauseButtonBounds, camera)){
			dinerRoom.SetActive(false);
			pauseMenuBackground.SetActive(true);
			mPauseButton.renderer.enabled = false;
			mTrash.renderer.enabled = false;
			resumeUnclicked.SetActive(true);
			Time.timeScale = 0;
		}else{
			
		}

		if (resumeUnclicked != null) {
			resumeUnclickedBounds = resumeUnclicked.GetComponent<BoxCollider> ().bounds;
			if(UniversalInput.inRect(resumeUnclickedBounds, camera)){
				//pauseMenuBackground.SetActive(false);
				//dinerRoom.SetActive(true);
				resumeClicked.SetActive(true);
				resumeUnclicked.SetActive(false);
			}else{
				//resumeClicked.SetActive(false);
				//resumeUnclicked.SetActive(true);
			}
		}

		if (resumeClicked != null) {
			resumeClickedBounds = resumeClicked.GetComponent<BoxCollider> ().bounds;
			if(UniversalInput.press && UniversalInput.inRect(resumeClickedBounds, camera)){
				pauseMenuBackground.SetActive(false);
				dinerRoom.SetActive(true);
				mPauseButton.renderer.enabled = true;
				resumeClicked.SetActive(false);
				resumeUnclicked.SetActive(false);
			}else{
			}
		}





	}
}
