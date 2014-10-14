using UnityEngine;
using System.Collections;

public class BackgroundRotate : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		gameObject.transform.Rotate(0, -Time.deltaTime*5, 0, Space.World);
	}
}
