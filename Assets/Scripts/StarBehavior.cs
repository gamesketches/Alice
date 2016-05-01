using UnityEngine;
using System.Collections;
using UnityEngine.VR;

public class StarBehavior : MonoBehaviour {

	private Transform center;
	public float rotationSpeed;
	public Vector3 axis;
	// Use this for initialization
	void Start () {
		center = GameObject.Find("Planet").transform;
		VRSettings.renderScale = 0.5f;
	}
	
	// Update is called once per frame
	void Update () {
		transform.RotateAround(center.position, axis.normalized, 90.0f * Time.deltaTime);
	}
}
