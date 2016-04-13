using UnityEngine;
using System.Collections;

public class ScaleInPlace : MonoBehaviour {

	public float scaleRate = 1.0f;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 temp = gameObject.transform.localScale;
		temp.x += scaleRate * Time.deltaTime;
		gameObject.transform.localScale = temp;
	}
}
