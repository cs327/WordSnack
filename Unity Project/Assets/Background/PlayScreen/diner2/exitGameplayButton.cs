using UnityEngine;
using System.Collections;

public class exitGameplayButton : MonoBehaviour {
	pause p;

	// Use this for initialization
	void Start () {
		p = gameObject.transform.parent.GetComponentInParent<pause>();

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown(){
		gameObject.renderer.material.SetTexture("_MainTex",p.exitButtons[1]);
	}
	void OnMouseUp(){
		gameObject.renderer.material.SetTexture("_MainTex",p.exitButtons[0]);
		Application.LoadLevel("StartScreenTest");
	}
}
