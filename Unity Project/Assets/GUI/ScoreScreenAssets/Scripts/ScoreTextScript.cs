using UnityEngine;
using System.Collections;

public class ScoreTextScript : MonoBehaviour {
	
	float alpha;
	float startTime;
	public int baseScore;
	public int totalScore;
	public float multiplier;
	public bool bothTastes;
	public bool longWord;

	// need to access some variables
	private VariableControl variables;
	
	// Use this for initialization
	void Start () {
		alpha = 1.0f;

		startTime = Time.time;

		variables = GameObject.Find ("VariableController").GetComponent<VariableControl> ();
	}
	
	// Update is called once per frame
	void Update () {
		float timeAmount = Time.deltaTime;
		float timePassed = Time.time - startTime;

		//float scorePosX = 0.0f;
		float scorePosY = 0.0f;

		float sizes = 1.0f;

		if (multiplier == 0) {
			// it's a score
			// if the base is not the total (we have a multiplier), and base score display time has been reached:
			if (baseScore < totalScore && timePassed > variables.BaseScoreDisplayTime) {
				baseScore++;
				sizes += 0.7f;
				this.transform.localScale = new Vector3(sizes, sizes, 1.0f);
			}
			if (longWord) {
				// we've gotta increase the score even more
				totalScore *= (int)variables.bigMealBonus;
				// and don't increase forever, thank you very much
				longWord = false;
			}

			GetComponent<TextMesh>().text = baseScore.ToString();
		} else {
			// it's a multiplier
			GetComponent<TextMesh>().text = "x" + multiplier.ToString();
			if (bothTastes) {
				GetComponent<TextMesh>().text += " Delicious";
			} else {
				GetComponent<TextMesh>().text += " Tasty";
			}
		}

		// for scores: reduce alpha and move upwards towards total score, but only if the score matches the total score the person received
		// AND make sure the appropriate time has passed
		if (baseScore == totalScore && multiplier == 0 && timePassed > variables.BaseScoreDisplayTime) {
			// check the thresholds and change color accordingly
			if (baseScore >= variables.smallScoreThreshold && baseScore < variables.mediumScoreThreshold) {
				GetComponent<TextMesh>().color = variables.smallColor;
			} else if (baseScore >= variables.mediumScoreThreshold && baseScore < variables.largeScoreThreshold) {
				GetComponent<TextMesh>().color = variables.mediumColor;
			} else if (baseScore >= variables.largeScoreThreshold) {
				GetComponent<TextMesh>().color = variables.largeColor;
			}

			scorePosY = (GetComponent<TextMesh> ().transform.position.y + 0.1f) * timeAmount * 0.6f * alpha;
			GetComponent<TextMesh> ().transform.Translate (new Vector3 (0.0f, scorePosY, 0.0f));

			alpha -= timeAmount * 0.5f;
			GetComponent<TextMesh> ().color = new Color (GetComponent<TextMesh> ().color.r, GetComponent<TextMesh> ().color.g, GetComponent<TextMesh> ().color.b, alpha);
		}

		// for multipliers: reduce alpha after taste match display time
		if (multiplier != 0 && timePassed > variables.TasteMatchDisplayTime) {
			if (longWord) {
				// big meal, so change the multiplier text and hold it there longer
				GetComponent<TextMesh> ().text = "x" + variables.bigMealBonus + " Big Meal";
				
				if (timePassed > (variables.TasteMatchDisplayTime + variables.BigMealDisplayTime)) {
					alpha -= timeAmount * 0.8f;
					GetComponent<TextMesh> ().color = new Color (1.0f, GetComponent<TextMesh> ().color.g, GetComponent<TextMesh> ().color.b, alpha);
				}
			} else {
				// not a long word, so start fading earlier
				alpha -= timeAmount * 0.5f;
				GetComponent<TextMesh> ().color = new Color (GetComponent<TextMesh> ().color.r, GetComponent<TextMesh> ().color.g, GetComponent<TextMesh> ().color.b, alpha);
			}
		}

		if (alpha <= 0.0f) {
			Destroy (gameObject);
		}
	}
}
