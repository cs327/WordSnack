using System;
using UnityEngine;
using System.Collections;

public class ReceiptMover : MonoBehaviour
{
    Camera c;
    public bool winSound; //for PlayMusic script
    public float startPos = -20f;
    public static float endPos = 3.0f;
    public bool Touched = false;
    public Vector3 lastClickPos;

    // Use this for initialization
    void Start()
    {
        // This can be programmatically changed
        startPos = -7.470931f;
        endPos = 3.0f;
        c = GameObject.Find("Main Camera").GetComponent<Camera>();
        winSound = true;

        if (GameObject.Find("AudioManager_Prefab(Clone)") == null)
        {
            Instantiate(Resources.Load("AudioManager_Prefab"), new Vector3(0, 0, 0), Quaternion.identity);
        }
        Debug.Log("Start position " + gameObject.transform.position.ToString());
        Debug.Log("endpos at start " + endPos);
    }

    public Vector3 GetNewPosition(Vector3 deltaPos)
    {
        Vector3 pos = gameObject.transform.position;
        pos.y = Mathf.Clamp((pos.y + deltaPos.y), startPos, endPos);
        return pos;
    }

    public Vector3 GetNewPosition(float deltaY)
    {
        Vector3 pos = new Vector3(0, deltaY, 0);
        return GetNewPosition(pos);
    }

    void OnMouseDown()
    {
        if (Input.mousePresent)
        {
            lastClickPos = gameObject.transform.position;
        }
        Debug.Log("Touched");
        Touched = true;
    }

    // Update is called once per frame
    private void Update()
    {

        Vector3 pos = gameObject.transform.position;

        if (Touched)
        {
            if (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Moved)
            {
                gameObject.transform.position = GetNewPosition(Input.GetTouch(0).deltaPosition);
            }
            if (Input.mousePresent && Input.GetMouseButtonDown(0))
            {
                gameObject.transform.position = GetNewPosition(Input.mousePosition - lastClickPos);
            }
        }
        else
        {
            if (pos.y <= endPos - .01)
            {
                Debug.Log(" pos.y " + pos.y + " endpos " + endPos);
                Debug.Log("oldpos " + pos.y + " newPos " + (pos.y + Time.deltaTime*2.0f).ToString());
                pos.y = Mathf.Clamp(pos.y + Time.deltaTime * 2.0f, pos.y + Time.deltaTime * 2.0f, endPos);
                gameObject.transform.position = GetNewPosition(Time.deltaTime * 2.0f);
            }
            else
            {
                //Debug.Log("Arrived at " + gameObject.transform.position);
            }
        }
    }
}
