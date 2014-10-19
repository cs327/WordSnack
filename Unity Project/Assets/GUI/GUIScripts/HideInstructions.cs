using UnityEngine;
using System.Collections;

public class HideInstructions : MonoBehaviour {
	public GameObject checkMark;
	Vector3 checkMarkPosition;
	public bool disableInstructions;

	// Use this for initialization
	void Start () {
		checkMark = GameObject.Find ("checkMark");
		checkMarkPosition = checkMark.GetComponent<Transform>().position;
		disableInstructions = false;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown(){
		Debug.Log ("clicked on the don't show");
		checkMarkPosition.x = 1.06f;
		checkMark.GetComponent<Transform> ().position = checkMarkPosition;
		// disable the instrucitons
		disableInstructions = true;

		if (disableInstructions) {
			Debug.Log("disabled instructions");
		}
	}
}
