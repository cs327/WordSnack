using UnityEngine;
using System.Collections;

public class characterSelectController : MonoBehaviour {
	VariableControl variables;
	public GameObject variableController; 
	public GUIStyle big;
	public GameObject backgroundStars;
	public GameObject diner;

	// Use this for initialization
	void Start () {
		variables = variableController.GetComponent<VariableControl>();

		if (GameObject.Find("AudioManager_Prefab(Clone)") == null)
		{
			Instantiate(Resources.Load("AudioManager_Prefab"), new Vector3(0, 0, 0), Quaternion.identity);
		}

		// if we get here and there's no background, create it and the diner
		if (GameObject.Find ("Starfield Background") == null) {
			Instantiate (backgroundStars, new Vector3(0, 0, 30), Quaternion.identity);
			Instantiate (diner, new Vector3(0, 0, 5), Quaternion.identity);
		}

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void loadMainGame () {
//		for (int i = 0; i < variables.characterSelectNum; i++) {
//			variables.selectedCharacters[i].transform.position = variables.phase2CharacterPositions[i];
//		}
		variables.timeToChangeGameState = false;
		PlayerPrefs.SetInt("Character 1", variables.selectedCharacterNums[0]);
		PlayerPrefs.SetInt("Character 2", variables.selectedCharacterNums[1]);

		// delete the starfield and diner background stuff from the previous three scenes
		Destroy (GameObject.Find ("Starfield Background"));
		Destroy (GameObject.Find ("Diner"));

		Application.LoadLevel("WordMaking");
		//moves the characters into their appropriate positions
	}
}
