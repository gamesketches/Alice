using UnityEngine;
using System.Collections;
using System.IO;

public class TreeGenerator : MonoBehaviour {

	public Vector3[] treePos;

	public GameObject treePrefab;
	public GameObject[] tree;
	public GameObject planet;
	//public int numTrees;
	public int treeAmoutLmt;

	// Use this for initialization
	void Start () {
		/*foreach(GameObject plant in Resources.LoadAll<GameObject>("prefabs/planetPlants")) {
			
		}*/
	//	tree = new GameObject[numTrees];
		for (int i = 0; i < treeAmoutLmt; i++) 
		{
			treePos[i] = (Random.onUnitSphere) * 14f + planet.transform.position;
			if (Vector3.Distance (treePos [i], new Vector3 (0f, 9.36f, 0f)) > 8f) {
				tree [i] = Instantiate (treePrefab, treePos [i], Quaternion.identity) as GameObject;
				tree [i].transform.parent = this.transform;
			} else {
				i--;
			}
		}

		foreach (Transform child in transform) 
		{
			child.LookAt(planet.transform);
			child.Rotate(0f, -90f, 90f);
		}
	}

	// Update is called once per frame
	void Update () {

	}
}
