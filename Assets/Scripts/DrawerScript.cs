using UnityEngine;
using System.Collections;

public class DrawerScript : MonoBehaviour {

	public float moveDistance = 0.7f;
	
	public IEnumerator openDrawer() {
		Vector3 startPosition = gameObject.transform.position;
		Vector3 targetPosition = startPosition;
		targetPosition.x += moveDistance;
		float t = 0;
		while(t <= 1f) {
			gameObject.transform.position = Vector3.Lerp(startPosition, targetPosition, t);
			t += Time.deltaTime;
			yield return null;
		}
	}
}
