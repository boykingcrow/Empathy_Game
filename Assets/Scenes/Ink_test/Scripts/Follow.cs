using UnityEngine;
public class Follow : MonoBehaviour
{
    public GameObject Player;
    public float movementSpeed = 3;
    void Update()
    {
        transform.LookAt(Player.transform);
        transform.position += transform.forward * movementSpeed * Time.deltaTime;
    }
}