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

    bool sizzleStart = false;
    bool sizzleEnd = false;
    bool playedSteamEnd = false;
    bool sizzled = false;
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
        audioManager.PlayLoop(6);
        audioManager.SetVolume(6, 1.0f);
        audioManager.SetVolume(5, 0.0f);
        //audioManager.Stop(5);
        NewOnStove();
        Sizzle();
        HappySound();
        RejectedSound();
        Chewing();
        Shuffle();
        LetterGeneration();

    }

    void NewOnStove()
    {
       // if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
        //{
          //  i = 0;
       // }
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > i)
        {
            audioManager.Play(7);
            i++;
        }
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove < i)
        {
            audioManager.Play(9);
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
            audioManager.Play(12);
            GameObject.Find("VariableController").GetComponent<VariableControl>().notWord = false;
        }
    }
    void Sizzle()
    {
       
        if (GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
        {
            sizzleStart = false;
            sizzleEnd = false;
            audioManager.Stop(10);
        }
        audioManager.SetVolume(11, 0.0f);
        audioManager.PlayLoop(11);


        if (sizzleStart == false && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > 0 )
        {
            audioManager.Play(10); // start sound goes 
            sizzleStart = true;
           
        }

        if (sizzleStart == true && audioManager.audioSourceArray [10].isPlaying == false && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove > 0)
        {
            audioManager.SetVolume(11, 0.2f); //play sizzle loop
            sizzled = true;

        } else
        {
            audioManager.SetVolume(11, 0.0f);
        }



        if(playedSteamEnd == false && audioManager.audioSourceArray[10].isPlaying == false && sizzled == true && GameObject.Find("letterGeneration").GetComponent<LetterController>().numLettersOnStove == 0)
        {
            audioManager.Play(37);
            Debug.Log("steamend");
            playedSteamEnd = true;

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
    void Shuffle()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().shuffleSound == true)
            audioManager.Play(20);
        GameObject.Find("VariableController").GetComponent<VariableControl>().shuffleSound = false;

    }
    void LetterGeneration()
    {
        if (GameObject.Find("VariableController").GetComponent<VariableControl>().letterGenerationSound == true)
        {
            audioManager.Play(8);
            GameObject.Find("VariableController").GetComponent<VariableControl>().letterGenerationSound = false;
        }
    }
}
