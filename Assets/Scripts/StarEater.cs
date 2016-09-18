using UnityEngine;
using System.Collections;

public class StarEater : MonoBehaviour {

	public float growBy = 1f;
	AudioSource audio;
	AudioClip[] rewardSounds;
	int rewardSound;
	// Use this for initialization
	void Start () {
		rewardSound = 0;
		audio = GetComponent<AudioSource>();
		StartCoroutine(LoadAudio());
	}
	
	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		Ray PsychicRay = new Ray(Camera.main.transform.position, Camera.main.transform.forward);
		if(Physics.Raycast(PsychicRay, out hit, 100f)){
			if(hit.collider.gameObject.tag == "CandyStar" && Input.GetKeyDown(KeyCode.Space)) {
				Vector3 scale = gameObject.transform.localScale;
				scale += new Vector3(growBy, growBy, growBy);
				gameObject.transform.localScale = scale;
				rewardSound++;
				audio.clip = rewardSounds[rewardSound];
			}
		}
		Debug.DrawRay(PsychicRay.origin, PsychicRay.direction * 100f);
	}

	IEnumerator LoadAudio() {
		while(audio.isPlaying) {
			yield return null;
		}
		rewardSounds = Resources.LoadAll<AudioClip>("Sounds/Reward Sound/");
		audio.clip = rewardSounds[rewardSound];
	}
}
