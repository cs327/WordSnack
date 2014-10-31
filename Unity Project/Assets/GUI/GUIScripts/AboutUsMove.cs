using UnityEngine;
using System.Collections;

public class AboutUsMove : MonoBehaviour {
	Camera c;
	Vector3 pos;
	public float speed;

	// Use this for initialization
	void Start () {
		c = GameObject.Find ("Main Camera").GetComponent<Camera>();
	}
	
	// Update is called once per frame
	void Update () {

		if(UniversalInput.press){
			Application.LoadLevel("StartScreenTest");
		}

		pos = gameObject.transform.position;
		if(pos.y <= 12.8f ){
			pos.y += Time.deltaTime*speed;
			transform.position = pos;
		}
	}
}
