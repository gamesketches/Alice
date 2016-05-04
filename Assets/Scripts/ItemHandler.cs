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
	private delegate void HandleItem(GameObject item);
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
		itemHandlers = new Dictionary<string, HandleItem>();
		itemHandlers.Add("Cookie", HandleCookie);
		itemHandlers.Add("Milk", HandleMilk);
		itemHandlers.Add("CoinSlot", HandleCoinSlot);
		itemHandlers.Add("Drawer", HandleDrawer);
		itemHandlers.Add("PiggyBank", HandlePiggyBank);
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
			HandleItem itemFunction = itemHandlers[hit.collider.gameObject.tag];
			itemFunction(hit.collider.gameObject);
		}
		else {
			gameObject.GetComponentInChildren<Image>().color = defaultReticleColor;
		}
		if(gameObject.transform.localScale != targetScale) {
			StartCoroutine(ScaleThatPokemon());
		}

		Debug.DrawRay(PsychicRay.origin, PsychicRay.direction * rayLength);
	}

	IEnumerator ScaleThatPokemon() {
		float t = 0f;
		Vector3 startingScale = gameObject.transform.localScale;
		while(gameObject.transform.localScale != targetScale) {
			gameObject.transform.localScale = Vector3.Lerp(startingScale, targetScale, t);
			t += 3f * Time.deltaTime;
			yield return null;
		}
	}

	void HandleCookie(GameObject cookie) {
		targetScale = new Vector3(largeSize, largeSize, largeSize);
		Destroy(cookie);
		Debug.Log("cookie");
	}

	void HandleMilk(GameObject milk) {
		targetScale = new Vector3(smallSize, smallSize, smallSize);
		Destroy(milk);
		Debug.Log("milk");
	}

	void HandleCoinSlot(GameObject coinSlot) {
		if(heldItem.tag == "Coin") {
			coinSlot.GetComponent<CoinSlotBehavior>().CreateObject();
			Destroy(heldItem);
		}
	}

	void HandleDrawer(GameObject drawer) {
		if(heldItem.tag == "BobbyPin") {
			StartCoroutine(drawer.GetComponent<DrawerScript>().openDrawer());
		}
	}

	void HandlePiggyBank(GameObject piggyBank) {
		StartCoroutine(piggyBank.GetComponent<PiggyBankScript>().Fall());
	}

	int CreateLayerMask() {
		int layerMask1 = 1 << 8;
		int layerMask2 = 1 << 9;
		return layerMask1 | layerMask2;
	}
}
