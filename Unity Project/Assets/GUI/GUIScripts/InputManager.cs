using UnityEngine;
using System.Collections;

/*
This file contains the UniversalInput and InputManager classes, which abstract over mouse and touch input.
 */

public static class UniversalInput{// this is the class that stores both mouse and touch input for use in other scripts

	public static int x; //the x position in pixels, starting at the left of the screen
	public static int y; //the y position in pixels, starting at the top of the screen
	public static bool press; //true the first frame that the mouse button is pressed or the screen is touched
	public static bool release; //true the first frame that the mouse button is NOT pressed or the screen is NOT touched
	public static bool down; //true while the mouse button is pressed or the screen is being touched
	public static bool guiCapture; //True if the mouse event was registered by an OnGUI() call

	public static bool inRect(Rect bounds){//returns true if the position of the cursor/touch is within the given Rect
		return (x > bounds.x && y > bounds.y && x < bounds.x + bounds.width && y < bounds.y + bounds.height);
	}

	public static bool inRect(Bounds bounds,Camera cam){//returns true if the position of the cursor/touch is within the given Bounds from perspective of the given Camera
		Vector2 topRight = cam.WorldToScreenPoint (bounds.center + bounds.extents);
		Vector2 bottomLeft = cam.WorldToScreenPoint (bounds.center - bounds.extents);
		Rect rect = new Rect (bottomLeft.x, Screen.height-topRight.y, topRight.x - bottomLeft.x, topRight.y-bottomLeft.y);
		return (x > rect.x && y > rect.y && x < rect.x + rect.width && y < rect.y + rect.height);
	}

	public static Vector3 worldLocation;//The world position of the cursor/touch
}

public class InputManager : MonoBehaviour {

	void LateUpdate () {
		bool lastDown=UniversalInput.down;//temporarily store the most recent state of the mouse/touch for later comparison

		if (Input.mousePresent) {//if there's a mouse present, assume we're on a PC and update the UniversalInput class accordingly
			UpdatePC ();
		} else{//otherwise, assume we're on mobile and update the UniversalInput class accordingly
			UpdateMobile();
		}

		if(UniversalInput.down&&!lastDown){//If this is the first frame that down is true, set press to true
			UniversalInput.press=true;
		}else{
			UniversalInput.press=false;
		}

		if(!UniversalInput.down&&lastDown){//If this is the first frame that down is not true, set release to true
			UniversalInput.release=true;
		}else{
			UniversalInput.release=false;
		}

		//Find where the mouse position intersects with the y=0 plane and set worldLocation to that

		Ray ray = GetComponent<Camera>().ScreenPointToRay (new Vector3 (UniversalInput.x, Screen.height - UniversalInput.y, 0));
		Plane hPlane = new Plane(Vector3.up, Vector3.zero);
		// Plane.Raycast stores the distance from ray.origin to the hit point in this variable:
		float distance = 0; 
		// if the ray hits the plane...
		if (hPlane.Raycast(ray, out distance)){
			// get the hit point:
			UniversalInput.worldLocation  = ray.GetPoint(distance);
		}

		if (UniversalInput.press) {
			GameObject hitUI = UIManager.CheckUIClick(new Vector3(UniversalInput.x, Screen.height - UniversalInput.y, 0), false);

			if(hitUI == null){
				RaycastHit hit;
				if(Physics.Raycast(ray, out hit)){
					hit.transform.gameObject.SendMessage("OnUniversalUp",SendMessageOptions.DontRequireReceiver);
					//Debug.Log(hit.transform.gameObject);
				}
			}
		}
	}

	void UpdatePC(){
		UniversalInput.x = (int)Input.mousePosition.x;
		UniversalInput.y = (int)(Screen.height-Input.mousePosition.y); //Compensate for the fact that Input.mousePosition has its origin in the LOWER left
		UniversalInput.down = Input.GetButton ("Fire1");
	}

	void UpdateMobile(){
		if (Input.touchCount == 0) {//the screen is not being touched
			UniversalInput.down=false;
		}else{
			UniversalInput.down=true;
			UniversalInput.x = (int)Input.GetTouch (0).position.x;
			UniversalInput.y = (int)Input.GetTouch (0).position.y;
		}
	}
}
