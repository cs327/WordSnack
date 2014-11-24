using UnityEngine;
using System.Collections;

public class GoBackToMenu : MonoBehaviour
{
		public Sprite menuUnclicked;
		public Sprite menuClicked;
		public bool backToStart = false; //for PlayMusic.cs
		SpriteRenderer s;
		public bool clickSound;

		// Use this for initialization
		void Start ()
		{
				s = gameObject.GetComponent<SpriteRenderer> ();
				s.sprite = menuUnclicked;
		}
	
		// Update is called once per frame
		void OnMouseDown ()
		{
				s.sprite = menuClicked;
				transform.localPosition = new Vector3 (-2.50f, 1, 2.87297f);
//		transform.localScale = new Vector3 (0.25f, 0.49f, 0.49f);

		}

		void OnMouseUp ()
		{
				s.sprite = menuUnclicked;
//		transform.localScale = new Vector3 (.15f, .3f, .49f);
		}
		void OnMouseUpAsButton ()
		{
				s.sprite = menuUnclicked;
				backToStart = true;			
				//Get rid of the GameAnalytics objects so they don't submit things 7000 times
				DestroyObject (GameObject.Find ("GA_SystemTracker"));
				DestroyObject (GameObject.Find ("GA_AdSupport"));
				DestroyObject (GameObject.Find ("GA_Controller"));
//		ScoreLoadingScript.SetLoadingScreen();
				Application.LoadLevel ("StartScreenTest");
				clickSound = true;
		}
}
