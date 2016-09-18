using UnityEngine;
using System.Collections;

public class RotateLogo : MonoBehaviour {

	public float rotateSpeed;
	public bool started;
	// Use this for initialization
	void Start () {
		started = false;
	}
	
	// Update is called once per frame
	void Update () {
		if(started) {
			transform.Rotate(new Vector3(0, 0, rotateSpeed * Time.deltaTime));
		}
	}
}
