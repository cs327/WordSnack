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
	public bool longWordPartTwo;
	bool longWait;
	bool firstWait;

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
		longWordPartTwo = false;

		GetComponent<TextMesh>().text = baseScore.ToString();

		firstWait = true;
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
				totalScore /= (int)variables.bigMealBonus;
				longWord = false;
				longWordPartTwo = true;
			}

			// once the base score display time has passed, check for the multiplier
			if (timePassed > waitTime) {
				// all done, fade and move the score upwards
				if (done) {
					// if there was a long word bonus, we have to wait yet another time
					if (longWait) {
						timePassed = 0.0f;
						waitTime = variables.BigMealDisplayTime;

						// don't need to do this again!
						longWait = false;

					} else {
						// ALL DONE!
						timePassed = 10.0f;

						// check the thresholds and change color accordingly
						if (baseScore >= variables.smallScoreThreshold && baseScore < variables.mediumScoreThreshold) {
							GetComponent<TextMesh>().color = variables.smallColor;
						} else if (baseScore >= variables.mediumScoreThreshold && baseScore < variables.largeScoreThreshold) {
							GetComponent<TextMesh>().color = variables.mediumColor;
						} else if (baseScore >= variables.largeScoreThreshold) {
							GetComponent<TextMesh>().color = variables.largeColor;
						}

						scorePosY = (GetComponent<TextMesh> ().transform.position.y + 0.1f) * timeAmount * 2.0f * alpha;
						GetComponent<TextMesh> ().transform.Translate (new Vector3 (0.0f, scorePosY, 0.0f));

						// this 3.0 seems random, but it works best for the timing... :-)
						alpha -= timeAmount * (3.0f - variables.ScoreFadeTime);
						GetComponent<TextMesh> ().color = new Color (GetComponent<TextMesh> ().color.r, GetComponent<TextMesh> ().color.g, GetComponent<TextMesh> ().color.b, alpha);
					}
				}

				if (baseScore < totalScore) {
					// there had to be a taste multiplier
					// need to count up faster if there's a larger difference between base score and total score
					float countUpAmount = 1;
					if (totalScore > 10) {
						countUpAmount = (float)totalScore / 5.0f;
					}

					// count up and size up
					baseScore += (int)countUpAmount;
					sizes += 0.7f;
					this.transform.localScale = new Vector3(sizes, sizes, 1.0f);

					// don't want to go too far
					if (baseScore > totalScore) {
						baseScore = totalScore;
					}

					GetComponent<TextMesh>().text = baseScore.ToString();

				} else if (baseScore == totalScore && !done) {
					// if there's a long word and a multiplier, we have to wait, then count up again
					// this will allow the multiplied value to stay for the taste wait time
					// reset timePassed
					timePassed = 0.0f;
					waitTime = variables.TasteMatchDisplayTime;

					if (longWordPartTwo) {
						// put the big meal bonus back in to the total, so we can count up to it, but after the multiplier wait
						totalScore *= (int)variables.bigMealBonus;

						// don't do this again or we'll be here forever
						longWordPartTwo = false;
						longWait = true;
					
					} else {
						done = true;
					}
				}
			}		

		} else {
			// it's a multiplier prefab
			if (timePassed > waitTime) {
				
				// if there's a long word, and it's not the first wait time, we gotta change the text and wait again
				if (longWord && !firstWait) {
					GetComponent<TextMesh>().text = "x" + variables.bigMealBonus + " Big Meal!";
					longWord = false;
					
					timePassed = 0.0f;
					waitTime = variables.BigMealDisplayTime;
				
				} else if (!longWord && !firstWait) {
					// we should be DONE
					timePassed = 10.0f;

					// this 3.0 seems random, but it works best for the timing... :-)
					alpha -= timeAmount * (3.0f - variables.ScoreFadeTime);
					GetComponent<TextMesh> ().color = new Color (GetComponent<TextMesh> ().color.r, GetComponent<TextMesh> ().color.g, GetComponent<TextMesh> ().color.b, alpha);					
				
				} else {
					GetComponent<TextMesh>().text = "x" + multiplier.ToString();
					if (bothTastes) {
						GetComponent<TextMesh>().text += " Delicious!!";
					} else {
						GetComponent<TextMesh>().text += " Tasty!";
					}

					// keep it there for the taste match display time
					timePassed = 0.0f;
					waitTime = variables.TasteMatchDisplayTime;

					// don't make it disappear while we're waiting this time
					firstWait = false;
				}

			} else if (firstWait) {
				// don't display anything until the wait time has happened, so it pops up when the numbers start counting up
				GetComponent<TextMesh>().text = "";
			}
		}


		// destroy when disappeared
		if (alpha <= 0.0f) {
			Destroy(gameObject);
		}
	}
}
