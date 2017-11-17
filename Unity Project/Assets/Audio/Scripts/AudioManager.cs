﻿//Hanna
using UnityEngine;
using System.Collections;



public class AudioManager : MonoBehaviour
{
	
	
		public AudioClip[] audioClipArray;
		public AudioSource[] audioSourceArray; //new
	
		int i;
	
		private int y;
		private float timerCountDown = .5f;

		private PlayMusic soundScript;

		public float[] volumeArray = new float[60];
  
	
		// Use this for initialization

		void Start ()
		{



				DontDestroyOnLoad (transform.gameObject);

				audioSourceArray = new AudioSource [audioClipArray.Length];
		
				for (i=0; i < audioSourceArray.Length; i++) {
						AudioSource newSource = gameObject.AddComponent<AudioSource> (); //add component to obj
						newSource.clip = audioClipArray [i]; // adds clip to temporary audiosource
						audioSourceArray [i] = newSource; // puts temp audiosource into aduio array
						soundScript = GetComponent<PlayMusic> ();
				}
		}
	
		void Update ()
		{


		}
	
		public void Play (int i)
		{
				//Debug.Log ("play");
				audioSourceArray [i].Play ();
		
		}
	
		public void PlayLoop (int i)
		{  // call this in update!
		
				if (audioSourceArray [i].isPlaying == false) {
						audioSourceArray [i].Play ();
				}
				//audio.Play;
		}
	
		public void Pause (int i)
		{
				audioSourceArray [i].Pause ();
		}
	
		public void Stop (int i)
		{
				audioSourceArray [i].Stop ();
		}

        public void PlayOnce(int i)
        {
            GetComponent<AudioSource>().PlayOneShot(audioClipArray[i], 1.0f);
        }
	
		public void KillAll ()
		{
				for (y=0; y<audioSourceArray.Length; y++) {
			
						if (audioSourceArray [y].isPlaying) {
								audioSourceArray [y].Stop ();
						}
				}
		
		}

        public void PauseAll()
        {
            for (y = 0; y < audioSourceArray.Length; y++)
            {

                if (audioSourceArray[y].isPlaying)
                {
                    audioSourceArray[y].Pause();
                }
            }

        }


		public void SetVolume (int i, float y)
		{


				if (i < audioSourceArray.Length) {
						audioSourceArray [i].volume = y;
				}
        
        

		}
	
		public void FadeOut (int i)
		{      // bug:cant use this function in update... so where can we use it?
				while (audioSourceArray[i].volume >=0) {
						while (timerCountDown>0) {
								timerCountDown -= Time.deltaTime;

						}
						audioSourceArray [i].volume -= .2f;
						timerCountDown = .5f;
				}
		}

		public void SetAllVolume ()
		{
				for (int j = 0; j < volumeArray.Length; j++) {
						SetVolume (j, volumeArray [j]);
				}
		}

        public void MuteAll()
        {
            for (int j = 0; j < volumeArray.Length; j++)
            {
                SetVolume(j, 0);
            }
        }
	
}
