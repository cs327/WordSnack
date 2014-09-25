using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CharacterClass {
	private List<TasteCollection.Taste> myTastes;
	public CharacterTimers Timer;

	public CharacterClass(List<TasteCollection.Taste> myTastes)
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

	public void RemoveTaste(TasteCollection.Taste taste)
	{
		if (myTastes.Contains (taste))
			myTastes.Remove (taste);
	}
	

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
