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
    public bool neverShowInstructions = false;
    wordBuildingController w;
    GameObject character1;
    GameObject character2;
    public GameObject checkMark;

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

        checkMark.renderer.enabled = false;
        checkMark.collider.enabled = false;
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

    // Update is called once per frame
    void OnMouseDown()
    {
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
            transform.localPosition = new Vector3(-1.0855f, .429f, .1266f);
            transform.localScale = new Vector3(0.55f, 1.21f, 0.53f);
            gameObject.GetComponent<BoxCollider>().center = new Vector3(1.87f, 0, -0.16f);
            trash.position = new Vector3(trash.position.x, trash.position.y, -2.12f);
        }
        else if (m.renderer.material.mainTexture == instructions[1])
        {            
            m.renderer.material.mainTexture = instructions[2];
            transform.localPosition = new Vector3(-0.06f, 0.429f, 1.0888f);
            transform.localScale = new Vector3(0.67f, 1.21f, 0.59f);
            trash.position = new Vector3(trash.position.x, trash.position.y, -1.12f);
            gameObject.GetComponent<BoxCollider>().size = new Vector3(gameObject.GetComponent<BoxCollider>().size.x, gameObject.GetComponent<BoxCollider>().size.y, 27.59f);
            gameObject.GetComponent<BoxCollider>().center = new Vector3(-0.04f, 0, -4.4f);
            character1.transform.localPosition = new Vector3(character1.transform.localPosition.x, character1.transform.localPosition.y, -1.8f);
            character2.transform.localPosition = new Vector3(character2.transform.localPosition.x, character2.transform.localPosition.y, -1.8f);

        }
        else if (m.renderer.material.mainTexture == instructions[2])
        {
            m.renderer.material.mainTexture = instructions[3];           
            transform.localPosition = new Vector3(0.06f, 0.429f, -0.86f);
            transform.localScale = new Vector3(0.73f, 1.21f, 0.82f);
            character1.transform.localPosition = new Vector3(character1.transform.localPosition.x, character1.transform.localPosition.y, 1);
            character2.transform.localPosition = new Vector3(character2.transform.localPosition.x, character2.transform.localPosition.y, 1);
        }
        else if (m.renderer.material.mainTexture == instructions[3])
        {
            Debug.Log("reached the last instructions");
            m.renderer.material.mainTexture = instructions[4];
            transform.localPosition = new Vector3(0, 0.429f, -1.04f);
            transform.localScale = new Vector3(0.64f, 1.21f, 0.52f);
            checkMark.renderer.enabled = true;
            checkMark.GetComponent<BoxCollider>().enabled = true;

        }
        else if (m.renderer.material.mainTexture == instructions[4])
        {
            Debug.Log("clicked on the last instructions");
            if (Input.touchCount > 0)
            {
                // for touch
                if (checkMark.collider.bounds.Contains(new Vector2(Input.GetTouch(0).position.x, Screen.height - Input.GetTouch(0).position.y)))
                {
                    Debug.Log("clicked on the check box");

                }
                else
                {

                    parentPos.x = -20.0f;
                    transform.parent.transform.position = parentPos;
                    //					PlayerPrefs.SetInt("instructions",0);
                }
            }
            else
            {
                // for mouse clicks
                if (checkMark.collider.bounds.Contains(new Vector2(Input.mousePosition.x, Screen.height - Input.mousePosition.y)))
                {
                    Debug.Log("clicked on the check box");
                    checkMark.renderer.enabled = !checkMark.renderer.enabled;
                    
                }
                else
                {
                    Debug.Log("clicked on the screen but not the check box");
                    parentPos.x = -20.0f;
                    transform.parent.transform.position = parentPos;
                    
                }
            }
        }
    }
}
