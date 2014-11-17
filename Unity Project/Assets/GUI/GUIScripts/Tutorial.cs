using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using UnityEngine;
using System.Collections;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using System.Linq;

public class Tutorial : MonoBehaviour
{

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
    
    // Use this for initialization
    void Start()
    {        
        m = gameObject.GetComponent<MeshRenderer>();
        m.renderer.material.mainTexture = instructions[0];
        pos = transform.localPosition;
        parentPos = transform.parent.transform.position;
        trash = GameObject.Find("TrashCharacter").transform;
        //checkBox = new Rect (Screen.width * 0.32f, Screen.height * 0.54f, Screen.width * 0.04f, Screen.height * 0.055f);
        w = GameObject.Find("GameController").GetComponent<wordBuildingController>();

        // This sets up the first instruction screen
        m.renderer.material.mainTexture = instructions[0];
        transform.localPosition = new Vector3(0.06f, 0.429f, -0.86f);
        transform.localScale = new Vector3(0.73f, 1.21f, 0.82f);

        character1 = w.character1;
        character2 = w.character2;
        character1.transform.localPosition = new Vector3(character1.transform.localPosition.x, character1.transform.localPosition.y, 1);
        character2.transform.localPosition = new Vector3(character2.transform.localPosition.x, character2.transform.localPosition.y, 1); 
   
		leftTaste = GameObject.Find ("leftPanel");
		rightTaste = GameObject.Find ("rightPanel");
	}

    void Update()
    {

        if (ScoreManager.NeverShowInstructions)
        {
            //Debug.Log("never show?  = " + neverShowInstructions);
            Vector3 offScreenPos = gameObject.transform.position;
            offScreenPos.x = -20f;
            gameObject.transform.position = offScreenPos;
            gameObject.transform.parent.transform.position = offScreenPos;
            GameObject.Find("VariableController").GetComponent<VariableControl>().timerStart = true;
            GameObject.Find("VariableController").transform.position = parentPos;
            Destroy(gameObject);
        }
    }


    // Update is called once per frame
    void OnMouseDown()
    {
        GameObject.Find("AudioManager_Prefab(Clone)").GetComponent<AudioManager>().Play(1);
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
        if (m.renderer.material.mainTexture == instructions[0])
        {
            m.renderer.material.mainTexture = instructions[1];
			trash.position = new Vector3(trash.position.x, trash.position.y, -2.12f);
            //transform.localPosition = new Vector3(-1.32f, 0.429f, -0.41f);
            //transform.localScale = new Vector3(0.67f, 1.21f, 0.64f);
        }// Clicked on trash screen, hide instructions  
        else if (m.renderer.material.mainTexture == instructions[1])
        {
			m.renderer.material.mainTexture = instructions[2];
			trash.position = new Vector3(trash.position.x, trash.position.y, 0.73f);
            //transform.localPosition = new Vector3(0.062f, 0.429f, -0.82f);
            //transform.localScale = new Vector3(0.76f, 1.21f, 0.89f);

            //leftTaste.transform.localPosition = new Vector3(-0.06f, 6.65f, -0.02f);
            //rightTaste.transform.localPosition = new Vector3(0.03f, 6.9f, -0.01f);

        }
		else if (m.renderer.material.mainTexture == instructions[2])
		{

			ScoreManager.NeverShowInstructions = true;
			parentPos.x = -20.0f;
			transform.parent.transform.position = parentPos;
			GameObject.Find("closingTimeBG").GetComponent<BoxCollider>().enabled = false;
			GameObject.Find("VariableController").GetComponent<VariableControl>().timerStart = true;
			Destroy(gameObject);
		}
    }
}
