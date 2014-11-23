using UnityEngine;
using System.Collections;

public static class ScoreLoadingScript {

	//deactives all the gameobjects for the loading screen
	public static void SetLoadingScreen () {
		GameObject[] allObjects = UnityEngine.Object.FindObjectsOfType<GameObject>() ;
		foreach (GameObject g in allObjects) {
			Debug.Log(g.name);
			if (ValidDeactivation(g) && g.activeInHierarchy) {
				g.transform.renderer.enabled = false;
			} else if (g.name == "Loading") { //activates the renderer for the loading GUI element 
				g.transform.renderer.enabled = true;
			}
		}
	}

	//checks whether each gameobject should be deactivated based on name
	public static bool ValidDeactivation(GameObject g) {
		string[] invalidNames = new string[]{"Loading", "Background", "Main Camera", "Directional light"};
		foreach (string gName in invalidNames) {
			if (g.name == gName || g.GetComponent<Transform>().renderer == null) {
				return false;
			}
		}
		return true;
	}
}
