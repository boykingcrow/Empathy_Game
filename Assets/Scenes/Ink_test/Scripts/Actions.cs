using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.SceneManagement;

public class Actions : MonoBehaviour 
{
    void Update()
    {
        if (BOND == "4" && BONDtoggle)
        {
            BONDtoggle = false;
            GameObject.Find("Creature").GetComponent<Wander>().enabled = true;
            GameObject.Find("Creature").GetComponent<Follow>().enabled = true;
        }
        if (BOND == "5" && BONDtoggle)
        {
            BONDtoggle = false;
            GameObject.Find("Creature").GetComponent<Wander>().enabled = true;
            GameObject.Find("Creature").GetComponent<Follow>().enabled = true;
        }

    }

    public string BOND = "0";
	public string poke = "1";
    public string talk = "1";
    public string hasLeft = "0";
    public string interact = "0";
	public string pool_explored = "0";
    public string ai_action = "0";
	public string rockaction = "0";
	public string fishaction = "0";
	public string BEACON = "0";


    private bool BONDtoggle = true;

}

