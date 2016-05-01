using UnityEngine;
using System.Collections;

public class PiggyBankScript : MonoBehaviour {

	public float fallSpeed = 1;
	private bool falling = true;

	public IEnumerator Fall() {
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
