using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ItemHandler : MonoBehaviour {

	public float rayLength;
	Vector3 targetScale;
	// Use this for initialization
	void Start () {
		targetScale = gameObject.transform.localScale;
	}
	
	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		Ray PsychicRay = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
	
		if(Physics.Raycast(PsychicRay, out hit, rayLength)){
			if(hit.collider.gameObject.layer == 8) {
				gameObject.GetComponentInChildren<Image>().color = Color.blue;
			}
			else {
				gameObject.GetComponentInChildren<Image>().color = Color.white;
			}
			if(hit.collider.gameObject.tag == "Cookie" && 
				Input.GetKeyDown(KeyCode.Space)) {
				targetScale = new Vector3(2f, 2f, 2f);
				Destroy(hit.collider.gameObject);
			}
			else if(hit.collider.gameObject.tag == "Milk" &&
				Input.GetKeyDown(KeyCode.Space)) {
				targetScale = new Vector3(0.5f, 0.5f, 0.5f);
				Destroy(hit.collider.gameObject);
			}
			else if(hit.collider.gameObject.tag == "CoinSlot" &&
				Input.GetKeyDown(KeyCode.Space)) {
				hit.collider.gameObject.GetComponent<CoinSlotBehavior>().CreateObject();
			}
		}
		if(gameObject.transform.localScale != targetScale) {
			StartCoroutine(ScaleThatPokemon());
		}

		Debug.DrawRay(PsychicRay.origin, PsychicRay.direction * rayLength);
	}	/*else if(Input.GetKeyDown(KeyCode.Q)) {
		targetScale = new Vector3(0.5f, 0.5f, 0.5f);
	}*/

	IEnumerator ScaleThatPokemon() {
		float t = 0f;
		Vector3 startingScale = gameObject.transform.localScale;
		while(gameObject.transform.localScale != targetScale) {
			gameObject.transform.localScale = Vector3.Lerp(startingScale, targetScale, t);
			t += 3f * Time.deltaTime;
			yield return null;
		}
	}
}
