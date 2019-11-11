using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class ObjectAppearButton : MonoBehaviour {

	public GameObject objectToAppear;
void OnMouseDown()
	{
		objectToAppear.SetActive(true);
	}
}
