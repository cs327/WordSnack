using UnityEngine;
using System.Collections;

public class ReceiptMover : MonoBehaviour
{
    Camera c;
    public bool winSound; //for PlayMusic script

    // Use this for initialization
    void Start()
    {
        c = GameObject.Find("Main Camera").GetComponent<Camera>();
        winSound = true;
    }

    // Update is called once per frame
    void Update()
    {

        Vector3 pos = gameObject.transform.position;

        if (UniversalInput.press && UniversalInput.inRect(gameObject.collider.bounds, c))
        {
            pos.y = 1.2f;
            gameObject.transform.position = pos;

        }
        else
        {


            if (pos.y <= 1.2)
            {
                if (Time.time < 0.2)
                {
                    pos.y += Time.deltaTime * 2.0f;
                }

                if (Time.time >= 0.2 && Time.time < 0.6)
                {
                    pos.y += Time.deltaTime * 3.0f;
                }

                if (Time.time >= 0.6 && Time.time < 1.3)
                {
                    pos.y += Time.deltaTime * 5.0f;
                }

                if (Time.time >= 1.3 && Time.time < 1.8)
                {
                    pos.y += Time.deltaTime * 1.0f;
                }

                if (Time.time >= 1.8 && Time.time < 2.3)
                {
                    pos.y += Time.deltaTime * 2.0f;
                }
                if (Time.time >= 2.8 && Time.time < 3)
                {
                    pos.y += Time.deltaTime * 1.0f;
                }

                if (Time.time >= 3.3 && Time.time < 3.8)
                {
                    pos.y += Time.deltaTime * 2.0f;
                }

                if (Time.time >= 4 && Time.time < 4.3)
                {
                    pos.y += Time.deltaTime * 1.0f;
                }

                if (Time.time >= 4.5 && Time.time < 5)
                {
                    pos.y += Time.deltaTime * 2.0f;
                }

                if (Time.time >= 5.3 && Time.time < 5.5)
                {
                    pos.y += Time.deltaTime * 1.0f;
                }

                if (Time.time >= 6)
                {
                    pos.y += Time.deltaTime * 2.0f;
                }
                gameObject.transform.position = pos;
            }
        }
    }
}
