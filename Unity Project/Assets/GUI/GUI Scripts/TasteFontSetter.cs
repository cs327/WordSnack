using UnityEngine;
using System.Collections;

public class TasteFontSetter : MonoBehaviour {
	public Font wordMakingFont;
	public Font fontForCharacterSelect;
	// Use this for initialization
	void Start () {
		if (Application.loadedLevelName == "CharacterSelectTest") {
			gameObject.GetComponent<TextMesh>().font = fontForCharacterSelect;
		} else if (Application.loadedLevelName == "WordMaking") {
			gameObject.GetComponent<TextMesh>().font = wordMakingFont;
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
