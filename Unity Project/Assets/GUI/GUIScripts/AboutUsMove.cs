using UnityEngine;
using System.Collections;

public class AboutUsMove : MonoBehaviour {
	Vector3 pos;
	public float speed;
    public bool clickSound;
	public GameObject backgroundStars;

	// Use this for initialization
	void Start () {
		pos = transform.localPosition;

		// if we get here and there's no background, create it and the diner
		if (GameObject.Find ("Starfield Background") == null) {
			Instantiate (backgroundStars, new Vector3(0, 0, 30), Quaternion.identity);
		}
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
