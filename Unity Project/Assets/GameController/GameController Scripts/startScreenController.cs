using UnityEngine;
using System.Collections;

public class startScreenController : MonoBehaviour {

    public Transform AudioManager_Prefab;

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
}
