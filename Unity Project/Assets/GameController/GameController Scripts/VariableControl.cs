using UnityEngine;
using System.Collections;

public class VariableControl : MonoBehaviour {
	public Vector3 [] phase2CharacterPositions;
	public GameObject [] selectedCharacters;
	public int characterSelectNum = 3;
	public bool [] characterSelected;
	public int currentCharacterSelectNum = 0;
	public int score;
	public float gameTimer;
	public float maxGameTime = 3F;
	public bool timeToChangeGameState;
	// Use this for initialization
	void Awake() {
		DontDestroyOnLoad(transform.gameObject);
	}

	void Start () {
		characterSelected = new bool[characterSelectNum];
		selectedCharacters = new GameObject[characterSelectNum];
		phase2CharacterPositions = new Vector3[characterSelectNum];

		phase2CharacterPositions[0] = new Vector3(-5, 0, 0);
		phase2CharacterPositions[1] = new Vector3(0, -2.5F, 0);
		phase2CharacterPositions[2] = new Vector3(5, 0, 0);
	}
	
	// Update is called once per frame
	void Update () {
		setSelectNum();
		if (characterSelected[0] && characterSelected[1] && characterSelected[2]) {
			timeToChangeGameState = true;
		}
	}

	void setSelectNum () { 
		if (characterSelected[0] == false) {
			currentCharacterSelectNum = 0;
		} else if (characterSelected[1] == false) {
			currentCharacterSelectNum = 1;
		} else if (characterSelected[2] == false) {
			currentCharacterSelectNum = 2;
		}
	}
}
