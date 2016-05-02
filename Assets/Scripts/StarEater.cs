using UnityEngine;
using System.Collections;

public class StarEater : MonoBehaviour {

	public float growBy = 1f;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		Ray PsychicRay = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
		if(Physics.Raycast(PsychicRay, out hit, 100f)){
			Debug.Log(hit.collider.gameObject.name);
			if(hit.collider.gameObject.tag == "CandyStar" && Input.GetKeyDown(KeyCode.Space)) {
				Vector3 scale = gameObject.transform.localScale;
				scale += new Vector3(growBy, growBy, growBy);
				gameObject.transform.localScale = scale;
			}
		}
		Debug.DrawRay(PsychicRay.origin, PsychicRay.direction * 100f);
	}
}
