using UnityEngine;
using System.Collections;

public class CookieEatingAnimation : MonoBehaviour {

	public int eatingSpeed = 10;
	private MeshRenderer[] cookiePieces;
	// Use this for initialization
	void Start () {
		cookiePieces = gameObject.GetComponentsInChildren<MeshRenderer>();
	}

	public IEnumerator CookieAnimation() {
		Debug.Log(cookiePieces.Length);
		for(int i = 0; i < cookiePieces.Length; i++) {
			cookiePieces[i].enabled = false;
			for(int k = 0; k < eatingSpeed; k++) {
				yield return null;
			}
		}
		Destroy(gameObject);
	}
}
