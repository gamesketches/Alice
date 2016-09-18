﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class CatStomachLining : MonoBehaviour {

	Texture2D[] frames;
	public int delay;
	public float timeToReset;
	private int timer;
	private int frameCount = 0;
	private List<Renderer> renderers;
	AudioSource audio;
	// Use this for initialization
	void Start () {

		audio = Camera.main.GetComponent<AudioSource>();
		renderers = new List<Renderer>();
		for(int i = 1; i < transform.childCount; i++){
			renderers.Add(transform.GetChild(i).GetComponent<Renderer>());
		}
		frames = Resources.LoadAll<Texture2D>(DetermineWallAnimation());
		timer = delay;
		Invoke("ResetGame", timeToReset);

		audio.Play();
	}
	
	// Update is called once per frame
	void Update () {
		timer--;
		if(timer <= 0) {
			foreach(Renderer renderer in renderers){
				renderer.material.mainTexture = frames[frameCount];
				renderer.material.mainTextureScale = new Vector2(5f, 5f);
			}
			frameCount++;
			if(frameCount == frames.Length){
				frameCount = 0;
			}
			timer = delay;
		}
	}

	void ResetGame() {
		SceneManager.LoadScene(0);
	}

	string DetermineWallAnimation() {
		string path = "Textures/PoisonEnd";
		audio.clip = Resources.Load<AudioClip>("Sounds/Dialogue/teaCup/teaDeath");
		if(ObjectLogger.eatenByCat) {
			audio.clip = Resources.Load<AudioClip>("Sounds/Dialogue/catDeath");
			path = "Textures/BlackAndWhite";
		}
		else if(ObjectLogger.drawerOpened){
			Debug.Log("Should be an image of alice killing herself");
		}
		else if(ObjectLogger.bobbyPinObtained) {
			Debug.Log("Should be an image of opening the drawer");
		}
		else if(ObjectLogger.goodieConsumed) {
			Debug.Log("Should be an image of the vending machine");
		}
		Debug.LogError("nothing else is implemented yet");

		ObjectLogger.Reset();
		return path;
	}
}
