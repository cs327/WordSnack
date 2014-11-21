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
	//public GameObject greyBg;
	public bool unpause = false;
	public bool clickSound;
    public GameObject blackout;
	public GameObject blackout2;
//notes on this script:
//the pause function is called by clicking on the button,
//however the unpause function is called in a tiny script on the resume button,
//so if looking for triggering the unpause, look at resumeButton.cs, not this script
//this script only has basically everything else related to flipping the paused bool in variable control.

	// Use this for initialization
	void Start () {
		variables = GameObject.Find ("VariableController").GetComponent<VariableControl> ();
	}
	
	// Update is called once per frame
	void Update () {
		//if the unpause bool is true, unpause the game
		if(unpause){
			unpauseGame();
		}
	}

	void OnMouseDown(){
		//when clicked down on, change texture
		gameObject.renderer.material.SetTexture("_MainTex", pauseButtons[1]);
	}
	void OnMouseUp(){
		//when unclicked- change texture back, and if the game is not paused (which
		//it probably isnt), pause it
		gameObject.renderer.material.SetTexture("_MainTex", pauseButtons[0]);

		}

	void OnMouseUpAsButton()
	{
		clickSound = true;
		gameObject.renderer.material.SetTexture("_MainTex", pauseButtons[0]);
		if (!variables.paused)
		{
			pauseGame();
		}
	}

	void pauseGame(){
		//set the global paused variable to true and activate the objects that 
		//constitute the pause menu
		variables.paused = true;
		//greyBg.SetActive(true);
		resumeButtonObj.SetActive(true);
		exitButtonObj.SetActive(true);
		blackout.SetActive(true);

		if (variables.timedMode) {
			blackout2.SetActive(true);
				}
       // blackout.transform.position = new Vector3(0.07f,0.0f, -1.79f);
	}

	void unpauseGame(){
		//set the unpause bool to false (since the game is about to be unpaused and then will no
		//longer need it), set the global pause to off, and deactivate all objects associated with pause menu
		unpause = false;
		variables.paused = false;
		//greyBg.SetActive(false);
		resumeButtonObj.SetActive(false);
		exitButtonObj.SetActive(false);
		blackout.SetActive(false);

		if (variables.timedMode) {
			blackout2.SetActive(false);
				}
        //blackout.transform.position = new Vector3(10f,10.0f, -1.79f);
	}
}
