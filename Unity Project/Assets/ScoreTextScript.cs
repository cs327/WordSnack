using UnityEngine;
using System.Collections;

public class ScoreTextScript : MonoBehaviour {

	float alpha;

	// Use this for initialization
	void Start () {
		alpha = 1.0f;
	}
	
	// Update is called once per frame
	void Update () {
		alpha -= Time.deltaTime * 1.0f;

		GetComponent<TextMesh>().renderer.material.color = new Color (1.0f, 1.0f, 1.0f, alpha);
	
		if (alpha <= 0.0f) {
			Destroy (gameObject);
		}
	}
}
