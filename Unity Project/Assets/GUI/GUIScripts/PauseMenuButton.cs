using UnityEngine;
using System.Collections;

public class PauseMenuButton : MonoBehaviour {

	public GameObject letterGen;
	public GameObject gameController;
	public GameObject dinerRoom;
	public GameObject pauseMenuBackground;
	public GameObject trashCan;
	public GameObject resumeClicked;
	public GameObject resumeUnclicked;
	public GameObject exitGameClicked;
	public GameObject exitGameUnclicked;
	LetterController l;
	wordBuildingController w;
	Camera camera;
	Bounds pauseButtonBounds;
	Bounds resumeUnclickedBounds;
	Bounds resumeClickedBounds;
	Bounds exitGameUnclickedBounds;
	Bounds exitGameClickedBounds;
	MeshRenderer mPauseButton;
	MeshRenderer mTrash;
	SpriteRenderer character1;
	SpriteRenderer character2;
	
	// Use this for initialization
	void Start () {
		resumeClicked.SetActive (false);
		resumeUnclicked.SetActive (false);
		pauseButtonBounds = gameObject.GetComponent<BoxCollider> ().bounds;
		l = letterGen.GetComponent<LetterController> ();
		w = gameController.GetComponent<wordBuildingController> ();
		camera = GameObject.Find ("Main Camera").GetComponent<Camera> ();
		mPauseButton = gameObject.GetComponent<MeshRenderer> ();
		mTrash = trashCan.GetComponent<MeshRenderer> ();
		pauseMenuBackground.SetActive (false);
		character1 = w.character1.GetComponent<SpriteRenderer> ();
		character2 = w.character2.GetComponent<SpriteRenderer> ();
		exitGameUnclicked.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		if(UniversalInput.press && UniversalInput.inRect(pauseButtonBounds, camera)){
			dinerRoom.SetActive(false);
			pauseMenuBackground.SetActive(true);
			mPauseButton.renderer.enabled = false;
			mTrash.renderer.enabled = false;
			resumeUnclicked.SetActive(true);
			l.gamePaused = true;
			w.gamePaused = true;
			character1.enabled = false;
			character2.enabled = false;
			exitGameUnclicked.SetActive(true);
		}else{

		}

		// handling the display of the resume button
		if (resumeUnclicked != null) {
			resumeUnclickedBounds = resumeUnclicked.GetComponent<BoxCollider> ().bounds;
			if(UniversalInput.inRect(resumeUnclickedBounds, camera)){
				resumeClicked.SetActive(true);
			}else{
				resumeClicked.SetActive(false);
			}
		}

		if (resumeClicked != null) {
			resumeClickedBounds = resumeClicked.GetComponent<BoxCollider> ().bounds;
			if(UniversalInput.press && UniversalInput.inRect(resumeClickedBounds, camera)){
				pauseMenuBackground.SetActive(false);
				dinerRoom.SetActive(true);
				mPauseButton.renderer.enabled = true;
				mTrash.renderer.enabled = true;
				resumeUnclicked.SetActive(false);
				l.gamePaused = false;
				w.gamePaused = false;
				character1.enabled = true;
				character2.enabled = true;
				exitGameUnclicked.SetActive (false);
			}else{
			}
		}



		// handling the display of exit game button
		if (exitGameUnclicked != null) {
			exitGameUnclickedBounds = exitGameUnclicked.GetComponent<BoxCollider> ().bounds;
			if(UniversalInput.inRect(exitGameUnclickedBounds, camera)){
				exitGameClicked.SetActive(true);
			}else{
				exitGameClicked.SetActive(false);
			}
		}
		
		if (exitGameClicked != null) {
			exitGameClickedBounds = exitGameClicked.GetComponent<BoxCollider> ().bounds;
			if(UniversalInput.press && UniversalInput.inRect(exitGameClickedBounds, camera)){
				Application.LoadLevel("StartScreenTest");
			}else{
			}
		}





	}
}
