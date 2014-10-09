//Hannah
using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour {
    
    
    public AudioClip[] audioClipArray;
	public bool loopPlay;
  	
    
    int i;

    private int y;
	private float timerCountDown = .5f;
    
    // Use this for initialization
    void Start () {
  
    }
    
    // Update is called once per frame
    void Update () {
        
    }
    
    public void Play(int i){
		Debug.Log ("play");
		audio.clip = audioClipArray [i];
		audio.Play ();
       
    }

	public void PlayLoop(int i){
		audio.clip = audioClipArray [i];

		audio.loop = true;
		audio.Play ();
				
		}
    
   public void Pause(int i){
		audio.clip = audioClipArray [i];
		audio.Pause ();
    }
    
    public void Stop(int i){
		audio.clip = audioClipArray [i];
		audio.Stop ();
    }
    
    public void KillAll(){
        for (y=0; y<=audioClipArray.Length; y++) {
			audio.clip= audioClipArray[y];
						if (audio.isPlaying) {
						audio.Pause ();
						}
				}
            
        }

	/*public void FadeOut(int i){
		audio.clip = audioClipArray [i];
		while (audio.volume>0) {
			timerCountDown -= timerCountDown - Time.deltaTime;
			if(timerCountDown <= 0){
			audio.volume = audio.volume - .02f;
			}
			timerCountDown = .5f;
			Debug.Log(audio.volume);
				}
	}
*/
	public void FadeIn(int i){

	}

	public void CrossFade(int i, int y){

	}
    
}
