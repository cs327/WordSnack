using UnityEngine;
using System.Collections;

public class exitGameplayButton : MonoBehaviour {
	pause p;
	public bool clickSound;

	// Use this for initialization
	void Start () {
		p = gameObject.transform.parent.GetComponentInParent<pause>();

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown(){
		gameObject.GetComponent<Renderer>().material.SetTexture("_MainTex",p.exitButtons[1]);
	}
	void OnMouseUp(){
		gameObject.GetComponent<Renderer>().material.SetTexture("_MainTex",p.exitButtons[0]);
	}

	void OnMouseUpAsButton()
	{
		clickSound = true;
		gameObject.GetComponent<Renderer>().material.SetTexture("_MainTex", p.exitButtons[0]);
		Application.LoadLevel("StartScreenTest");
	}
}
