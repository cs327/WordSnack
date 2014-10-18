//Hannah
//Handles audio in char select scene!
using UnityEngine;
using System.Collections;

public class PlayMusic2 : MonoBehaviour {
    
    public GameObject audio;
    AudioManager audioManager;
    
    public GameObject selecter;
    CharacterSelectUI charSel;
    
    public GameObject vControl;
    VariableControl variableControl;
    
    int numSelected = 0;
    
    // Use this for initialization
    void Start () {
        audioManager = audio.GetComponent<AudioManager>();
        charSel = selecter.GetComponent<CharacterSelectUI>();
        variableControl = vControl.GetComponent<VariableControl>();
    }
    
    // Update is called once per frame
    void Update () {
        
        audioManager.PlayLoop(8);
        
        if (variableControl.currentCharacterSelectNum == 0)
        {
            numSelected = 0;
            
        }
        
        if (variableControl.currentCharacterSelectNum>numSelected)
        {
            audioManager.Play(1);
            numSelected ++;
        }
        
        if (variableControl.currentCharacterSelectNum<numSelected)
        {
            audioManager.Play(1);
            numSelected --;
        }
        
        
        if (charSel.FeedPressed == true)
        {
            audioManager.Play(1);
        }
    }
}
