using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class CreatureOpener : MonoBehaviour {

public Camera cam;
public GameObject Popup;
public GameObject Background;

void Update()
{
	if (Input.GetMouseButtonDown(0))
	{

		if (!EventSystem.current.IsPointerOverGameObject())
		return;

		Ray ray = cam.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;

		if (Physics.Raycast(ray, out hit))
		{
			if (hit.transform != null)
			{
				ToggleWindow(hit.transform.gameObject);
				ToggleBackground(hit.transform.gameObject);
			}
		}
	}

}

public void ToggleWindow(GameObject Popup)
{
	if(Popup != null)
	{
		bool isActive = Popup.activeSelf;

		Popup.SetActive(!isActive);
	}
}

public void ToggleBackground(GameObject Background)
{
	if(Background != null)
	{
		bool isActive = Background.activeSelf;
		
		Background.SetActive(!isActive);
	}
}

}
