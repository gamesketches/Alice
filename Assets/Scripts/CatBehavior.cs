using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class CatBehavior : MonoBehaviour {

	private Transform player;
	private Transform foodBowl;
	private NavMeshAgent agent;
	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag("Player").transform;
		foodBowl = GameObject.FindGameObjectWithTag("CatBowl").transform;
		agent = GetComponent<NavMeshAgent>();
	}

	void OnTriggerEnter(Collider other) {
		if(other.gameObject.tag == "Player" && player.localScale.y < 1f) {
			SceneManager.LoadScene(1);
		}
	}
	
	// Update is called once per frame
	void Update () {
		if(player.localScale.y < 1f && foodBowl.parent.GetChild(0) != null) {
			agent.SetDestination(player.position);
			agent.stoppingDistance = 0f;
		}
		else {
			agent.SetDestination(foodBowl.position);
			agent.stoppingDistance = 3f;
		}
	}
}
