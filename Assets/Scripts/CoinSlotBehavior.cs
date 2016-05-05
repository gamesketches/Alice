using UnityEngine;
using System.Collections;

public class CoinSlotBehavior : MonoBehaviour {

	public GameObject myObject;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider other){
		//CreateObject();
		//Destroy(other.gameObject);
	}

	public void CreateObject() {
		Vector3 temp = gameObject.transform.position;
		Instantiate(myObject, new Vector3(temp.x, temp.y -0.5f, temp.z), Quaternion.identity);
	}
}
