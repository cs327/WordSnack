using UnityEngine;
using System.Collections;

public class StartCharacters : MonoBehaviour {
	public GameObject [] characters =  new GameObject[5];
	// Use this for initialization
	void Start () {
		Instantiate (characters[PlayerPrefs.GetInt("Character 1")-1], new Vector3 (-5, 0, -1), Quaternion.identity);
		Instantiate (characters[PlayerPrefs.GetInt("Character 2")-1], new Vector3 (5, 0, -1), Quaternion.identity);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}