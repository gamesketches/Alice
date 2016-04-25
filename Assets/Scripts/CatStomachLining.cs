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
	// Use this for initialization
	void Start () {
		renderers = new List<Renderer>();
		for(int i = 1; i < transform.childCount; i++){
			renderers.Add(transform.GetChild(i).GetComponent<Renderer>());
		}
		frames = Resources.LoadAll<Texture2D>("Textures");
		timer = delay;
		Invoke("ResetGame", timeToReset);
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
}
