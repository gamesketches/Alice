using UnityEngine;
using System.Collections;

public class DrawerScript : MonoBehaviour {

	public float moveDistance = 0.7f;
	
	public IEnumerator openDrawer() {
		AudioSource audio = GetComponent<AudioSource>();
		audio.clip = Resources.Load<AudioClip>("Sounds/Drawer/draweropen");
		audio.Play();
		Vector3 startPosition = gameObject.transform.position;
		Vector3 targetPosition = startPosition;
		targetPosition.z += moveDistance;
		float t = 0;
		while(t <= 1f) {
			gameObject.transform.position = Vector3.Lerp(startPosition, targetPosition, t);
			t += Time.deltaTime;
			yield return null;
		}
	}
}
