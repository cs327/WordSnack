using UnityEngine;
using System.Collections;

public class resumeButton : MonoBehaviour {
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
		gameObject.renderer.material.SetTexture("_MainTex",p.resumeButtons[1]);
	}

    void OnMouseUp()
    {
        gameObject.renderer.material.SetTexture("_MainTex", p.resumeButtons[0]);
    }

	void OnMouseUpAsButton(){
        clickSound = true;
		gameObject.renderer.material.SetTexture("_MainTex",p.resumeButtons[0]);
		p.unpause = true;
	}
}
