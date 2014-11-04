using UnityEngine;
using System.Collections;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using System.Linq;


public class CloseInstructions : MonoBehaviour
{

    GameObject instructions;
    public bool checkMarked = false;
    Vector3 position;
    wordBuildingController w;
    GameObject character1;
    GameObject character2;

    // Use this for initialization
    void Start()
    {
        instructions = GameObject.Find("Tutorial");
        position = instructions.GetComponent<Transform>().position;
        //checkBox = GameObject.Find ("checkBox");
        //hideChecked = checkBox.GetComponent<HideInstructions> ().disableInstructions;

        w = GameObject.Find("GameController").GetComponent<wordBuildingController>();

    }

    // Update is called once per frame
    void Update()
    {
        //hideChecked = checkBox.GetComponent<HideInstructions> ().disableInstructions;
        character1 = w.character1;
        character2 = w.character2;
    }

    // Saves the current value of "Never show instructions?" in the file UserSettings.gd
    private static void SaveInstructionsSetting(bool setting)
    {
        Debug.Log("Saving 'never show? = " + setting + "'");
        BinaryFormatter bf = new BinaryFormatter();
        FileStream file = File.Create(Application.persistentDataPath + "/UserSettings.gd");
        bf.Serialize(file, setting);
        file.Close();
    }
    void OnMouseDown()
    {
        //Debug.Log ("clicked on the cross");

        gameObject.renderer.enabled = !gameObject.renderer.enabled;
        Debug.Log("Checkmark collision");
        instructions.GetComponent<Transform>().position = position;

        SaveInstructionsSetting(gameObject.renderer.enabled);


        if (character1.transform.localPosition.z == -1.8f)
        {
            character1.transform.localPosition = new Vector3(character1.transform.localPosition.x, character1.transform.localPosition.y, 1);
        }

        if (character2.transform.localPosition.z == -1.8f)
        {
            character2.transform.localPosition = new Vector3(character2.transform.localPosition.x, character2.transform.localPosition.y, 1);
        }


        //if(hideChecked){
        //PlayerPrefs.SetInt ("instructions", 1);
        //}
    }
}
