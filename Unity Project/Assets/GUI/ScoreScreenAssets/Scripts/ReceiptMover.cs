using System;
using UnityEngine;
using System.Collections;

public class ReceiptMover : MonoBehaviour
{
	Camera c;
	public bool winSound; //for PlayMusic script
    // This stores the lowest position the receipt should snap to when it's touched.
    // The top edge of the receipt should be just below the top of the screen at this position
	public static float lowestPos;
    // This stores the highest position the receipt should go, i.e the position the receipt autoscrolls to
    // The bottom edge should be just above the bottom of the screen at this position
	public static float highestPos;
    // Returns true if the receipt was touched, which stops autoscrolling from happening. 
	public bool Touched;
    // Saves the screen position when the mouse/touch was pressed down.
    // Used to find move the receipt appropriately when scrolling.
	public Vector3 lastClickPos;
    // Saves the position of the receipt when touched, used to scroll
	private Vector3 gameObjectPosAtLastClick;
    // Number used to scale down how far the receipt scrolls when touched
	public float scrollScale;
	public TextMesh tester;
	//ReceiptGUI receipt;
	// Use this for initialization
	void Start()
	{
		//receipt = gameObject.GetComponent<ReceiptGUI>();
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
	
	public Vector3 GetClampedPosition(Vector3 deltaPos)
	{
		float scaleForPhone = 0;
		if (Application.platform == RuntimePlatform.IPhonePlayer || Application.platform == RuntimePlatform.IPhonePlayer) {
			scaleForPhone = 2;
		}
	    Vector3 pos = gameObject.transform.position;
	    if (deltaPos.y > 0 && deltaPos.y + pos.y < lowestPos)
	        pos.y = pos.y + deltaPos.y;
        else
	        pos.y = Mathf.Clamp(deltaPos.y + pos.y, lowestPos, highestPos);
        
	    return pos;
	}
	
	public Vector3 GetClampedPosition(float deltaY)
	{
		Vector3 pos = new Vector3(0, deltaY, 0);
		return GetClampedPosition(pos);
	}
	
	void OnMouseDown()
	{
		lastClickPos = Input.mousePosition;
		gameObjectPosAtLastClick = gameObject.transform.localPosition;
		Debug.Log("Touched");
	    Touched = highestPos == lowestPos ? false : true;
	}
	
	void OnMouseDrag () {
		float scaleForPhone = 0;
		if (Application.platform == RuntimePlatform.IPhonePlayer || Application.platform == RuntimePlatform.IPhonePlayer) {
			scaleForPhone = 2;
		}
	    if (lowestPos == highestPos)
	        return;
		float scrollDelta = (Input.mousePosition.y - lastClickPos.y)*scrollScale;
		
		//print (Input.mousePosition.y);
		gameObject.transform.position = GetClampedPosition(scrollDelta);
	}
	
	// Update is called once per frame
	private void Update()
	{
		float scaleForPhone = 0;
		if (Application.platform == RuntimePlatform.IPhonePlayer || Application.platform == RuntimePlatform.IPhonePlayer) {
			scaleForPhone = 2;
		}
		//faprint (Input.mousePosition.y);
		if ((int) lowestPos == -7)
			Debug.Log("Didn't set startpos correctly");
		
		Vector3 pos = gameObject.transform.localPosition;
		
		//        if (Touched)
		//        {
		//            if (inBounds && Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Moved)
		//            {
		//
		//				scrollPos = transform.position.y;
		//				scrollPos += Input.GetTouch(0).deltaPosition.y;
		//                Debug.Log("Moved receipt by " + Input.GetTouch(0).deltaPosition.y);
		//				gameObject.transform.position = new Vector3(currentPos.x, scrollPos, currentPos.z);            
		//            }
		//			if (inBounds && Input.mousePresent && Input.GetMouseButton(0))
		//            {
		//                //Debug.Log(Input.mousePosition.y);
		//                //Debug.Log(lastClickPos.y);
		//                //Debug.Log("moved receipt by " + (Input.mousePosition - lastClickPos).y.ToString());
		//                gameObject.transform.localPosition = gameObjectPosAtLastClick;
		//                gameObjectPosAtLastClick = GetClampedPosition((Input.mousePosition - lastClickPos) * scrollScale);
		//				tester.transform.renderer.material.color = Color.blue;
		//            } else {
		//				tester.transform.renderer.material.color = Color.white;
		//			}
		//        }
		scaleForPhone = 10;
		if (!Touched && pos.y <= highestPos + scaleForPhone)
			//	&& pos.y <= lowestPos
		{
			//Debug.Log("Before: " + pos.y);
			gameObject.transform.position = GetClampedPosition(Time.deltaTime*2.0f);
			//		    if (gameObject.transform.localPosition.y >= lowestPos)
			//		        Touched = true;
			//Debug.Log("After: " + gameObject.transform.);
			//            if (pos.y <= highestPos - .01)
			//            {
			//                float change = Time.deltaTime;
			//                Debug.Log("started at : " + pos.y + " moved to " + pos.y + change);
			//                pos.y = Mathf.Clamp(pos.y + change * 1.0f, pos.y, highestPos);
			//                gameObject.transform.localPosition = GetClampedPosition(Time.deltaTime * 2.0f);
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
