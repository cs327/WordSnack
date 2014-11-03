using UnityEngine;
using System.Collections;

public class startScreenController : MonoBehaviour {

    public Transform AudioManager_Prefab;
	public string versionNum;

	// Use this for initialization
	void Start () {

        if (GameObject.Find("AudioManager_Prefab(Clone)") == null)
        {
            Instantiate(Resources.Load("AudioManager_Prefab"), new Vector3(0, 0, 0), Quaternion.identity);
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
