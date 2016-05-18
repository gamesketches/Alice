using UnityEngine;
using System.Collections;

public class LockScript : MonoBehaviour {

	public GameObject hinge;
	
	// Update is called once per frame
	void OnTriggerEnter (Collider other) {
		if(other.gameObject.transform.FindChild("KeyObject") != null) {
			Destroy(other.gameObject.transform.FindChild("KeyObject").gameObject);
			Debug.Log("KeyObject being found");
			Destroy(gameObject);
		}
		else if(other.tag == "Key") {
			Destroy(other.gameObject);
			StartCoroutine(OpenSesame());
		}
		else if(other.gameObject.GetComponent<ItemHandler>().heldItem.tag == "Key") {
			Destroy(other.gameObject.GetComponent<ItemHandler>().heldItem);
			Debug.Log("went in through tag");
			StartCoroutine(OpenSesame());
		}
		else {
			Debug.Log(other.gameObject.GetComponent<ItemHandler>().heldItem.tag);
		}
	}

	IEnumerator OpenSesame() {
		float t = 0;
		Quaternion startRotation = hinge.transform.rotation;
		Quaternion targetRotation = Quaternion.Euler(new Vector3(0, -90, 0));
		while(t <= 1f) {
			hinge.transform.rotation = Quaternion.Lerp(startRotation, targetRotation, t);
			t += Time.deltaTime;
			yield return null;
		}
	}
}
