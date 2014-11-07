﻿using System.Collections.Generic;
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
    public bool neverShowInstructions = false;
    wordBuildingController w;
    GameObject character1;
    GameObject character2;
    public bool clickSound;

    // Use this for initialization
    void Start()
    {
        // Use this to check local files to see if instructions are visible
        if (File.Exists(Application.persistentDataPath + "/UserSettings.gd"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            Debug.Log(Application.persistentDataPath);
            FileStream file = File.Open(Application.persistentDataPath + "/UserSettings.gd", FileMode.Open);
            // bf stores the value of checkMark.Enabled, i.e if true then never show the instructions again
            neverShowInstructions = (bool)bf.Deserialize(file);
            Debug.Log("Never Show setting is available and equals " + (neverShowInstructions).ToString());
            
            file.Close();
        }
        else
        {
            Debug.Log("No user Setting file");
        }
        m = gameObject.GetComponent<MeshRenderer>();
        m.renderer.material.mainTexture = instructions[0];
        pos = transform.localPosition;
        parentPos = transform.parent.transform.position;
        trash = GameObject.Find("TrashCharacter").transform;
        //checkBox = new Rect (Screen.width * 0.32f, Screen.height * 0.54f, Screen.width * 0.04f, Screen.height * 0.055f);
        w = GameObject.Find("GameController").GetComponent<wordBuildingController>();

        trash.position = new Vector3(trash.position.x, trash.position.y, -2.12f);
        transform.localPosition = new Vector3(0.06f, 0.429f, -0.86f);
        transform.localScale = new Vector3(0.73f, 1.21f, 0.82f);
    }

    void Update()
    {
        character1 = w.character1;
        character2 = w.character2;
        // the first instruction box will slide in from the top
        if (pos.z <= -0.41f)
        {
            pos.z += Time.deltaTime * 8.0f;
            transform.localPosition = pos;
        }
        if (neverShowInstructions)
        {
            //Debug.Log("never show?  = " + neverShowInstructions);
            Vector3 offScreenPos = gameObject.transform.position;
            offScreenPos.x = -20f;
            gameObject.transform.position = offScreenPos;
            gameObject.transform.parent.transform.position = offScreenPos;            
        }
    }

    // Saves the current value of "Never show instructions?" in the file UserSettings.gd
    private static void SaveNeverShowSetting(bool setting)
    {
        Debug.Log("Saving 'never show? = " + setting + "'");
        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + "/UserSettings.gd");
        bf.Serialize(file, setting);
        file.Close();
    }

    // Update is called once per frame
    void OnMouseDown()
    {
        clickSound = true;
        // 0 = how to make a work instruction
        // 1 = trashcan function
        // 2 = tap to feed customers message
        // 3 = highlight tastes
        // 4 = how to end game + checked "don't show up again" box
        if (neverShowInstructions)
        {
            Debug.Log("Return from update");
            return;
        }

        if (m.renderer.material.mainTexture == instructions[0])
        {
            m.renderer.material.mainTexture = instructions[1];
            transform.localPosition = new Vector3(0.06f, 0.429f, -0.86f);
            transform.localScale = new Vector3(0.73f, 1.21f, 0.82f);
            character1.transform.localPosition = new Vector3(character1.transform.localPosition.x, character1.transform.localPosition.y, 1);
            character2.transform.localPosition = new Vector3(character2.transform.localPosition.x, character2.transform.localPosition.y, 1);           
        }      
        else if (m.renderer.material.mainTexture == instructions[1])
        {
            SaveNeverShowSetting(true);
            parentPos.x = -20.0f;
            transform.parent.transform.position = parentPos;
        }
    }
}
