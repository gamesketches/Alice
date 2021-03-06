﻿using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class IntroManager : MonoBehaviour {

	Text motherText;
	Text instructionText;
	Image[] logos;
	AudioClip[] aliceLines;
	AudioSource audio;
	public string[] motherLines;
	public float textTime;
	private float timer;
	private int textIter;
	private int audioIter;
	public float timeBetweenAudio;
	// Use this for initialization
	void Start () {
		textIter = 0;
		audioIter = -1;
		aliceLines = Resources.LoadAll<AudioClip>("Sounds/Dialogue/Intro");
		timer = textTime;
		motherText = GameObject.Find("MotherText").GetComponent<Text>();
		motherText.text = motherLines[textIter];
		instructionText = GameObject.Find("InstructionText").GetComponent<Text>();
		audio = GetComponent<AudioSource>();
		GameObject[] temp = GameObject.FindGameObjectsWithTag("logo");
		logos = new Image[temp.Length];
		for(int i = 0; i < temp.Length; i++) {
			logos[i] = temp[i].GetComponent<Image>();
		}
	}
	
	// Update is called once per frame
	void Update () {
		timer -= Time.deltaTime;
		if(timer <= 0) {
			textIter++;
			if(textIter < motherLines.Length) {
				motherText.text = motherLines[textIter];
				timer = textTime;
			}
			else {
				motherText.text = "";
				audioIter++;
				if(audioIter < aliceLines.Length) {
					audio.clip = aliceLines[audioIter];
					audio.Play();
					timer = timeBetweenAudio + audio.clip.length;
				}
				else {
					StartCoroutine(FadeInLogoAndText());
					timer = 10000;
				}
			}
		}

		if(Input.GetAxis("Fire2") != 0) {
			SceneManager.LoadScene(0);
		}
	}

	IEnumerator FadeInLogoAndText() {
	Debug.Log("audio is playing");
		while(audio.isPlaying) {
			yield return null;
		}
		Debug.Log("Audio is no longer playing");
		float t = 0;
		Color[] textColor = new Color[2];
		textColor[0] = instructionText.color;
		textColor[1] = instructionText.color;
		textColor[1].a = 1f;
		foreach(Image logo in logos) {
			logo.GetComponent<RotateLogo>().started = true;
			StartCoroutine(FadeInLogo(logo));
		}
		while(t < 1) {
			instructionText.color = Color.Lerp(textColor[0], textColor[1], t);
			t += Time.deltaTime;
			yield return null;
		}
		instructionText.GetComponent<MenuFadeInAndOut>().started = true;
	}

	IEnumerator FadeInLogo(Image logo) {
		float t = 0;
		Color[] logoColors = new Color[] {logo.color, logo.color};
		logoColors[1].a = 1f;
		while(t < 1) {
			logo.color = Color.Lerp(logoColors[0], logoColors[1], t);
			t+= Time.deltaTime;
			yield return null;
		}
	}
}
