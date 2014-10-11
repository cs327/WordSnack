using UnityEngine;
using System.Collections;

public class Loading : MonoBehaviour {
	
	public static Loading instance;
	public bool showLoadingScreen = true;
	public Texture loadingScreen;
	
	void Awake(){
		if(instance == null){
			instance = this;
		}
		if(instance != this){
			Destroy(gameObject);
		}
		else{
			//DontDestroyOnLoad(gameObject);
		}
	}
	
	// Update is called once per frame
	void OnGUI () {
		if(showLoadingScreen && Application.isLoadingLevel && loadingScreen != null){
			GUI.DrawTexture(new Rect(0,0,Screen.width,Screen.height),loadingScreen);
		}
	}
}