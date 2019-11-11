using UnityEngine;

public class LoadShip : MonoBehaviour {

	public GameObject Ship;
void Start(){

	if(Ship != null)
		{
			bool isActive = Ship.activeSelf;
			
			Ship.SetActive(!isActive);
		}
}
}
