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

		float scorePosX = 0.0f;
		float scorePosY = 0.0f;

		if (GetComponent<TextMesh> ().text.IndexOf ("x") != -1) {
			// multiplier
			//scorePosX = (GetComponent<TextMesh> ().transform.position.x + 0.1f) * timeAmount * 0.2f;
			scorePosY = (GetComponent<TextMesh> ().transform.position.y + 0.1f) * timeAmount * 0.2f * alpha;
		} else {
			// word score
			scorePosX = (GetComponent<TextMesh> ().transform.position.x + 0.1f) * timeAmount * -0.6f * alpha;
			scorePosY = (GetComponent<TextMesh> ().transform.position.y + 0.1f) * timeAmount * 0.6f * alpha;
		}
		
		GetComponent<TextMesh> ().transform.Translate (new Vector3 (scorePosX, scorePosY, 0.0f));

		alpha -= timeAmount * 0.5f;
		GetComponent<TextMesh>().renderer.material.color = new Color (1.0f, 1.0f, 1.0f, alpha);

		if (alpha <= 0.0f) {
			Destroy (gameObject);
		}
	}
}
