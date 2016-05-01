using UnityEngine;
using System.Collections;

public class CoinRotation : MonoBehaviour {

	// Update is called once per frame
	void Update () {
		gameObject.transform.RotateAround(gameObject.transform.position, Vector3.up, 1f);
	}
}
