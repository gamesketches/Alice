using UnityEngine;
using System.Collections;

public class LockScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void OnTriggerEnter (Collider other) {
		if(other.gameObject.transform.FindChild("KeyObject") != null) {
			Destroy(other.gameObject.transform.FindChild("KeyObject").gameObject);
			Destroy(gameObject);
		}
	}
}
