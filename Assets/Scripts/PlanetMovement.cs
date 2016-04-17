using UnityEngine;
using System.Collections;

public class PlanetMovement : MonoBehaviour {

	public FauxGravityAttractor attractor;
	Rigidbody rb;
	// Use this for initialization
	void Start () {
		rb = GetComponent<Rigidbody>();
		rb.constraints = RigidbodyConstraints.FreezeRotation;
		rb.useGravity = false;
	}

	// Update is called once per frame
	void FixedUpdate () {
		float hori = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");

		rb.MovePosition(rb.position + transform.TransformDirection(new Vector3(hori, 0, vert).normalized * 10.0f * Time.deltaTime));

		attractor.Attract(transform);
	}
}
