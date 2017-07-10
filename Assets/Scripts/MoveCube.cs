using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;
using UnityEngine.AI;

public class MoveCube : MonoBehaviour {

    private ParticleSystem particleSys;
    public Transform[] waypoints;
    public bool alignToPath;
    public float attackTime;
    public iTween.EaseType easeType;

    // Use this for initialization
    void Start () {
        //MoveAlongPath();
        particleSys = this.GetComponent<ParticleSystem>();
	}

    void Update()
    {
        if (Input.GetKeyDown("a"))
        {
            StartCoroutine(AttackEffectCO());
        }
    }

    void OnDrawGizmos()
    {
        iTween.DrawPath(waypoints);
    }

    public void MoveAlongPath()
    {
        iTween.MoveTo(gameObject, iTween.Hash("path", waypoints, "time", attackTime, "easetype", easeType, "orienttopath", alignToPath));
    }

    private IEnumerator AttackEffectCO()
    {
        particleSys.Play();
        MoveAlongPath();
        yield return new WaitForSeconds(1.5f);
        particleSys.Stop();
        this.transform.position = waypoints[0].transform.position;
        this.transform.rotation = waypoints[0].transform.rotation;
    }

    private void MoveOnlyParticles()
    {
        ParticleSystem.Particle[] particles = new ParticleSystem.Particle[particleSys.particleCount];
        particleSys.GetParticles(particles);

        for (int i = 0; i < particles.Length; i++)
        {
            
        }
    }
}
