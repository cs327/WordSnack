using UnityEngine;
using System.Collections;

public class AboutUsMove : MonoBehaviour {
	Vector3 pos;
	public float speed;

	// Use this for initialization
	void Start () {
		pos = transform.localPosition;
	}
	
	// Update is called once per frame
	void Update () {
		if(pos.z > -10.43f ){
			pos.z -= Time.deltaTime*speed;
			transform.localPosition = pos;
		}
	}

	void OnMouseDown(){
		if (pos.z > -10.43f) {
		}else{
			Application.LoadLevel ("StartScreenTest");
		}
	}
}
