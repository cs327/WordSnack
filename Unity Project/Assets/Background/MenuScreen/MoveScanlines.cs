using UnityEngine;
using System.Collections;

public class MoveScanlines : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		float moveAmount = 0.5f * Time.deltaTime;
		if (transform.position.y < 2.2f) {
			transform.position = new Vector3(0.0f, 4.0f, 11.0f);
		}

		transform.Translate(new Vector3(0.0f, 0.0f, moveAmount));
	}
}
