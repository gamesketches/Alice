using UnityEngine;
using System.Collections;

public class CookieEatingAnimation : MonoBehaviour {

	public int eatingSpeed = 10;
	private MeshRenderer[] cookiePieces;
	private AudioSource audio;
	// Use this for initialization
	void Start () {
		audio = GetComponent<AudioSource>();
		cookiePieces = gameObject.GetComponentsInChildren<MeshRenderer>();
	}

	public IEnumerator CookieAnimation() {
		for(int i = 0; i < cookiePieces.Length; i++) {
			if(audio.isPlaying) {
				audio.Stop();
			}
			audio.Play();
			cookiePieces[i].enabled = false;
			for(int k = 0; k < eatingSpeed; k++) {
				yield return null;
			}
		}
		Destroy(gameObject);
	}
}
