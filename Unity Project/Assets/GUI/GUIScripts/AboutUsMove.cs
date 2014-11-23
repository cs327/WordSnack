using UnityEngine;
using System.Collections;

public class AboutUsMove : MonoBehaviour {
	Vector3 pos;
	public float speed;
    public bool clickSound;
	public BoxCollider boxCollider1;
	public BoxCollider boxCollider2;
	//Camera camera;

	// Use this for initialization
	void Start () {
		pos = transform.localPosition;
		//camera = GameObject.Find ("Main Camera").camera;
	}
	
	// Update is called once per frame
	void Update () {
		if(pos.z > -8.86f ){
			pos.z -= Time.deltaTime*speed;
			transform.localPosition = pos;
		}else{
			//boxCollider1.GetComponent<BoxCollider>().enabled = false;
		}
	}

	void OnMouseDown(){

		//Application.OpenURL("http://wordsnack.net/");
		//Application.LoadLevel ("StartScreenTest");
			
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
