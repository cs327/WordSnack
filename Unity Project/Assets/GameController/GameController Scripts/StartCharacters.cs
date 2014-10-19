using UnityEngine;
using System.Collections;

public class StartCharacters : MonoBehaviour {
	public GameObject [] characters =  new GameObject[5];
	public Vector3 charLoc1;
	public Vector3 charLoc2;
	// Use this for initialization
	void Start () {
		Instantiate (characters[PlayerPrefs.GetInt("Character 1")-1], charLoc1, Quaternion.identity);
		Instantiate (characters[PlayerPrefs.GetInt("Character 2")-1], charLoc2, Quaternion.identity);
	}
	
	// Update is called once per frame
	void Update () {
	
	}


	void OnGUI(){

		if(GUI.Button (new Rect (Screen.width * 0.1f, Screen.height * 0.8f, Screen.width * 0.12f, Screen.height * 0.12f), "Reset\nData")){
			PlayerPrefs.DeleteAll();
		}
	}
}