using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class ItemHandler : MonoBehaviour {

	public float rayLength;
	public float smallSize = 0.2f;
	public float mediumSize = 1f;
	public float largeSize = 4f;
	private Color defaultReticleColor = Color.white;
	private Color highlightColor = Color.blue;
	private delegate void HandleItem();
	Dictionary<string, HandleItem> itemHandlers;
	Vector3 targetScale;
	GameObject heldItem;
	// Use this for initialization
	void Start () {
		targetScale = gameObject.transform.localScale;
		mediumSize = targetScale.x;
		heldItem = null;
		defaultReticleColor.a = 0.3f;
		highlightColor.a = 0.3f;
	}
	
	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		Ray PsychicRay = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
		int layerMask = CreateLayerMask();
		if(Physics.Raycast(PsychicRay, out hit, rayLength, layerMask)){
			if(hit.collider.gameObject.layer == 8) {
				gameObject.GetComponentInChildren<Image>().color = highlightColor;
			}
			if(hit.collider.gameObject.layer == 9 && 
				hit.collider.gameObject != heldItem) {

				gameObject.GetComponentInChildren<Image>().color = highlightColor;
				if(Input.GetKeyDown(KeyCode.Space)){
					hit.collider.gameObject.transform.parent = Camera.main.transform;
					heldItem = hit.collider.gameObject;
					heldItem.transform.position = PsychicRay.GetPoint(rayLength / 2);
					heldItem.layer = 10;
				}
			}
			if(hit.collider.gameObject.tag == "Cookie" && 
				Input.GetKeyDown(KeyCode.Space)) {
				targetScale = new Vector3(largeSize, largeSize, largeSize);
				Destroy(hit.collider.gameObject);
				Debug.Log("cookie");
			}
			else if(hit.collider.gameObject.tag == "Milk" &&
				Input.GetKeyDown(KeyCode.Space)) {
				targetScale = new Vector3(smallSize, smallSize, smallSize);
				Destroy(hit.collider.gameObject);
				Debug.Log("milk");
			}
			// Leaving this code in in case we decide we want more actions
			else if(hit.collider.gameObject.tag == "CoinSlot" &&
				Input.GetKeyDown(KeyCode.Space)) {
				if(heldItem.tag == "Coin") {
					hit.collider.gameObject.GetComponent<CoinSlotBehavior>().CreateObject();
					Destroy(heldItem);
				}
			}
			else if(hit.collider.gameObject.tag == "Drawer" && 
				Input.GetKeyDown(KeyCode.Space)) {
				if(heldItem.tag == "BobbyPin") {
					StartCoroutine(hit.collider.gameObject.GetComponent<DrawerScript>().openDrawer());
				}
			}
			else if(hit.collider.gameObject.name == "PiggyBank") {
				if(Input.GetKeyDown(KeyCode.Space)){
					StartCoroutine(hit.collider.gameObject.GetComponent<PiggyBankScript>().Fall());
				}
			}
		}
		else {
			gameObject.GetComponentInChildren<Image>().color = defaultReticleColor;
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

	int CreateLayerMask() {
		int layerMask1 = 1 << 8;
		int layerMask2 = 1 << 9;
		return layerMask1 | layerMask2;
	}
}
