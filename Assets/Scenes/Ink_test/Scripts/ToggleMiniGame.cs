using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ToggleMiniGame : MonoBehaviour {

	public GameObject canvas;
	public TextAsset story;
	
	public GameObject background;
void OnMouseDown(){

	if (!EventSystem.current.IsPointerOverGameObject())
	{
		if(canvas != null)
			{
				GameObject.Find("SceneController").GetComponent<InkWrapper>().SetCanvas(canvas);
				GameObject.Find("SceneController").GetComponent<InkWrapper>().StartStory(story);
				bool isActive = canvas.activeSelf;
				
				canvas.SetActive(!isActive);
			}
		if(background != null) 
		{
			bool isActive = background.activeSelf;
			background.SetActive(!isActive);
		}
	}

	//Destroy(gameObject);
}
}
