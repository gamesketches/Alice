using UnityEngine;
using System.Collections;

public class PlanetMovement : MonoBehaviour {

	CharacterController controller;
	public GameObject sphere;
	Rigidbody rb;
	// Use this for initialization
	void Start () {
		controller = GetComponent<CharacterController>();
		rb = GetComponent<Rigidbody>();
	}

	// Update is called once per frame
	void Update () {
		float hori = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");
		Vector3 targetVector = sphere.transform.position - gameObject.transform.position;
		transform.up = targetVector;
		Debug.Log(targetVector);
		targetVector *= 0.1f;
		controller.Move(transform.forward * vert * Time.deltaTime * 10.0f);
		transform.Rotate(0f, hori * 2f, 0f);
		rb.AddForce(1 * targetVector.normalized / targetVector.sqrMagnitude);

	}
}
