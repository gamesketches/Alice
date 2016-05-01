using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class SceneChange : MonoBehaviour {

	void OnTriggerEnter(Collider other) {
		SceneManager.LoadScene(2);
	}
}
