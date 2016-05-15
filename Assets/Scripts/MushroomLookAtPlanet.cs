using UnityEngine;
using System.Collections;

public class MushroomLookAtPlanet : MonoBehaviour {

	public GameObject planet;

	// Use this for initialization
	void Start () {
		planet = GameObject.Find ("Planet");
		transform.LookAt (planet.transform);
		transform.Rotate (0f, -90f, 90f);

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
