using UnityEngine;
using UnityEngine.AI;
using UnityEngine.EventSystems;

public class PlayerController : MonoBehaviour {
	
	public Camera cam;
	public NavMeshAgent agent;

    public float y = 40;
    public float maxY = 90;
    public float minY = -3;
    public float x;
    public float z;

	// Update is called once per frame
	void Update () 
	{
		if (Input.GetMouseButtonDown(0))
        {

            if (!EventSystem.current.IsPointerOverGameObject())
            {
                Ray ray = cam.ScreenPointToRay(Input.mousePosition);
                RaycastHit hit;

                if (Physics.Raycast(ray, out hit))
                {
                    // move our agent
                    agent.SetDestination(hit.point);
                }
            }
        }
    
        //y = Mathf.Clamp(y, minY, maxY);
        transform.rotation = Quaternion.Euler (x, y, z);
    
    }
}