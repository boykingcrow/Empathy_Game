using UnityEngine;
using UnityEngine.EventSystems;

public class DestroygameObject : MonoBehaviour {

	public GameObject canvas;
	public TextAsset story;
	public GameObject background;
void OnMouseDown(){

		Destroy(gameObject);
	}
}