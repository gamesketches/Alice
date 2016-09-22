using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class PlanetMovement : MonoBehaviour {

	public FauxGravityAttractor attractor;
	public float speed;
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
		if(transform.localScale.x > 10f) {
			rb.useGravity = true;
			return;
		}

		rb.MovePosition(rb.position + Camera.main.transform.TransformDirection(new Vector3(hori, 0, vert).normalized * speed * Time.deltaTime));

		attractor.Attract(transform);
		if(Input.GetKeyDown(KeyCode.R)){
			SceneManager.LoadScene(3);
		}
	}
}
