//Hannah
using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {
	
	
	public AudioClip[] audioClipArray;
	public AudioSource [] audioSourceArray; //new
	
	int i;
	
	private int y;
	private float timerCountDown = .5f;

    private PlayMusic soundScript;
    //private PlayMusic2 soundScript2;
    private PlayMusic3 soundScript3;

	
	// Use this for initialization

	void Start () {

        DontDestroyOnLoad(transform.gameObject);

		audioSourceArray = new AudioSource [audioClipArray.Length];
		
		for (i=0; i< audioSourceArray.Length; i++) {
			AudioSource newSource = gameObject.AddComponent<AudioSource> (); //add component to obj
			newSource.clip = audioClipArray [i]; // adds clip to temporary audiosource
			audioSourceArray [i] = newSource; // puts temp audiosource into aduio array
            soundScript = GetComponent<PlayMusic>();
          //  soundScript2 = GetComponent<PlayMusic2>();
            soundScript3 = GetComponent<PlayMusic3>();
		}
	}
	
	// Update is called once per frame
	void Update () {
        //if ((Application.loadedLevelName == "SplashScreen") || (Application.loadedLevelName == "ScoreScreen") || (Application.loadedLevelName == "StartScreenTest"))
        //{
            
        //    soundScript.enabled = true;
        // //   soundScript2.enabled = false;
        //    soundScript3.enabled = false;
        //    Stop(9);
        //}
        //else if (Application.loadedLevelName == "WordMaking")
        //{
        //    soundScript.enabled = false;
        //   // soundScript2.enabled = false;
        //    soundScript3.enabled = true;
        //}
		
	}
	
	public void Play(int i){
		Debug.Log ("play");
		audioSourceArray[i].Play ();
		
	}
	
	public void PlayLoop(int i){  // call this in update!
		
		if (audioSourceArray [i].isPlaying == false) {
			audioSourceArray [i].Play ();
		}
		//audio.Play;
	}
	
	public void Pause(int i){
        audioSourceArray[i].Pause ();
	}
	
	public void Stop(int i){
        audioSourceArray[i].Stop ();
	}
	
	public void KillAll(){
		for (y=0; y<audioSourceArray.Length; y++) {
			
            if (audioSourceArray[y].isPlaying) {
                audioSourceArray[y].Pause ();
			}
		}
		
	}

    public void SetVolume(int i, float y){

        audioSourceArray[i].volume = y;

    }
	
	public void FadeOut(int i){      // bug:cant use this function in update... so where can we use it?
        while(audioSourceArray[i].volume >=0)
        {
            while(timerCountDown>0){
                timerCountDown -= Time.deltaTime;

            }
            audioSourceArray[i].volume-=.2f;
            timerCountDown=.5f;
        }
	}
	
	public void FadeIn(int i){
		
	}
	
	public void CrossFade(int i, int y){
		
	}
	
}
