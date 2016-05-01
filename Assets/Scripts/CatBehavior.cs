using UnityEngine;
using System.Collections;

public class CatBehavior : MonoBehaviour {

	private Transform destination;
	private NavMeshAgent agent;
	// Use this for initialization
	void Start () {
		destination = GameObject.FindGameObjectWithTag("Player").transform;
		agent = GetComponent<NavMeshAgent>();

	}
	
	// Update is called once per frame
	void Update () {
		agent.SetDestination(destination.position);
	}
}
