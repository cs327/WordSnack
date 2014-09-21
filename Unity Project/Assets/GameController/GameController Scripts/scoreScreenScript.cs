using UnityEngine;using System.Collections;// Mike Dean - Score Screen Script
public class scoreScreenScript : MonoBehaviour
{
    //Loading variables file
    public GameObject gameController;
    VariableControl variables;
    TextMesh finalScoreText;
    //Load GameObjects
    int countScore = 0;
    // Use this for initialization
    void Start()
    //Transform to Instantiate TextMesh later.
    {
        //Establish variable reference.
        variables = gameController.GetComponent<VariableControl>();
        finalScoreText = gameObject.GetComponent<TextMesh>();

        DisplayScore();
    }

    // Update is called once per frame
    void Update()
    {

    }
    //Method to display the final score (to include bonuses eventually)
    void DisplayScore()
    {
        //Loop to show a tallying of the score once correctly implemented. 
        //Placeholder score of 100 at this time.
        while (countScore <= variables.score)
        {
            finalScoreText.text = countScore.ToString();
            countScore++;
        }
    }
    //Method to display words fed
    void DisplayWordsFed()
    {


    }

}