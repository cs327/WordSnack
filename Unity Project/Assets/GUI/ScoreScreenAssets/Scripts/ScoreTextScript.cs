using UnityEngine;
using System.Collections;

public class ScoreTextScript : MonoBehaviour {
	
	float alpha;
	float timePassed;
	float waitTime;
	bool done;
	public int baseScore;
	public int totalScore;
	public float multiplier;
	public bool score;
	public bool bothTastes;
	public bool longWord;
	bool longWait;

	// need to access some variables
	private VariableControl variables;

	
	// Use this for initialization
	void Start () {
		alpha = 1.0f;

		timePassed = 0.0f;

		variables = GameObject.Find ("VariableController").GetComponent<VariableControl> ();
		waitTime = variables.BaseScoreDisplayTime;

		done = false;
		longWait = false;

		GetComponent<TextMesh>().text = baseScore.ToString();
	}
	
	// Update is called once per frame
	// original timings from game design
	// base display time 0.25
	// taste match time 0.4
	// big meal time 0.4
	// score fade time 0.2
	void Update () {
		float timeAmount = Time.deltaTime;
		timePassed += timeAmount;

		// for changing the numbers as they are displayed
		float scorePosY = 0.0f;
		float sizes = 1.0f;

		if (score) {
			// it's a score prefab
			// if there was a big meal bonus, we have to disregard it for now since it is displayed separately at the end of the counting
			if (longWord) {
				//Debug.Log("longword! base: " + baseScore + " total: " + totalScore + " bonus: " + (int)variables.bigMealBonus);

				totalScore /= (int)variables.bigMealBonus;

				//Debug.Log("after adjustment total: " + totalScore);
			}

			// once the base score display time has passed, check for the multiplier
			if (timePassed > waitTime) {
				// all done, fade and move the score upwards
				if (done) {
					// if there was a long word bonus, we have to wait yet another time
					if (longWait) {
						timePassed = 0.0f;
						waitTime = variables.BigMealDisplayTime;

					} else {
						timePassed = 10.0f;

						// ALL DONE!
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
				}

				if (baseScore < totalScore) {
					// there had to be a taste multiplier
					// count up and size up
					baseScore++;
					sizes += 0.7f;
					this.transform.localScale = new Vector3(sizes, sizes, 1.0f);

					GetComponent<TextMesh>().text = baseScore.ToString();

				} else if (baseScore == totalScore && !done) {
					// if there's a long word and a multiplier, we have to wait, then count up again
					// this will allow the multiplied value to stay for the taste wait time
					// reset timePassed
					timePassed = 0.0f;
					waitTime = variables.TasteMatchDisplayTime;

					if (longWord) {
						// put the big meal bonus back in to the total, so we can count up to it, but after the multiplier wait
						totalScore *= (int)variables.bigMealBonus;

						// don't do this again or we'll be here forever
						longWord = false;
						longWait = true;
					
					} else {
						done = true;
					}
				}
			}		

		} else {
			// it's a multiplier prefab
			if (timePassed > waitTime) {
				GetComponent<TextMesh>().text = "x" + multiplier.ToString();
				if (bothTastes) {
					GetComponent<TextMesh>().text += " Delicious!!";
				} else {
					GetComponent<TextMesh>().text += " Tasty!";
				}
			
				// not a long word, so start fading earlier
				alpha -= timeAmount * 0.5f;
				GetComponent<TextMesh> ().color = new Color (GetComponent<TextMesh> ().color.r, GetComponent<TextMesh> ().color.g, GetComponent<TextMesh> ().color.b, alpha);

			} else {
				// don't display anything until the wait time has happened
				GetComponent<TextMesh>().text = "";
			}
		}



		// for scores: reduce alpha and move upwards towards total score, but only if the score matches the total score the person received
		// AND make sure the appropriate time has passed
		/*
		if (baseScore == totalScore && timePassed > variables.BaseScoreDisplayTime) {
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
		*/

		// for multipliers: reduce alpha after taste match display time
		/*
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
		*/

		if (alpha <= 0.0f) {
			Destroy (gameObject);
		}
	}
}
