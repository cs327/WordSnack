using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using UnityEngine;
using System.Collections;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using System.Linq;

public class Tutorial : MonoBehaviour
{
    private bool sceneStarted = false;
    public Texture2D[] instructions = new Texture2D[5];
    MeshRenderer m;
    Vector3 pos;
    Vector3 parentPos;
    Transform trash;
    //Rect checkBox;
    wordBuildingController w;
    GameObject character1;
    GameObject character2;
    public bool clickSound;
    public bool timerBegin = false;
	GameObject leftTaste;
	GameObject rightTaste;
	GameObject topDarkOut;
	GameObject bottomDarkOut;
    
    // Use this for initialization
    void Start()
    {        
        m = gameObject.GetComponent<MeshRenderer>();
        m.GetComponent<Renderer>().material.mainTexture = instructions[0];
        pos = transform.localPosition;
        parentPos = transform.parent.transform.position;
        trash = GameObject.Find("TrashCharacter").transform;
        //checkBox = new Rect (Screen.width * 0.32f, Screen.height * 0.54f, Screen.width * 0.04f, Screen.height * 0.055f);
        w = GameObject.Find("GameController").GetComponent<wordBuildingController>();

        // This sets up the first instruction screen
        m.GetComponent<Renderer>().material.mainTexture = instructions[0];
        //transform.localPosition = new Vector3(0.06f, 0.429f, -0.86f);
        transform.localScale = new Vector3(0.73f, 1.21f, 0.82f);

        character1 = w.character1;
        character2 = w.character2;
        character1.transform.localPosition = new Vector3(character1.transform.localPosition.x, character1.transform.localPosition.y, 1);
        character2.transform.localPosition = new Vector3(character2.transform.localPosition.x, character2.transform.localPosition.y, 1); 
   
		leftTaste = GameObject.Find ("leftPanel");
		rightTaste = GameObject.Find ("rightPanel");

		topDarkOut = GameObject.Find ("TopDarkOut");
		bottomDarkOut = GameObject.Find ("BottomDarkOut");
		trash.position = new Vector3(trash.position.x, trash.position.y, 3.47f);
        sceneStarted = true;
    }

    void Update()
    {

        if (ScoreManager.NeverShowInstructions)
        {
            Vector3 offScreenPos = gameObject.transform.position;
            offScreenPos.x = -20f;
            gameObject.transform.position = offScreenPos;
            gameObject.transform.parent.transform.position = offScreenPos;
            GameObject.Find("VariableController").GetComponent<VariableControl>().timerStart = true;
			GameObject.Find("VariableController").GetComponent<VariableControl>().instructionsDone = true;
            GameObject.Find("VariableController").transform.position = parentPos;
			trash.position = new Vector3(trash.position.x, trash.position.y, 0.23f);
            Destroy(gameObject);
        }
    }


    // Update is called once per frame
    void OnMouseDown()
    {
        if (!sceneStarted)
            return;

        if (GameObject.Find("AudioManager_Game(Clone)"))
        {
            GameObject.Find("AudioManager_Game(Clone)").GetComponent<AudioManager>().Play(1);
        }
        // 0 = how to make a work instruction
        // 1 = trashcan function
        // 2 = tap to feed customers message
        // 3 = highlight tastes
        // 4 = how to end game + checked "don't show up again" box
        if (ScoreManager.NeverShowInstructions)
        {
            Debug.Log("Return from update");
            return;
        }// Clicked on first instruction, go to trash instruction
        if (m.GetComponent<Renderer>().material.mainTexture == instructions[0])
        {
            m.GetComponent<Renderer>().material.mainTexture = instructions[1];
			transform.localPosition = new Vector3(-1.81f, 4.77f,-0.1f);
			transform.localScale = new Vector3(0.7f, 1.21f, 0.69f);
			trash.position = new Vector3(trash.position.x, trash.position.y, -2.12f);
            //transform.localPosition = new Vector3(-1.32f, 0.429f, -0.41f);
            //transform.localScale = new Vector3(0.67f, 1.21f, 0.64f);

			bottomDarkOut.transform.localPosition = new Vector3(bottomDarkOut.transform.localPosition.x, bottomDarkOut.transform.localPosition.y, 12.1f);
			topDarkOut.transform.localPosition = new Vector3(topDarkOut.transform.localPosition.x, topDarkOut.transform.localPosition.y, 0);
			transform.parent.GetComponent<MeshRenderer>().GetComponent<Renderer>().enabled = false;
		}// Clicked on trash screen, hide instructions  
        else if (m.GetComponent<Renderer>().material.mainTexture == instructions[1])
        {
			m.GetComponent<Renderer>().material.mainTexture = instructions[2];
			trash.position = new Vector3(trash.position.x, trash.position.y, 0.23f);
            //transform.localPosition = new Vector3(0.062f, 0.429f, -0.82f);
            //transform.localScale = new Vector3(0.76f, 1.21f, 0.89f);

            //leftTaste.transform.localPosition = new Vector3(-0.06f, 6.65f, -0.02f);
            //rightTaste.transform.localPosition = new Vector3(0.03f, 6.9f, -0.01f);

			transform.localPosition = new Vector3(0.08f, 4.77f,-0.92f);
			transform.localScale = new Vector3(0.7f, 1.21f, 0.71f);
			topDarkOut.transform.localPosition = new Vector3(topDarkOut.transform.localPosition.x, topDarkOut.transform.localPosition.y, 1.84f);

        }
		else if (m.GetComponent<Renderer>().material.mainTexture == instructions[2])
		{

			ScoreManager.NeverShowInstructions = true;
			parentPos.x = -20.0f;
			transform.parent.transform.position = parentPos;
			GameObject.Find("closingTimeBG").GetComponent<BoxCollider>().enabled = false;
			GameObject.Find("VariableController").GetComponent<VariableControl>().timerStart = true;
			GameObject.Find("VariableController").GetComponent<VariableControl>().instructionsDone = true;
			Destroy(gameObject);
		}
    }
}
