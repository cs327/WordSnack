using UnityEngine;
using System.Collections;

public class RotateBackground : MonoBehaviour {

	public float rotateSpeed = 1.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate (new Vector3 (0, rotateSpeed, 0) * Time.deltaTime);
	}
}
