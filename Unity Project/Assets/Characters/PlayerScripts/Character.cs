using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
public class Character : MonoBehaviour {
private List<TasteCollection.Taste> myTastes;
//public CharacterTimers Timer;
public int characterNum;
public LetterController letterControl;
public GameObject letterGenerator;
private VariableControl variables;
//Dictionary of taste ID's to names
public static Dictionary<int,TasteCollection.Taste> tasteDictionary;
public List<string> wordsFedToMe;
public int Likes(string word)
{	
if (characterNum != 0) { //It's the trash character
if (letterControl.checkForWord (word) == false) {	
Debug.Log ("Not a word and this isn't the trash character");
return 0;	
}	
}
//If we get here, either we're the trash character, or it was a proper word
Debug.Log ("About to score the word");
float tempScore = scoreWord (word);
return (int)tempScore;	
}
float scoreWord (string word) {
float wordScore = 0;
foreach (char letter in word) {
wordScore += LetterController.letterScores[letter];
}
Debug.Log ("Score for the letters is");
Debug.Log (wordScore);
foreach (TasteCollection.Taste t in myTastes) {
Debug.Log ("Checking a taste");
wordScore *= t(word);
}
Debug.Log ("Score after tastes is");
Debug.Log (wordScore);
return wordScore;
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
//get the same variables everyone else is using
variables = GameObject.Find("GameController").GetComponent<VariableControl>();
//For testing because I can't get a real character number
if(Application.loadedLevelName == "WordMaking")
characterNum = Random.Range (0, 5);
//print my character Number for debugging purposes
if (Application.loadedLevelName == "WordMaking") {
print ("My character number is");
print (characterNum);
}
if(tasteDictionary == null)
{
tasteDictionary = new Dictionary<int,TasteCollection.Taste> ();
//Create the dictionary of taste ID's to functions
tasteDictionary.Add (0, TasteCollection.threeLetters);
tasteDictionary.Add (1, TasteCollection.fiveOrLonger);
tasteDictionary.Add (2, TasteCollection.unCommonLetters);
tasteDictionary.Add (3, TasteCollection.endsWithVowel);
tasteDictionary.Add (4, TasteCollection.twoOrMoreVowels);
tasteDictionary.Add (5, TasteCollection.twoOrMoreSame);
tasteDictionary.Add (6, TasteCollection.startsWithVowel);
tasteDictionary.Add (7, TasteCollection.startsAndEndsWithSame);
tasteDictionary.Add (8, TasteCollection.fourLetters);
tasteDictionary.Add (9, TasteCollection.noPreference);
tasteDictionary.Add (10, TasteCollection.trashCollection);
}
myTastes = new List<TasteCollection.Taste>();
if(Application.loadedLevelName == "WordMaking"){
//initialize the tastes for the characters
//First make a generic list of the character taste arrays so that I can
//easily access my tastes with my character number
List<int[]> characterTastes = new List<int[]>();
characterTastes.Add (new int[] {10}); //The trash character, ID 0, has one taste, taste 10
characterTastes.Add (variables.TastesForCharacter1);
characterTastes.Add (variables.TastesForCharacter2);
characterTastes.Add (variables.TastesForCharacter3);
characterTastes.Add (variables.TastesForCharacter4);
characterTastes.Add (variables.TastesForCharacter5);
//now we add an arbitrary number of tastes
foreach(int t in characterTastes[characterNum]) {
this.AddTaste(tasteDictionary[t]);
}
letterGenerator = GameObject.FindGameObjectWithTag("letterController");
letterControl = letterGenerator.GetComponent<LetterController>();
}
}
// Update is called once per frame
void Update () {
}
void OnMouseDown(){
if(Application.loadedLevelName == "WordMaking"){
//First grab the word - we're gonna need it!
string word = letterControl.sendWord ();
//score the word - do we have a score?
int wordScore = Likes(word);
Debug.Log (word);
//If it was valid, we'll get a score above 0, so update our score and get that word out of here!
if(wordScore > 0){
//if(1 > 0){
//Keep track of words fed to me!
wordsFedToMe.Add(word);
//update the score!
variables.score += wordScore;
Debug.Log ("The total score is");
Debug.Log (variables.score);
letterControl.ResetStove();
}
}
}
}
