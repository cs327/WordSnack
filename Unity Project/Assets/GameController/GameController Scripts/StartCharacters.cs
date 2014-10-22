using UnityEngine;
using System.Collections;

public class StartCharacters : MonoBehaviour
{
		public GameObject[] characters = new GameObject[5];
		public Vector3 charLoc1;
		public Vector3 charLoc2;
		private bool meanTrashToggle = false;
		private bool pickyMonstersToggle = false;
		private bool impatientMonstersToggle = false;
		// Use this for initialization
		void Start ()
		{
				Instantiate (characters [PlayerPrefs.GetInt ("Character 1") - 1], charLoc1, Quaternion.identity);
				Instantiate (characters [PlayerPrefs.GetInt ("Character 2") - 1], charLoc2, Quaternion.identity);
		}
	
		// Update is called once per frame
		void Update ()
		{
	
		}


		void OnGUI ()
		{

				if (GUI.Button (new Rect (Screen.width * 0.1f, Screen.height * 0.8f, Screen.width * 0.12f, Screen.height * 0.12f), "Reset\nData")) {
						PlayerPrefs.DeleteAll ();
				}
				meanTrashToggle = GUI.Toggle (new Rect (Screen.width * 0.1f, Screen.height * 0.1f, Screen.width * 0.12f, Screen.height * 0.12f), meanTrashToggle, "Mean\nTrash");
				pickyMonstersToggle = GUI.Toggle (new Rect (Screen.width * 0.1f, Screen.height * 0.2f, Screen.width * 0.12f, Screen.height * 0.12f), pickyMonstersToggle, "Picky\nMonsters");
				impatientMonstersToggle = GUI.Toggle (new Rect (Screen.width * 0.1f, Screen.height * 0.3f, Screen.width * 0.12f, Screen.height * 0.12f), impatientMonstersToggle, "Impatient\nMonsters");
				if (meanTrashToggle) {
						PlayerPrefs.SetInt ("Mean Trash", 1);
				} else {
						PlayerPrefs.SetInt ("Mean Trash", 0);
				}
				if (pickyMonstersToggle) {
						PlayerPrefs.SetInt ("Picky Monsters", 1);
				} else {
						PlayerPrefs.SetInt ("Picky Monsters", 0);
				}
				if (impatientMonstersToggle) {
						PlayerPrefs.SetInt ("Impatient Monsters", 1);
				} else {
						PlayerPrefs.SetInt ("Impatient Monsters", 0);
				}
		}
}