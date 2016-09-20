using UnityEngine;
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
	Vector2 textureOffset;
	AudioSource audio;
	Texture2D hint;
	// Use this for initialization
	void Start () {

		audio = Camera.main.GetComponents<AudioSource>()[2];
		renderers = new List<Renderer>();
		for(int i = 1; i < transform.childCount; i++){
			renderers.Add(transform.GetChild(i).GetComponent<Renderer>());
		}
		frames = Resources.LoadAll<Texture2D>(DetermineWallAnimation());
		timer = delay;
		Invoke("ResetGame", timeToReset);
		Invoke("ChangeToHint", timeToReset - (timeToReset / 4));
		audio.Play();
		textureOffset = new Vector2(0f, 0f);
	}
	
	// Update is called once per frame
	void Update () {
		timer--;
		if(timer <= 0) {
			foreach(Renderer renderer in renderers){
				renderer.material.mainTexture = frames[frameCount];
				renderer.material.mainTextureScale = new Vector2(5f, 5f);
				renderer.material.SetTextureOffset("_MainTex", textureOffset);
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
		hint = Resources.Load<Texture2D>("Textures/hints/hint1");
		audio.clip = Resources.Load<AudioClip>("Sounds/Dialogue/teaCup/teaDeath");
		if(ObjectLogger.eatenByCat) {
			audio.clip = Resources.Load<AudioClip>("Sounds/Dialogue/catDeath");
			path = "Textures/BlackAndWhite";
		}
		else if(ObjectLogger.bobbyPinObtained) {
			hint = Resources.Load<Texture2D>("Textures/hints/hint3");
		}
		else if(ObjectLogger.goodieConsumed) {
			hint = Resources.Load<Texture2D>("Textures/hints/hint2");
		}

		ObjectLogger.Reset();
		return path;
	}

	void ChangeToHint() {
		frames = new Texture2D[] {hint};
		textureOffset = new Vector2(5f, 0f);
		frameCount = 0;
	}
}
