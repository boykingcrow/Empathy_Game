using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClickToDestroy : MonoBehaviour {

public GameObject Sphere;
void OnMouseDown(){

	Destroy(Sphere);
}

}
