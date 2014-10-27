//Hannah
//Plays all aduio in wordmaking scene!
using UnityEngine;
using System.Collections;

public class PlayMusic3 : MonoBehaviour
{

    int i = 0;

    public GameObject audio;
    AudioManager audioManager;
    public GameObject letterCont;
    
    LetterController letterController;

    public GameObject VariableControl;
    VariableControl variables;


 
    // Use this for initialization
    void Start()
    {
        audioManager = audio.GetComponent<AudioManager>();
        //if (Application.loadedLevelName == "WordMaking")
        //{
        //    letterController = letterCont.GetComponent<LetterController>();
        //    variables = VariableControl.GetComponent<VariableControl>();
        //}
    }

    // Update is called once per frame
    void Update()
    {
        audioManager.SetVolume(9, 1.0f);
        audioManager.PlayLoop(9);
        audioManager.SetVolume(7, 0.0f);
        //audioManager.Stop(7);
        NewOnStove();
        Sizzle();
        HappySound();
        RejectedSound();
        Chewing();

    }

    void NewOnStove()
    {
       // if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
        //{
          //  i = 0;
       // }
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > i)
        {
            audioManager.Play(13);
            i++;
        }
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove < i)
        {
            audioManager.Play(14);
            i--;
        }
    }
    //Method to play Happy sounds when a character likes a word.
    void HappySound()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().happySound > 0)
        {
            audioManager.Play(GameObject.Find("VariableController").GetComponent<VariableControl>().happySound);
            GameObject.Find("VariableController").GetComponent<VariableControl>().bonus = false;
            GameObject.Find("VariableController").GetComponent<VariableControl>().happySound = 0;
        }
    }
    void RejectedSound()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().notWord)
        {
            audioManager.Play(17);
            GameObject.Find("VariableController").GetComponent<VariableControl>().notWord = false;
        }
    }
    void Sizzle()
    {
        audioManager.PlayLoop(16);
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > 0)
        {

            audioManager.SetVolume(16, .1f);
        } else{

            audioManager.SetVolume(16, 0.0f);
        }
        
}
    void Chewing()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().chewing == true)
        {
            audioManager.Play(GameObject.Find("VariableController").GetComponent<VariableControl>().chewingSound);
            GameObject.Find("VariableController").GetComponent<VariableControl>().chewing = false;
        }
    }
}
