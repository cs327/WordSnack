using System;
using UnityEngine;
using System.Collections;

public class ReceiptMover : MonoBehaviour
{
    Camera c;
    public bool winSound; //for PlayMusic script
    public static float lowestPos;
    public static float highestPos;
    public bool Touched = false;
    public Vector3 lastClickPos;
    private Vector3 gameObjectPosAtLastClick;
    public float scrollScale;

    // Use this for initialization
    void Start()
    {
        // This can be programmatically changed
        //lowestPos = -7.470931f;
        
        c = GameObject.Find("Main Camera").GetComponent<Camera>();
        winSound = true;

        if (GameObject.Find("AudioManager_Prefab(Clone)") == null)
        {
            Instantiate(Resources.Load("AudioManager_Prefab"), new Vector3(0, 0, 0), Quaternion.identity);
        }

        //Vector3 pos = gameObject.transform.position;
        //pos.y = lowestPos;
        //gameObject.transform.position = pos;
    }

    public Vector3 GetNewPosition(Vector3 deltaPos)
    {
        Vector3 pos = gameObject.transform.position;
        pos.y = Mathf.Clamp((pos.y + deltaPos.y), lowestPos, highestPos);
        return pos;
    }

    public Vector3 GetNewPosition(float deltaY)
    {
        Vector3 pos = new Vector3(0, deltaY, 0);
        return GetNewPosition(pos);
    }

    void OnMouseDown()
    {
        lastClickPos = Input.mousePosition;
        gameObjectPosAtLastClick = gameObject.transform.position;
        Debug.Log("Touched");
        Touched = true;
    }

    // Update is called once per frame
    private void Update()
    {
        if ((int) lowestPos == -7)
            Debug.Log("Didn't set startpos correctly");

        Vector3 pos = gameObject.transform.position;

        if (Touched)
        {
            if (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Moved)
            {
                Debug.Log("Moved receipt by " + Input.GetTouch(0).deltaPosition.y);
                gameObject.transform.position = GetNewPosition(Input.GetTouch(0).deltaPosition * scrollScale);
            }
            if (Input.mousePresent && Input.GetMouseButton(0))
            {
                //Debug.Log(Input.mousePosition.y);
                //Debug.Log(lastClickPos.y);
                //Debug.Log("moved receipt by " + (Input.mousePosition - lastClickPos).y.ToString());
                gameObject.transform.position = gameObjectPosAtLastClick;
                gameObjectPosAtLastClick = GetNewPosition((Input.mousePosition - lastClickPos) * scrollScale);
            }
        }
        else
        {
            if (pos.y <= highestPos - .01)
            {
                //Debug.Log(" pos.y " + pos.y + " endpos " + endPos);
                //Debug.Log("oldpos " + pos.y + " newPos " + (pos.y + Time.deltaTime*2.0f).ToString());
                pos.y = Mathf.Clamp(pos.y + Time.deltaTime * 2.0f, pos.y + Time.deltaTime * 2.0f, highestPos);
                gameObject.transform.position = GetNewPosition(Time.deltaTime * 2.0f);
            }
            else
            {
                Debug.Log("Resting place: " + transform.position.y);
                Touched = true;
                //Debug.Log("Arrived at " + gameObject.transform.position);
            }
        }
    }
}
