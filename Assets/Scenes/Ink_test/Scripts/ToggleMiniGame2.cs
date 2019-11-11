using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ToggleMiniGame2 : MonoBehaviour {

	public GameObject background;
void OnMouseDown(){

	if(background != null)
		{
			bool isActive = background.activeSelf;
			
			background.SetActive(!isActive);
		}
}
}
