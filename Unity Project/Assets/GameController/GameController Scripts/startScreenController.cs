using UnityEngine;
using System.Collections;

public class startScreenController : MonoBehaviour {

    public Transform AudioManager_Prefab;
	public string versionNum;

	public GameObject backgroundStars;
	public GameObject diner;

	// Use this for initialization
	void Start () {

        if (GameObject.Find("AudioManager_Prefab(Clone)") == null)
        {
            Instantiate(Resources.Load("AudioManager_Prefab"), new Vector3(0, 0, 0), Quaternion.identity);
        }

		// if we get here and there's no background, create it and the diner
		if (GameObject.Find ("Starfield Background") == null) {
			Instantiate (backgroundStars, new Vector3(0, 0, 30), Quaternion.identity);
			Instantiate (diner, new Vector3(1, 0, 5), Quaternion.identity);
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI()
	{
		GUIStyle style = new GUIStyle();
		style.fontSize = 22;
		style.normal.textColor = Color.white;
		GUI.Label(new Rect(Screen.width * 0.7f, Screen.height * 0.05f, Screen.width * 0.3f, Screen.height * 0.12f), versionNum, style);
	}
}
