using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackEffect : MonoBehaviour
{

    public AttackEffectRepo repo;

    public float[] delayTimes;

    void Update()
    {
        if (Input.GetKeyDown("a"))
        {
            StartCoroutine(AttackEffectCO());
        }
    }

    private IEnumerator AttackEffectCO()
    {
        repo.particleSystems[0].Play();
        MoveAlongPath(repo.particleSystems[0].gameObject, repo.pathCurves[0], repo.pathCurves[0].animationTime, repo.pathCurves[0].easeType, repo.pathCurves[0].orientToPath);

        yield return new WaitForSeconds(delayTimes[0]);

        repo.particleSystems[1].Play();
        MoveAlongPath(repo.particleSystems[1].gameObject, repo.pathCurves[1], repo.pathCurves[1].animationTime, repo.pathCurves[1].easeType, repo.pathCurves[1].orientToPath);

        yield return new WaitForSeconds(delayTimes[1]);

        repo.particleSystems[2].Play();
        MoveAlongPath(repo.particleSystems[2].gameObject, repo.pathCurves[2], repo.pathCurves[2].animationTime, repo.pathCurves[2].easeType, repo.pathCurves[2].orientToPath);

        yield return new WaitForSeconds(1f);

        foreach (ParticleSystem p in repo.particleSystems)
        {
            p.Stop();
            p.transform.position = repo.pathCurves[0].waypoints[0].transform.position;
            p.transform.rotation = repo.pathCurves[0].waypoints[0].transform.rotation;
        }
    }

    void OnDrawGizmos()
    {
        for (int i = 0; i < repo.pathCurves.Length; i++)
        {
            iTween.DrawPath(repo.pathCurves[i].waypoints);
        }

    }

    public void MoveAlongPath(GameObject _gameObject, PathCurve _pathCurve, float _time, iTween.EaseType _easeType, bool _orientToPath)
    {
        iTween.MoveTo(_gameObject, iTween.Hash("path", _pathCurve.waypoints, "time", _time, "easetype", _easeType, "orienttopath", _orientToPath));
    }
}
