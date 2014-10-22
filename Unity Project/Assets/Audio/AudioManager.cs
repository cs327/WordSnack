//Hannah
using UnityEngine;
using System.Collections;

public class AudioManager : MonoBehaviour
{
	
	
		public AudioClip[] audioClipArray;
		AudioSource[] audioSourceArray; //new
	
		int i;
	
		private int y;
		private float timerCountDown = .5f;
	
		// Use this for initialization

 
		void Start ()
		{
		
				audioSourceArray = new AudioSource [audioClipArray.Length];
		
				for (i=0; i< audioSourceArray.Length; i++) {
						AudioSource newSource = gameObject.AddComponent<AudioSource> (); //add component to obj
						newSource.clip = audioClipArray [i]; // adds clip to temporary audiosource
						audioSourceArray [i] = newSource; // puts temp audiosource into aduio array
			
				}
		}
	
		// Update is called once per frame
		void Update ()
		{
		
		}
	
		public void Play (int i)
		{
				//Debug.Log ("play");
				//audio.clip = audioClipArray [i];
				//    audio.Play;
				audioSourceArray [i].Play ();
		
		}
	
		public void PlayLoop (int i)
		{  // call this in update!
				//audio.clip = audioClipArray[i];
				//dio.loop = true;
				if (audioSourceArray [i].isPlaying == false) {
						audioSourceArray [i].Play ();
				}
				//audio.Play;
		}
	
		public void Pause (int i)
		{
				audio.clip = audioClipArray [i];
				audio.Pause ();
		}
	
		public void Stop (int i)
		{
				audio.clip = audioClipArray [i];
				audio.Stop ();
		}
	
		public void KillAll ()
		{
				for (y=0; y<=audioClipArray.Length; y++) {
						audio.clip = audioClipArray [y];
						if (audio.isPlaying) {
								audio.Pause ();
						}
				}
		
		}

		public void SetVolume (int i, float y)
		{

				audioSourceArray [i].volume = y;

		}
	
		public void FadeOut (int i)
		{      // bug:cant use this function in update... so where can we use it?
				while (audioSourceArray[i].volume >=0) {
						while (timerCountDown>0) {
								timerCountDown = timerCountDown -= Time.deltaTime;

						}
						audioSourceArray [i].volume -= .2f;
						timerCountDown = .5f;
				}
		}
	
		public void FadeIn (int i)
		{
		
		}
	
		public void CrossFade (int i, int y)
		{
		
		}
	
}
