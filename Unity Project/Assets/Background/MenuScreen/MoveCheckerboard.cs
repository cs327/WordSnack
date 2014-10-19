using UnityEngine;
using System.Collections;

public class MoveCheckerboard : MonoBehaviour {
	string currentDirection = "None";
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		float moveAmount = 1.0f * Time.deltaTime;

		if (gameObject.transform.position.x < -1.6f) {
			gameObject.transform.position = new Vector3(0.0f, 5.7f, 0.0f);
		} else if (gameObject.transform.position.x > 1.6f) {
			gameObject.transform.position = new Vector3(0.0f, -3.7f, 0.0f);
		}

		transform.Translate (new Vector3 (moveAmount, 0.0f, 0.0f));
	}
}
