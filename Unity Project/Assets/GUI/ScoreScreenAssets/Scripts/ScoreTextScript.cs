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
		float timeAmount = Time.deltaTime;

		float scorePosX = (GetComponent<TextMesh> ().transform.position.x + 0.1f) * timeAmount * 0.1f;
		float scorePosY = (GetComponent<TextMesh> ().transform.position.y + 0.1f) * timeAmount * 0.1f;
		GetComponent<TextMesh> ().transform.Translate (new Vector3 (scorePosX, scorePosY, 0.0f));

		alpha -= timeAmount * 0.4f;
		GetComponent<TextMesh>().renderer.material.color = new Color (1.0f, 1.0f, 1.0f, alpha);

		if (alpha <= 0.0f) {
			Destroy (gameObject);
		}
	}
}
