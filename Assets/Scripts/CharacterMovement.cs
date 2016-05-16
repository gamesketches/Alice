using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using UnityEngine.VR;

public class CharacterMovement : MonoBehaviour {

	CharacterController controller;
	// Use this for initialization
	void Start () {
		VRSettings.renderScale = 0.5f;
		controller = GetComponent<CharacterController>();
		}
	
	// Update is called once per frame
	void FixedUpdate () {
		float hori = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");

		controller.Move(Camera.main.transform.forward * vert * Time.deltaTime * 10.0f + Physics.gravity);
		transform.Rotate(0f, hori * 2f, 0f);

		if(Input.GetKeyDown(KeyCode.R)) {
			SceneManager.LoadScene(0);
		}
	}
}
