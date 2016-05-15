using UnityEngine;
using System.Collections;
using System.IO;

public class TreeGenerator : MonoBehaviour {

	public Vector3[] treePos;
	public GameObject treePrefab;
	public GameObject[] tree;
	public int treeAmoutLmt;
	public GameObject planet;

	// Use this for initialization
	void Start () {
		for (int i = 0; i < treeAmoutLmt; i++) 
		{
			treePos[i] = (Random.onUnitSphere) * 12f + planet.transform.position;
			tree [i] = Instantiate(treePrefab, treePos[i], Quaternion.identity) as GameObject;
			tree [i].transform.parent = this.transform;
		}
	}

	// Update is called once per frame
	void Update () {

	}
}
