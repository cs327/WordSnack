using UnityEngine;
using System.Collections;

public class PauseMenuButton : MonoBehaviour {

	public GameObject dinerRoom;
	public GameObject pauseMenuBackground;
	//public GameObject letterGen;
	//public GameObject gameController;
	Camera camera;
	Bounds pauseButtonBounds;

	// Use this for initialization
	void Start () {
		pauseButtonBounds = gameObject.GetComponent<BoxCollider> ().bounds;
		camera = GameObject.Find ("Main Camera").GetComponent<Camera> ();
		pauseMenuBackground.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		if(UniversalInput.press && UniversalInput.inRect(pauseButtonBounds, camera)){
			dinerRoom.SetActive(false);
			pauseMenuBackground.SetActive(true);
			//letterGen.SetActive(false);
			//gameController.SetActive(false);
			Time.timeScale = 0;
		}else{

		}
	}
}
