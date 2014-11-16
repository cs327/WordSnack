using System;
using UnityEngine;
using System.Collections;

public class ReceiptMover : MonoBehaviour
{
    Camera c;
    public bool winSound; //for PlayMusic script
    public static float lowestPos;
    public static float highestPos;
    public bool Touched;
	public bool inBounds;
    public Vector3 lastClickPos;
    private Vector3 gameObjectPosAtLastClick;
    public float scrollScale;
	public TextMesh tester;

    // Use this for initialization
    void Start()
    {
        // This can be programmatically changed
        //lowestPos = -7.470931f;
        Touched = false;
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
        Vector3 pos = gameObject.transform.localPosition;
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
        gameObjectPosAtLastClick = gameObject.transform.localPosition;
        Debug.Log("Touched");
        Touched = true;
		inBounds = true; 
    }

	void OnMouseUp() {
		inBounds = false;
	}

	void OnMouseDrag () {
		float scaleForPhone = 0;
		if (Application.platform == RuntimePlatform.IPhonePlayer || Application.platform == RuntimePlatform.IPhonePlayer) {
			scaleForPhone = 5;
		}
		Vector3 pos = gameObject.transform.localPosition;
		Vector3 currentPos = transform.position;
		float scrollPos = (Input.mousePosition.y)/40 - scaleForPhone;
		print (Input.mousePosition.y);
		if (pos.y <= highestPos + 5 || scrollPos > 0){ 
			gameObject.transform.position = new Vector3(currentPos.x, scrollPos, currentPos.z);
		}	
	}

    // Update is called once per frame
    private void Update()
    {
		print (Input.mousePosition.y);
        if ((int) lowestPos == -7)
            Debug.Log("Didn't set startpos correctly");

        Vector3 pos = gameObject.transform.localPosition;
		Vector3 currentPos = transform.position;
		float scrollPos = 0;
//        if (Touched)
//        {
//            if (inBounds && Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Moved)
//            {
//
//				scrollPos = transform.position.y;
//				scrollPos += Input.GetTouch(0).deltaPosition.y;
//                Debug.Log("Moved receipt by " + Input.GetTouch(0).deltaPosition.y);
//				gameObject.transform.position = new Vector3(currentPos.x, scrollPos, currentPos.z);
//
//
//               
//            }
//			if (inBounds && Input.mousePresent && Input.GetMouseButton(0))
//            {
//                //Debug.Log(Input.mousePosition.y);
//                //Debug.Log(lastClickPos.y);
//                //Debug.Log("moved receipt by " + (Input.mousePosition - lastClickPos).y.ToString());
//                gameObject.transform.localPosition = gameObjectPosAtLastClick;
//                gameObjectPosAtLastClick = GetNewPosition((Input.mousePosition - lastClickPos) * scrollScale);
//				tester.transform.renderer.material.color = Color.blue;
//            } else {
//				tester.transform.renderer.material.color = Color.white;
//			}
//        }
		if ((!Touched || currentPos.y < - 5) && pos.y <= highestPos - .01) 
		{
			transform.position += Vector3.up *Time.deltaTime * 2;
//            if (pos.y <= highestPos - .01)
//            {
//                float change = Time.deltaTime;
//                Debug.Log("started at : " + pos.y + " moved to " + pos.y + change);
//                pos.y = Mathf.Clamp(pos.y + change * 1.0f, pos.y, highestPos);
//                gameObject.transform.localPosition = GetNewPosition(Time.deltaTime * 2.0f);
//            }
//            else
//            {
//                Debug.Log("Resting place: " + transform.localPosition.y);
//                Touched = true;
//                //Debug.Log("Arrived at " + gameObject.transform.position);
//            }

       }
	}

}
