using UnityEngine;
using System.Collections;

public class letterScript : MonoBehaviour {
	public bool selected = false;
	public bool onStove = false;
	public bool used = false;
	public string letter;
	public int orderOnStove;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		CheckSelected(selected);
	}

	void OnMouseDown(){
		if(!selected){
			selected = true;
		}
		else{
			selected = false;
		}
	}

	void CheckSelected(bool on){
		if(on){
			gameObject.renderer.material.color = Color.red;
		}
		else{
			gameObject.renderer.material.color = Color.white;
		}
	}
}
