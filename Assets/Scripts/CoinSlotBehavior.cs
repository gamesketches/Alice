using UnityEngine;
using System.Collections;

public class CoinSlotBehavior : MonoBehaviour {

	public GameObject myObject;
	AudioSource audio;
	// Use this for initialization
	void Start () {
		audio = GetComponent<AudioSource>();
		CreateObject();

	}

	void OnTriggerEnter(Collider other){
		//CreateObject();
		//Destroy(other.gameObject);
	}

	public void CreateObject() {
		audio.Play();
		Vector3 temp = gameObject.transform.position;
		Instantiate(myObject, new Vector3(temp.x, temp.y -2f, temp.z), Quaternion.identity);

	}
}
