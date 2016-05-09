using UnityEngine;
using System.Collections;

public class PiggyBankScript : MonoBehaviour {

	public GameObject Bulb;
	public float fallSpeed = 1;
	private bool falling = true;
//  Have this in for testing only
	void Start() {
		StartCoroutine(Fall());
	}

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
		Debug.Log("trigger entered");
		falling = false;
		Vector3 shatteredPosition = gameObject.transform.position;
		shatteredPosition.y += 1f;
		Instantiate(Resources.Load<GameObject>("prefabs/PiggyBankShattered"),shatteredPosition, Quaternion.identity);
		Instantiate(Resources.Load<GameObject>("prefabs/cookieCoin"), gameObject.transform.position, Quaternion.Euler(new Vector3(0, 0, 90)));
		Instantiate(Resources.Load<GameObject>("prefabs/milkCoin"), gameObject.transform.position, Quaternion.Euler(new Vector3(0, 0, 90)));
		Destroy(gameObject);
	}
}
