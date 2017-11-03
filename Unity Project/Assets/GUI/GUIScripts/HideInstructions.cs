using UnityEngine;
using System.Collections;

public class HideInstructions : MonoBehaviour {
	Vector3 checkMarkPosition;
	public bool disableInstructions;
	public Texture checkMark;
	public Texture checkBox;
	MeshRenderer m;

	// Use this for initialization
	void Start () {
		disableInstructions = false;
		m = gameObject.GetComponent<MeshRenderer> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseDown(){
		Debug.Log ("clicked on the don't show");
		// disable the instrucitons
		if(m.GetComponent<Renderer>().material.mainTexture == checkBox){
			m.GetComponent<Renderer>().material.mainTexture = checkMark;
			disableInstructions = true;
		}else{
			m.GetComponent<Renderer>().material.mainTexture = checkBox;
			disableInstructions = false;
		}
	}
}
