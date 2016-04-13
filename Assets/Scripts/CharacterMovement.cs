using UnityEngine;
using System.Collections;

public class CharacterMovement : MonoBehaviour {

	CharacterController controller;
	public Camera camera;
	public GameObject scene;
	Vector3 targetScale;
	// Use this for initialization
	void Start () {
		controller = GetComponent<CharacterController>();
		targetScale = scene.transform.localScale;
	}
	
	// Update is called once per frame
	void Update () {
		if(!camera.enabled) {
			return;
		}
		float hori = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");

		controller.Move(transform.forward * vert * Time.deltaTime * 10.0f);
		transform.Rotate(0f, hori * 2f, 0f);
		if(Input.GetKeyDown(KeyCode.E)) {
			targetScale = new Vector3(2f, 2f, 2f);
			//scene.transform.localScale = new Vector3(2f, 2f, 2f);
		}
		else if(Input.GetKeyDown(KeyCode.Q)) {
			targetScale = new Vector3(05f, 0.5f, 0.5f);
			//scene.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
		}

		if(scene.transform.localScale != targetScale) {
			StartCoroutine(ScaleThatPokemon());
		}
	}

	IEnumerator ScaleThatPokemon() {
		float t = 0;
		Vector3 startingScale = scene.transform.localScale;
		Debug.Log(startingScale);
		while(scene.transform.localScale != targetScale) {
			scene.transform.localScale = Vector3.Lerp(startingScale, targetScale, t);
			t += 3f * Time.deltaTime;
			yield return null;
		}
		Debug.Log(scene.transform.localScale);
	}
}
