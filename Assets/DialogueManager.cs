using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class DialogueManager : MonoBehaviour {

	private Dictionary<string, AudioClip> dialogue;
	private List<AudioClip> teaCupClips;
	private AudioSource audio;
	// Use this for initialization
	void Start () {
		audio = gameObject.GetComponent<AudioSource>();
		dialogue = new Dictionary<string, AudioClip>();
		teaCupClips = new List<AudioClip>();
		AudioClip[] clips = Resources.LoadAll<AudioClip>("Sounds/Dialogue");
		foreach(AudioClip clip in clips) {
			dialogue.Add(clip.name, clip);
		}
		clips = Resources.LoadAll<AudioClip>("Sounds/Dialogue/teaCup");
		foreach(AudioClip clip in clips) {
			teaCupClips.Add(clip);
		}
		teaCupClips.Reverse();
	}
	
	public void TryDialogueClip(string objectName) {
		AudioClip temp;
		Debug.Log(objectName);
		if(objectName == "teaCup" && teaCupClips.Count > 0) {
			audio.clip = teaCupClips[teaCupClips.Count - 1];
			teaCupClips.RemoveAt(teaCupClips.Count - 1);
		}
		else if(dialogue.TryGetValue(objectName, out temp)) {
			audio.clip = temp;
			dialogue.Remove(objectName);
		}
		else {
			return;
		}
		audio.Play();
	}
}
