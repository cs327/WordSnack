using UnityEngine;
using System.Collections;

/*
This is the base class for all UIElements to inherit from.  They can be drawn, they can be clicked, etc.

To make a UI script, inherit from this class, and override the virtual methods.
 */

[System.Serializable]
public class UIElement : MonoBehaviour {

	public Texture icon;
	public Vector2 position;
	public Vector2 maxSize; //(0,0) -> (1,1), where 1 is the height of the screen
	public new string name;

	protected Camera UICam;

	// Use this for initialization
	protected virtual void Start () {
		if (icon == null) {
			Debug.LogWarning("It looks like the icon for this UIElement is null.  It won't show up on screen, and may cause problems.");		
		}

		MeshFilter meshFilter = gameObject.GetComponent<MeshFilter> ();
		if (meshFilter == null) {
			Debug.LogWarning("It seems you attached a UIElement to a GameObject without a MeshFilter: " + ToString());
		}
		else{
			int vertices = meshFilter.mesh.vertexCount;
			if (vertices > 6 || vertices < 4) {
				Debug.LogWarning("It appears that you've attached a UIElement to a GameObject that isn't a quad.  " +
								 "Try to only attach them to quads for best results.");		
			}
		}

		UICam = GameObject.Find ("UI Camera").camera;
	}

	void Update(){
		//Vector3 screenPoint = new Vector3 (position.x * Screen.width, (1 - position.y) * Screen.height, 0);
		//Vector3 worldPoint = UICam.ScreenToWorldPoint (screenPoint) + UICam.transform.forward;
		//transform.position = worldPoint;
		//transform.localScale = new Vector3 (maxSize.x * 2, maxSize.y * 2, 1.0f);
	}
	
	public virtual void OnClicked(Vector3 worldPosition){
	}

	public virtual void OnClickAway(UIElement clickedElement = null){

	} 
}
