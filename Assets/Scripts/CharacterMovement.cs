using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.VR;

public class CharacterMovement : MonoBehaviour {

	CharacterController controller;
	public int jumpDelay = 60;
	public float hopDistance = 1.0f;
	private int stepCounter = 0;
	private bool hopping;
	List<GameObject> furniture;
	List<Vector3> furnitureStartPositions;
	List<Vector3> furnitureTargetPositions;
	// Use this for initialization
	void Start () {
		hopping = false;
		VRSettings.renderScale = 0.5f;
		controller = GetComponent<CharacterController>();
		var goArray = FindObjectsOfType(typeof(GameObject));
		Debug.Log(goArray.Length);
		furniture = new List<GameObject>();
		furnitureStartPositions = new List<Vector3>();
		furnitureTargetPositions = new List<Vector3>();
		foreach(GameObject obj in goArray) {
			if(obj.layer == 10) {
				furniture.Add(obj);
				}
			}
		foreach(GameObject obj in furniture) {
			Vector3 pos = obj.transform.position;
			furnitureStartPositions.Add(pos);
			pos.y += hopDistance;
			furnitureTargetPositions.Add(pos);
			}
		}
	
	// Update is called once per frame
	void FixedUpdate () {
		float hori = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");

		controller.Move(Camera.main.transform.forward * vert * Time.deltaTime * 10.0f + Physics.gravity);
		transform.Rotate(0f, hori * 2f, 0f);

		if(vert != 0f) {
			stepCounter++;
			if(stepCounter > jumpDelay && !hopping) {
				StartCoroutine(FurnitureHop());
				stepCounter = 0;
			}
		}
		else {
			stepCounter = 0;
		}
		if(Input.GetKeyDown(KeyCode.R)) {
			SceneManager.LoadScene(0);
		}
	}

	IEnumerator FurnitureHop() {
		hopping = true;
		float t = 0;
		while(t <= 1) {
			for(int i = 0; i < furniture.Count; i++) {
				furniture[i].transform.position = Vector3.Lerp(furnitureStartPositions[i],
																furnitureTargetPositions[i],
																						t);
			}
			t += Time.deltaTime * 5;
			yield return null;
		}
		while(t >= 0) {
			for(int i = 0; i < furniture.Count; i++) {
				furniture[i].transform.position = Vector3.Lerp(furnitureTargetPositions[i],
					furnitureStartPositions[i],
											t);
			}
			t -= Time.deltaTime * 5;
			yield return null;
		}
		for(int i = 0; i < furniture.Count; i++) {
			furniture[i].transform.position = furnitureStartPositions[i];
		}
		hopping = false;
	}
}
