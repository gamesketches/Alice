using UnityEngine;
using System.Collections;

public class CharacterMovement : MonoBehaviour {

	CharacterController controller;
	Vector3 targetScale;
	// Use this for initialization
	void Start () {
		controller = GetComponent<CharacterController>();
		targetScale = gameObject.transform.localScale;
	}
	
	// Update is called once per frame
	void Update () {
		float hori = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");

		controller.Move(transform.forward * vert * Time.deltaTime * 10.0f);
		transform.Rotate(0f, hori * 2f, 0f);
		if(Input.GetKeyDown(KeyCode.E)) {
			targetScale = new Vector3(2f, 2f, 2f);
		}
		else if(Input.GetKeyDown(KeyCode.Q)) {
			targetScale = new Vector3(0.5f, 0.5f, 0.5f);
		}

		if(gameObject.transform.localScale != targetScale) {
			StartCoroutine(ScaleThatPokemon());
		}
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
}
