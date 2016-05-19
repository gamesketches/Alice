using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class ItemHandler : MonoBehaviour {

	public float rayLength;
	public float smallSize = 0.05f;
	public float mediumSize = 1f;
	public float largeSize = 4f;
	public Image reticle;
	public Color highlightColor;
	private Color defaultReticleColor = new Color(1f, 1f, 1f, 1f);
	private bool lerpingShaderColor;
	private delegate void HandleItem(GameObject item);
	Dictionary<string, HandleItem> itemHandlers;
	CharacterController character;
	float targetHeight;
	Material[] eyeReticleMaterials;
	public GameObject heldItem;
	// Use this for initialization
	void Start () {
		character = GetComponent<CharacterController>();
		targetHeight = character.height;
		mediumSize = character.height;
		heldItem = null;
		highlightColor = new Color(0f, 0f, 0f, 1f);
		eyeReticleMaterials = new Material[2];
		eyeReticleMaterials[0] = GameObject.FindGameObjectsWithTag("Reticle")[0].GetComponent<Renderer>().material;
		eyeReticleMaterials[1] = GameObject.FindGameObjectsWithTag("Reticle")[1].GetComponent<Renderer>().material;
		itemHandlers = new Dictionary<string, HandleItem>();
		itemHandlers.Add("Cookie", HandleCookie);
		itemHandlers.Add("Milk", HandleMilk);
		itemHandlers.Add("CoinSlot", HandleCoinSlot);
		itemHandlers.Add("Drawer", HandleDrawer);
		itemHandlers.Add("PiggyBank", HandlePiggyBank);
		itemHandlers.Add("CatBowl", HandleCatBowl);
	}
	
	// Update is called once per frame
	void Update () {
		highlightColor = new Color(Mathf.Abs(Mathf.Sin(Time.time * 3)),
			Mathf.Abs(Mathf.Sin(Time.time + 0.25f * 4)),
			Mathf.Abs(Mathf.Sin(Time.time + 0.5f * 5)),
											0.5f);
		RaycastHit hit;
		Ray PsychicRay = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
		int layerMask = CreateLayerMask();
		if(Physics.Raycast(PsychicRay, out hit, rayLength, layerMask)){
			if(hit.collider.gameObject.layer == 8) {
				reticle.color = highlightColor;
				foreach(Material mat in eyeReticleMaterials) {
					mat.SetColor("_Color", highlightColor);
				}
			}
			if(hit.collider.gameObject.layer == 9 && 
				hit.collider.gameObject != heldItem) {

				foreach(Material mat in eyeReticleMaterials) {
					mat.SetColor("_Color", highlightColor);
				}
				if(Input.GetAxis("Fire2") != 0f){//Input.GetKeyDown(KeyCode.Space)){
					hit.collider.gameObject.transform.parent = Camera.main.transform;
					heldItem = hit.collider.gameObject;
					heldItem.transform.position = PsychicRay.GetPoint(rayLength / 2);
					heldItem.layer = 10;
				}
			}
			if(itemHandlers.ContainsKey(hit.collider.gameObject.tag) && Input.GetAxis("Fire2") != 0){//Input.GetKeyDown(KeyCode.Space)){
				HandleItem itemFunction = itemHandlers[hit.collider.gameObject.tag];
				itemFunction(hit.collider.gameObject);
			}
		}
		else {
			foreach(Material mat in eyeReticleMaterials) {
				mat.SetColor("_Color", defaultReticleColor);
			}
		}
		if(character.height != targetHeight){
			StartCoroutine(ScaleThatPokemon());
		}

		Debug.DrawRay(PsychicRay.origin, PsychicRay.direction * rayLength);
	}

	IEnumerator ScaleThatPokemon() {
		float t = 0f;
		CharacterController character = GetComponent<CharacterController>();
		float startingHeight = character.height;
		while(character.height != targetHeight){
			character.height = Mathf.Lerp(startingHeight, targetHeight, t);
			t += 3f * Time.deltaTime;
			yield return null;
		}
	}

	IEnumerator LerpReticleTint(Color targetTint) {
		float t = 0;
		yield return null;
		Color startTint = eyeReticleMaterials[0].color;
		while(t < 1f) {
			foreach(Material mat in eyeReticleMaterials) {
				mat.SetColor("_Color", Color.Lerp(startTint, targetTint, t));
				t += Time.deltaTime * 3;
				yield return null;
			}
		}
		foreach(Material mat in eyeReticleMaterials) {
			mat.SetColor("_Color", targetTint);
		}
	}



	void HandleCookie(GameObject cookie) {
		targetHeight = targetHeight == mediumSize ? smallSize : mediumSize;
		Camera.main.transform.localPosition = new Vector3(0f, 0f, 0f);
		cookie.transform.parent = Camera.main.transform;
		Ray PsychicRay = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
		cookie.transform.position = PsychicRay.GetPoint(rayLength / 3);
		cookie.layer = 10;
		cookie.transform.Rotate(new Vector3(0f, 0f, 90f));
		StartCoroutine(cookie.gameObject.GetComponent<CookieEatingAnimation>().CookieAnimation());
		Debug.Log("cookie");
	}

	void HandleMilk(GameObject milk) {
		targetHeight = targetHeight == mediumSize ? largeSize : mediumSize;
		milk.transform.parent = Camera.main.transform;
		Ray PsychicRay = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
		milk.transform.position = PsychicRay.GetPoint(rayLength / 3);
		milk.layer = 10;
		StartCoroutine(milk.gameObject.GetComponent<MilkDrinkingAnimation>().MilkAnimation());
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
			Destroy(heldItem);
		}
	}

	void HandlePiggyBank(GameObject piggyBank) {
		StartCoroutine(piggyBank.GetComponent<PiggyBankScript>().Fall());
	}

	void HandleCatBowl(GameObject catbowl) {
		if(heldItem.tag == "Fish Food") {
			heldItem.transform.position = catbowl.transform.position;
			heldItem.transform.parent = catbowl.transform;
			Debug.Log(heldItem.transform.parent.GetChild(0));
			heldItem = null;
		}
	}

	int CreateLayerMask() {
		int layerMask1 = 1 << 8;
		int layerMask2 = 1 << 9;
		return layerMask1 | layerMask2;
	}
}
