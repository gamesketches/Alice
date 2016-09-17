using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class fadeInScene : MonoBehaviour {

	Image blackOverlay;
	// Use this for initialization
	void Start () {
		blackOverlay = GetComponent<Image>();
		StartCoroutine(FadeIn());
	}

	IEnumerator FadeIn(){
		float t = 0;
		Color[] imageColors = new Color[] {blackOverlay.color, blackOverlay.color};
		imageColors[1].a = 0;
		while(t < 1) {
			blackOverlay.color = Color.Lerp(imageColors[0], imageColors[1], t);
			t += Time.deltaTime / 2;
			yield return null;
		}
	}
}
