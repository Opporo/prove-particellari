using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveCube : MonoBehaviour {

    private ParticleSystem particleSys;

	// Use this for initialization
	void Start () {
        //MoveAlongPath();
        particleSys = this.GetComponent<ParticleSystem>();
	}

    void Update()
    {
        if (Input.GetKeyDown("a")){
            particleSys.Play();
            MoveAlongPath();
        }
    }

    public void MoveAlongPath()
    {
        iTween.MoveTo(gameObject, iTween.Hash("path", iTweenPath.GetPath("pat"), "time", 1.5, "easetype", iTween.EaseType.linear));
    }
}
