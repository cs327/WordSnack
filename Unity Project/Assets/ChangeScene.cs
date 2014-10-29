using UnityEngine;
using System.Collections;

public class ChangeScene : MonoBehaviour
{

    public string versionNum;
    // Use this for initialization
    void Start()
    {
		PlayerPrefs.DeleteAll ();

        if (GameObject.Find("AudioManager_Prefab(Clone)") == null)
        {
            Instantiate(Resources.Load("AudioManager_Prefab"), new Vector3(0, 0, 0), Quaternion.identity);
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Time.time > 3)
        {
            if (Application.loadedLevelName == "SplashScreen")
            {
                Application.LoadLevel("StartScreenTest");
            }
        }

    }


    void OnMouseDown()
    {
        if (Application.loadedLevelName == "SplashScreen")
        {
            Application.LoadLevel("StartScreenTest");
        }
    }

    void OnGUI()
    {
        GUIStyle style = new GUIStyle();
        style.fontSize = 22;
        style.normal.textColor = Color.white;
        GUI.Label(new Rect(Screen.width * 0.7f, Screen.height * 0.05f, Screen.width * 0.3f, Screen.height * 0.12f), versionNum, style);
    }
}