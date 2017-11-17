using UnityEngine;
using System.Collections;

/*
This script deals with the UI subsystem, i.e. adding or removing elements, etc.
 */

public class UIManager : MonoBehaviour {
	public static UIManager instance;

	public UIElement[] startingElements;
	
	static Camera UICam;
	static bool hasBeenClicked = false;

	void Awake(){
		//If there's no other UIManager in the scene
		if (instance == null) {
			instance = this;		
		}

		//If there is another, we kill ourselves
		if (instance != this) {
			Destroy(gameObject);		
		}

		UICam = GameObject.Find ("UI Camera").GetComponent<Camera>();

		foreach (UIElement elem in startingElements) {
			AddUIElement(elem);
		}
	}

	void Start(){
	}

	void LateUpdate(){
		hasBeenClicked = false;
	}
	
	//The position is in standard image coordinates, Goes from (0,0) -> (1,1); upper left to lower right
	public static GameObject AddUIElement(UIElement element, Vector3? position = null, GameObject context = null){
		Vector3 screenPoint;

		if (position == null) {
			//Use the position that the elements have coded in
			screenPoint = new Vector3 (element.position.x * Screen.width, (1 - element.position.y) * Screen.height, 1.0f);
		}
		else{
			//Or specify your own position to use
			screenPoint = new Vector3 (position.Value.x * Screen.width, position.Value.y * Screen.height, position.Value.z);
		}

		Vector3 worldPoint = UICam.ScreenToWorldPoint (screenPoint) + UICam.transform.forward;
		UIElement newElement = Instantiate (element, worldPoint, Quaternion.identity) as UIElement;
		newElement.transform.position = worldPoint;

		if(newElement.icon != null){
			newElement.GetComponent<Renderer>().material.mainTexture = newElement.icon;
		}

		/*
		if (context != null && element is TowerMenu) {
			TowerMenu elementCast = newElement as TowerMenu;
			elementCast.tower = context;
			newElement = elementCast;
		}
		*/

		//Adjust scaling to match what the element needs
		newElement.transform.localScale = new Vector3 (newElement.maxSize.x * 2, newElement.maxSize.y * 2, 1.0f);

		newElement.transform.parent = GameObject.Find ("UI Camera").transform;

		return newElement.gameObject;
	}

	public static GameObject CheckUIClick(Vector3 mousePosition, bool sendMessage = true){
		if (UICam == null) {
			return null;	
		}
		if(!hasBeenClicked && sendMessage){
			if(sendMessage){
				hasBeenClicked = true;
			}

			Ray clickRay = UICam.ScreenPointToRay (mousePosition);
			RaycastHit hit;

			//If we hit a UI element, then click on it
			if (Physics.Raycast (clickRay, out hit, Mathf.Infinity, 1 << LayerMask.NameToLayer("UI"))) {
				UIElement element = hit.transform.GetComponent<UIElement>();
				if(element != null && element.enabled){
					if(sendMessage){
						hit.transform.gameObject.SendMessage("OnClicked", hit.point);

						//Tell all the other UI Elements that we've clicked on something else
						foreach(UIElement elem in GameObject.FindObjectsOfType<UIElement>()){
							elem.OnClickAway(hit.transform.GetComponent<UIElement>());
						}
					}

					return hit.transform.gameObject;
				}
			}
			else{
				if(sendMessage){
					//Tell all the other UI Elements that we've clicked outside the UI
					foreach(UIElement elem in GameObject.FindObjectsOfType<UIElement>()){
						elem.OnClickAway(null);
					}
				}

				return null;
			}
		}

		return null;
	}


	void Update(){
	}
}
