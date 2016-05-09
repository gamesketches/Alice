using UnityEngine;
using System.Collections;

public class MilkDrinkingAnimation : MonoBehaviour {

	Transform milkTransform;
	float travelDistance;
	AudioSource audio;
	// Use this for initialization
	void Start () {
		GameObject milkLiquid = gameObject.transform.GetChild(0).gameObject;
		float travelDistance = milkLiquid.GetComponent<Renderer>().bounds.extents.y / 2;
		Debug.Log(travelDistance);
		milkTransform = milkLiquid.transform;
		audio = GetComponent<AudioSource>();

	}
	
	public IEnumerator MilkAnimation() {
		Debug.Log(milkTransform.position);
		Vector3 startingScale = milkTransform.localScale;
		Vector3 targetScale = milkTransform.localScale;
		targetScale.y = 0f;
		Vector3 startingPosition = milkTransform.localPosition;
		Vector3 endingPosition = milkTransform.localPosition;
		endingPosition.y -= travelDistance;
		Renderer objectRenderer = milkTransform.gameObject.GetComponent<Renderer>();
		float lastY = objectRenderer.bounds.extents.y;
		float t = 0;
		audio.Play();
		while(t < 1) {
			
			milkTransform.localScale = Vector3.Lerp(startingScale, targetScale, t);
			//milkTransform.position = Vector3.Lerp(startingPosition, endingPosition, t);
			milkTransform.Translate(new Vector3(0, objectRenderer.bounds.extents.y - lastY, 0));
			t += Time.deltaTime;
			yield return null;
		}
		Destroy(gameObject);
	}
}
