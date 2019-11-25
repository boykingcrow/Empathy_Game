using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.SceneManagement;

public class Inventory : MonoBehaviour 
{
    void Update()
    {
        if (BOND == "4" && BONDtoggle)
        {
            BONDtoggle = false;
            GameObject.Find("Creature").GetComponent<Wander>().enabled = true;
            GameObject.Find("Creature").GetComponent<Follow>().enabled = true;
        }
    }

    public string hands = "0";
    public string fish = "0";
    public string goo = "0";
    public string helmet = "0";
    public string image = "0";
    public string toothbrush = "0";
    public string poke = "1";
    public string talk = "1";
    public string crystalRED = "0";
    public string crystalGREEN = "0";
    public string crystalPURPLE = "0";
    public string crystalYELLOW = "0";
    public string crystalBLUE = "0";
    public string ColorGun = "0";
    public string BOND = "0";
    public string hasLeft = "0";
    public string interact = "0";
    public string comp_unit = "0";
    public string comms_relay = "0";
    public string antenna = "0";
    public string warp_coil = "0";
    public string BEACON = "0";


    private bool BONDtoggle = true;

}
