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
			Debug.Log("KeyObject being found");
			Destroy(gameObject);
		}
		else if(other.gameObject.GetComponent<ItemHandler>().heldItem.tag == "Key") {
			Destroy(other.gameObject.GetComponent<ItemHandler>().heldItem);
			Debug.Log("went in through tag");
			Destroy(gameObject);
		}
		else {
			Debug.Log(other.gameObject.GetComponent<ItemHandler>().heldItem.tag);
		}
	}
}
