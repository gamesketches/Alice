using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MenuFadeInAndOut : MonoBehaviour {

	Color fadedColor, activeColor;
	bool fadingIn;
	Text theText;
	float t;
	public float fadeSpeed;
	public bool started;
	// Use this for initialization
	void Start () {
		started = false;
		fadingIn = false;
		theText = GetComponent<Text>();
		fadedColor = theText.color;
		activeColor = theText.color;
		activeColor.a = 1;
		t = 0;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		if(started) {
			if(fadingIn) {
				theText.color = Color.Lerp(fadedColor, activeColor, t);
			}
			else {
				theText.color = Color.Lerp(activeColor, fadedColor, t);
			}
			t += Time.smoothDeltaTime;
			if(t > 1) {
				fadingIn = !fadingIn;
				t = 0;
			}
		}
	}
}
