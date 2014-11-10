using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System;

public class StoreWordsFed : MonoBehaviour {
	public List <string> character1Words;
	public List <string> character2Words;
	public float score;
	public int rawScore;
	public int multiScore;
	public int trashLetterNum;
	public int trashedLetterScore;
	// Use this for initialization
	void Start () {
		if (Application.loadedLevelName == "WordMaking"){
			DontDestroyOnLoad(gameObject);
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (Application.loadedLevelName != "WordMaking" && Application.loadedLevelName != "ScoreScreen") {
			Destroy(gameObject);
		}
	}
}
