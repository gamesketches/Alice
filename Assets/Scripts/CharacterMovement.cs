﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.VR;

public class CharacterMovement : MonoBehaviour {

	CharacterController controller;
	public int stepDelay = 120;
	public float hopDistance = 0.1f;
	private int stepCounter = 0;
	private float baseHeight;
	private bool hopping;
	AudioSource footstepAudio;
	List<GameObject> furniture;
	List<Vector3> furnitureStartPositions;
	List<Vector3> furnitureTargetPositions;
	// Use this for initialization
	void Start () {
		hopping = false;
		VRSettings.renderScale = 0.5f;
		footstepAudio = GetComponent<AudioSource>();
		controller = GetComponent<CharacterController>();
		baseHeight = controller.height;
		var goArray = FindObjectsOfType(typeof(GameObject));
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
		// Comment out this line to enable groundshake
		//hopping = true;
		float hori = Input.GetAxis("Horizontal");
		float vert = Input.GetAxis("Vertical");

		controller.Move(Camera.main.transform.forward * vert * Time.deltaTime * 10.0f + Physics.gravity);
		transform.Rotate(0f, hori * 2f, 0f);

		if(vert != 0f) {
			stepCounter++;
			if(stepCounter > stepDelay) {
				if(!hopping && controller.height > baseHeight) {
					StartCoroutine(FurnitureHop());
				}
					footstepAudio.Play();
					stepCounter = 0;
			}
		}
		else {
			stepCounter = 0;
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
				furniture[i].transform.position = Vector3.Lerp(furnitureStartPositions[i],
					furnitureTargetPositions[i],
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
