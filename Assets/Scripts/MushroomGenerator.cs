using UnityEngine;
using System.Collections;

public class MushroomGenerator : MonoBehaviour {

	public Vector3[] mushPos;

	public GameObject mushPrefab;
	public GameObject[] mush;
	public GameObject planet;

	public int mushAmoutLmt;


	// Use this for initialization
	void Start () {
		for (int i = 0; i < mushAmoutLmt; i++) 
		{
			mushPos[i] = (Random.onUnitSphere) * 10f + planet.transform.position;
			if (Vector3.Distance (mushPos[i], new Vector3 (0f, 9.36f, 0f)) > 4f) {
				mush [i] = Instantiate (mushPrefab, mushPos [i], Quaternion.identity) as GameObject;
				mush [i].transform.parent = this.transform;
			} else {
				i--;
			}
		}
			
		foreach (Transform child in transform) 
		{
			child.LookAt(planet.transform);
			child.Rotate(0f, -90f, 90f);
		}
	}

	// Update is called once per frame
	void Update () {

	}
}
