using UnityEngine;
using System.Collections;

public class MushroomGenerator : MonoBehaviour {


	public Vector3[] mushPos;
	public GameObject mushPrefab;
	public GameObject[] mush;
	public int mushAmoutLmt;
	public GameObject planet;

	// Use this for initialization
	void Start () {
		for (int i = 0; i < mushAmoutLmt; i++) 
		{
			mushPos[i] = (Random.onUnitSphere) * 8.5f + planet.transform.position;
			mush [i] = Instantiate(mushPrefab, mushPos[i], Quaternion.identity) as GameObject;
			mush [i].transform.parent = this.transform;
		}
	}

	// Update is called once per frame
	void Update () {

	}
}
