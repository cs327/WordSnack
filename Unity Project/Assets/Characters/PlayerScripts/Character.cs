using UnityEngine;
using System.Collections;
using System.Collections.Generic;
<<<<<<< HEAD
<<<<<<< HEAD
using System.Linq;
=======

>>>>>>> Ning
=======

>>>>>>> Ning
public class Character : MonoBehaviour {
	private List<TasteCollection.Taste> myTastes;
	public CharacterTimers Timer;
	public int characterNum;
	public LetterController letterControl;
	public GameObject letterGenerator;
<<<<<<< HEAD
<<<<<<< HEAD
	
	/* Characters:
	 * 0 = Trash Character
	 * 1 = Steve
	 * 2 = Bob
	 * 3 = Sue
	 * */
	
	
	public float Likes(string word) 
	{
		float score = 0;
		if (characterNum != 0) { //It's the trash character
			if (letterControl.checkForWord(word) == false)
				return 0;
		}
		//If we get here, either we're the trash character, or it was a proper word
		return scoreWord(word);
	}
	
	float scoreWord (string word) {
		float wordScore = 0;
		foreach (char letter in word) {
			wordScore += LetterController.letterScores[letter];
		}
		foreach (TasteCollection.Taste t in myTastes) {
			wordScore *= t(word);
		}
		return wordScore;
	}
=======
=======
>>>>>>> Ning

	public Character (List<TasteCollection.Taste> myTastes)
	{
		this.myTastes = myTastes;
		//Timer = new CharacterTimers ();

	}

	public int Likes(string word) 
	{
		int satisfied = 0;
		int bonus = 0;
		foreach (TasteCollection.Taste t in myTastes) {
			if (satisfied > 0 && t(word) > 0)			
				bonus++;
			
			satisfied += t(word);
		}
		return satisfied + bonus;
	}

<<<<<<< HEAD
>>>>>>> Ning
=======
>>>>>>> Ning
	public void AddTaste(TasteCollection.Taste taste)
	{
		myTastes.Add(taste);
	}
	public void AddTaste(List<TasteCollection.Taste> tastes)
	{
		foreach(TasteCollection.Taste t in tastes)
			if(!myTastes.Contains(t))
				myTastes.Add(t);
	}
<<<<<<< HEAD
<<<<<<< HEAD
	
=======

>>>>>>> Ning
=======

>>>>>>> Ning
	public void RemoveTaste(TasteCollection.Taste taste)
	{
		if (myTastes.Contains (taste))
			myTastes.Remove (taste);
	}
	
<<<<<<< HEAD
<<<<<<< HEAD
	
	// Use this for initialization
	void Start () {
		myTastes = new List<TasteCollection.Taste>();
		if(Application.loadedLevelName == "WordMaking"){
			this.AddTaste(TasteCollection.StartsAndEndsWithSame);
			letterGenerator = GameObject.FindGameObjectWithTag("letterController");
			letterControl = letterGenerator.GetComponent<LetterController>();
			
=======
=======
>>>>>>> Ning

	// Use this for initialization
	void Start () {
		if(Application.loadedLevelName == "WordMaking"){

			letterGenerator = GameObject.FindGameObjectWithTag("letterController");
			letterControl = letterGenerator.GetComponent<LetterController>();
<<<<<<< HEAD
>>>>>>> Ning
=======
>>>>>>> Ning
		}
	}
	
	// Update is called once per frame
	void Update () {
<<<<<<< HEAD
<<<<<<< HEAD
		
	}
	
	void OnMouseDown(){
		if(Application.loadedLevelName == "WordMaking"){
			print(letterControl.sendWord());
			float wordScore = Likes (letterControl.sendWord ());
			Debug.Log ("The wordScore is");
			Debug.Log (wordScore);
			if(wordScore > 0){
				//if(1 > 0){
				letterControl.ResetStove();
			}
			
			
		}
	}
	
	
	
	
=======
=======
>>>>>>> Ning
	
	}

	void OnMouseDown(){
		if(Application.loadedLevelName == "WordMaking"){
			print(letterControl.sendWord());
			//if(Likes(letterControl.sendWord()) > 0){
			if(1 > 0){
				letterControl.ResetStove();
			}

				
		}
	}




<<<<<<< HEAD
>>>>>>> Ning
=======
>>>>>>> Ning
}
