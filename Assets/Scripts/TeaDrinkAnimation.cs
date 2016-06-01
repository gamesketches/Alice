using UnityEngine;
using System.Collections;

public class TeaDrinkAnimation : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public IEnumerator TeaCupTilt(Vector3 movePos) { 
		float t = 0f;
		GameObject cup = transform.GetChild(0).gameObject;
		cup.transform.position = movePos;
		Quaternion startRotation = cup.transform.rotation;
		Quaternion endRotation = Quaternion.Euler(new Vector3(0f, 0f, -30f));
		while(t < 1f) {
			transform.rotation = Quaternion.Lerp(startRotation, endRotation, t);
			t += Time.deltaTime;
			yield return null;
		}
	}
}
