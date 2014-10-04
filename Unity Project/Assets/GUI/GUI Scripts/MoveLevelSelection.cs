using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveLevelSelection : MonoBehaviour {

	public float settleSpeed = 1.0f;     //How fast we settle to a position when not pressing anything
	public float swipeThreshold = 10.0f; //Min. speed you need to swipe at before it's registered as a swipe
	public float swipeMoveSpeed = 0.1f;  //How fast we move with relation to the mouse
	public float clickThreshold = 5.0f;

	bool swiping = false; //Are we in the middle of swiping to another position
	Vector3 swipeTarget;

	//----------------------------------
	//Keep track of where and when we start pressing the mouse, and where we are when it happens
	float mouseDownTime;
	Vector3 originalPosition; //Where we are in world space
	float startMouseX;
	//-----------------------------------

	List<Vector3> settlingPositions; //A list of positions that we want to focus on, i.e. settle into

	// Use this for initialization
	void Awake () {
		settlingPositions = new List<Vector3> ();
		//FullLevelSelect levelSelect = GetComponent<FullLevelSelect> ();

		//Add the settling position for each of the rooms
		//foreach (Room room in levelSelect.rooms) {
			//Vector3 newPosition = transform.localPosition - room.position;
			//newPosition.y *= -1;
			//settlingPositions.Add(newPosition);
		//}
	}
	
	// Update is called once per frame
	void Update () {
		//If we're holding down, but not swiping, move with the mouse
		if (!UniversalInput.down && !swiping) {
			Vector3 closestSettle = transform.localPosition; //Start it at something sufficiently far away
			float closestSettleDist = Mathf.Infinity;

			//Find the closest settlePosition to our current position
			foreach(Vector3 settlePos in settlingPositions){
				float settleDist = (settlePos - transform.localPosition).magnitude;
				if(settleDist < closestSettleDist){
					closestSettle = settlePos;
					closestSettleDist = settleDist;
				}
			}

			//If we're close enough, just move there
			Vector3 settleDifference = (closestSettle - transform.localPosition);
			if(settleDifference.magnitude < 0.02f){
				transform.localPosition = closestSettle;
			}
			else{
				transform.localPosition += settleSpeed * (closestSettle - transform.localPosition).normalized * Time.deltaTime;
			}
		}
		else if(swiping){
			//If we're close enough, just go to the target position
			Vector3 swipeDifference = swipeTarget - transform.localPosition;
			if(swipeDifference.magnitude < 0.1f){
				transform.localPosition = swipeTarget;
			}
			else{
				//Debug.Log("Swiping");
				transform.localPosition += (swipeTarget - transform.localPosition).normalized * settleSpeed * 5.0f * Time.deltaTime;
			}
		}
	}

	void OnMouseDown(){
		//Stop any swiping, and start moving with the mouse
		mouseDownTime = Time.time;
		originalPosition = transform.localPosition;
		if (Input.mousePresent) {
			startMouseX = Input.mousePosition.x;
		}
		else{
			startMouseX = Input.touches [0].position.x;
		}
		swiping = false;
	}

	void OnMouseDrag(){
		if(!swiping){ //Prevent this from firing until we've updated our variables in OnMousedown()
			float mouseDelta = UniversalInput.x - startMouseX;
			transform.localPosition = originalPosition + Vector3.right * mouseDelta/Screen.width * swipeMoveSpeed;
		}
		//Debug.Log (mouseDelta);
	}

	//Check if we're swiping, and swipe if need be
	void OnMouseUp(){
		float mouseDelta = UniversalInput.x - startMouseX;
		float swipeDuration = Time.time - mouseDownTime;
		float swipeSpeed = Mathf.Abs(mouseDelta/Screen.width) / swipeDuration;

		//If we swiped fast enough for it to be a swipe
		if (swipeSpeed > swipeThreshold) {
			//Debug.Log("Swipe: " + mouseDelta.ToString());
			Swipe(mouseDelta);
		}
		//If we stayed in more or less the same place, it's a tap
		else if(Mathf.Abs(mouseDelta/Screen.width) < clickThreshold){
			RaycastHit hit;
			Ray ray = Camera.main.ScreenPointToRay(new Vector3(UniversalInput.x, Screen.height - UniversalInput.y, 0.0f));
			if(Physics.Raycast(ray, out hit, Mathf.Infinity, 1 << LayerMask.NameToLayer("UI"))){
				hit.transform.gameObject.SendMessage("OnClicked",SendMessageOptions.DontRequireReceiver);
			}
		}
	}

	//Based on what direction we've swiped in, move to the nearest left or right position
	void Swipe(float mouseDelta){
		Vector3[] settlingArray = settlingPositions.ToArray ();

		//Find the settling positions immediately to the left and right of our current position, and swipe to the one we need
		for (int i = 0; i < settlingArray.Length; i++) {
			if(settlingArray[i].x < transform.localPosition.x){
				if(i == 0){
					break;
				}
				//If we're moving to the right
				if(mouseDelta < 0){
					swipeTarget = settlingArray[i];
					swiping = true;
					return;
				}
				//If we're moving to the left
				else{
					swiping = true;
					swipeTarget = settlingArray[i-1];
					return;
				}
			}
		}
	}
}
