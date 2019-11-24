using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;


public class ObjectDestroyButton : MonoBehaviour {

	public GameObject objectToDestroy;
void OnMouseDown()
	{
		objectToDestroy.SetActive(false);
	}
}