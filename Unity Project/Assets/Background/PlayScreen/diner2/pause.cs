using UnityEngine;
using System.Collections;

public class pause : MonoBehaviour {
	LetterController letterControl;
	VariableControl variables;
	public Texture2D [] resumeButtons;
	public Texture2D [] exitButtons;
	public Texture2D [] pauseButtons;
	public GameObject resumeButtonObj;
	public GameObject exitButtonObj;
	public GameObject greyBg;
	public bool unpause = false;



	// Use this for initialization
	void Start () {
		variables = GameObject.Find ("VariableController").GetComponent<VariableControl> ();
	}
	
	// Update is called once per frame
	void Update () {
		if(unpause){
			unpauseGame();
		}
	}

	void OnMouseDown(){
		gameObject.renderer.material.SetTexture("_MainTex", pauseButtons[1]);
	}
	void OnMouseUp(){
		gameObject.renderer.material.SetTexture("_MainTex", pauseButtons[0]);
		if(!variables.paused){
			pauseGame();
		}

	}

	void pauseGame(){
		variables.paused = true;
		greyBg.SetActive(true);
		resumeButtonObj.SetActive(true);
		exitButtonObj.SetActive(true);
	}

	void unpauseGame(){
		unpause = false;
		variables.paused = false;
		greyBg.SetActive(false);
		resumeButtonObj.SetActive(false);
		exitButtonObj.SetActive(false);
	}
}
