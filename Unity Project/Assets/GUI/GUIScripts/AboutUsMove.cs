using UnityEngine;
using System.Collections;

public class AboutUsMove : MonoBehaviour {
	Vector3 pos;
	public float speed;
    public bool clickSound;

	// Use this for initialization
	void Start () {
		pos = transform.localPosition;
	}
	
	// Update is called once per frame
	void Update () {
		if(pos.z > -8.86f ){
			pos.z -= Time.deltaTime*speed;
			transform.localPosition = pos;
		}
	}

	void OnMouseDown(){	
		speed = 18;
		if(pos.z > -8.86f ){
			pos.z -= Time.deltaTime*speed;
			transform.localPosition = pos;
		}else{
			Application.LoadLevel ("StartScreenTest");
		}
		clickSound = true;
	}
}
