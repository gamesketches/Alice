using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class CatBehavior : MonoBehaviour {

	private Transform player;
	private Transform foodBowl;
	private NavMeshAgent agent;
	private AudioSource audio;
	// Use this for initialization
	void Start () {
		audio = GetComponent<AudioSource>();
		audio.Play();
		audio.clip = Resources.Load<AudioClip>("Sounds/Cat/cathungrymeow");
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
		if(player.localScale.y < 1f && foodBowl.childCount == 0) {
			checkAudioClip("catattack");
			agent.SetDestination(player.position);
			agent.stoppingDistance = 0f;
		}
		else {
			checkAudioClip("cathungrymeow");
			agent.SetDestination(foodBowl.position);
			agent.stoppingDistance = 3f;
		}
	}

	void checkAudioClip(string clipName) {
		if(audio.isPlaying) {
			return;
		}
		if(audio.clip.name != clipName) {
			audio.clip = Resources.Load<AudioClip>(string.Concat("Sounds/Cat/", clipName));
		}
			audio.Play();
	}
}
