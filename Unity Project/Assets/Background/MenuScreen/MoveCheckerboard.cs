using UnityEngine;
using System.Collections;

public class MoveCheckerboard : MonoBehaviour {
	string currentDirection = "None";
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
//		float moveAmount = 1.0f * Time.deltaTime;
		if (gameObject.transform.position.x < -1.9f) {
			currentDirection = "Right";
		} else if (gameObject.transform.position.x > 1.9f) {
			currentDirection = "Left";
		} else {
			currentDirection = currentDirection;
		}
		if (currentDirection == "Right") {
			gameObject.transform.position += Vector3.right * Time.deltaTime;
		} else if (currentDirection == "Left") {
			gameObject.transform.position += Vector3.left * Time.deltaTime;
		}

//		transform.Translate (new Vector3 (moveAmount, 0.0f, 0.0f));
	}
}
