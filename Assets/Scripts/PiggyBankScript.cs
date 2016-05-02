using UnityEngine;
using System.Collections;

public class PiggyBankScript : MonoBehaviour {

	public GameObject Bulb;
	public float fallSpeed = 1;
	private bool falling = true;

	public IEnumerator Fall() {
		Destroy(Bulb);
		while(falling){
			Vector3 oldPos = gameObject.transform.position;
			oldPos.y -= fallSpeed * Time.deltaTime;
			gameObject.transform.position = oldPos;	
			yield return null;
		}
	}

	void OnTriggerEnter(Collider other) {
		falling = false;
		Destroy(gameObject);
	}
}
