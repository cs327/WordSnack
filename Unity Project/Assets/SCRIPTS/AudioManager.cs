
using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {
    
    
    public AudioClip[] audioClipArray;
    //GameObject AudioManager;
    AudioSource [] audioSourceArray;
    
    int i;
    private int y;
    
    // Use this for initialization
    void Start () {
        audioSourceArray = new AudioSource [audioClipArray.Length];
        
        for (i=0; i< audioSourceArray.Length; i++)
        {
            AudioSource newSource = gameObject.AddComponent<AudioSource>(); //add component to obj
            newSource.clip = audioClipArray [i]; // adds clip to temporary audiosource
            audioSourceArray [i] = newSource; // puts temp audiosource into aduio array
        }
    }
    
    // Update is called once per frame
    void Update () {
        
    }
    
    public void Play(int i){
        audioSourceArray[i].Play();
    }
    
    void Pause(int i){
        audioSourceArray[i].Pause();
    }
    
    void Stop(int i){
        audioSourceArray[i].Stop();
    }
    
    void KillAll(){
        for (y=0; y<=audioSourceArray.Length; y++){
            if(audioSourceArray[i].isPlaying){
                audioSourceArray[i].Pause();
            }
        }
    }
}
