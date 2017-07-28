using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class EffectsGenerator : MonoBehaviour
{
    public PathGenerator pathGen;
    public EffectsRepo effectsRepo;
    public GenerateEffect testEffect;
    public GenerateEffect[] testMultipleEffects;

    void Update()
    {
        if (Input.GetKeyDown("a"))
        {
            TestEffect(testEffect);
        }
        if (Input.GetKeyDown("s"))
        {
            StartCoroutine(PlayEffetcsCO(testMultipleEffects));
        }
    }

    public void TestEffect(GenerateEffect _effect)
    {
        Effect eff = effectsRepo.GetEffect(_effect.effect);
        Debug.Log(eff.effectName);
        if (eff.pathType == PathType.SimpleCurve)
        {
            Vector3[] curve = pathGen.GeneratePath(_effect.fromPoint, _effect.toPoint, new SimpleCurve(eff.curvature))[0];
            eff.PlayEffect();
            foreach (GameObject e in eff.effect)
            {
                e.transform.position = curve[0];
                iTween.MoveTo(e, iTween.Hash(
                    "path", curve,
                    "time", _effect.time,
                    "easetype", eff.easeType,
                    "orienttopath", true,
                    "oncomplete", "PlaySecondEffect",
                    "oncompletetarget", gameObject,
                    "oncompleteparams", _effect
                    ));
            }        //TODO fare un for in cui vario la curvatura    
        }

        if (eff.pathType == PathType.Helix)
        {
            List<Vector3[]> helix =
                pathGen.GeneratePath(_effect.fromPoint, _effect.toPoint, new Helix(eff.curvature, eff.iterations));

            eff.PlayEffect();
            for (int i = 0; i < eff.effect.Length; i++)
            {
                eff.effect[i].transform.position = helix[i][0];
                iTween.MoveTo(eff.effect[i], iTween.Hash
                    (
                    "path", helix[i],
                    "time", _effect.time,
                    "easetype", eff.easeType,
                    "orienttopath", true,
                    "oncomplete", "PlaySecondEffect",
                    "oncompletetarget", gameObject,
                    "oncompleteparams", _effect
                    ));
            }
        }
    }

    public void PlaySecondEffect(GenerateEffect _eff)
    {
        Effect e = effectsRepo.GetEffect(_eff.effect);
        foreach (ParticleSystem ps in e.particleSystemsIncluded)
        {
            ps.Stop();
            Debug.Log("Stopped " + ps.name);
        }
        e.afterThat.transform.position = pathGen.GetHotspotPosition(_eff.toPoint);
        ParticleSystem[] systems = e.afterThat.GetComponentsInChildren<ParticleSystem>();
        foreach (ParticleSystem ps in systems)
        {
            ps.Play();
        }
    }

    private IEnumerator PlayEffetcsCO(GenerateEffect[] _effects)
    {
        foreach (GenerateEffect generateEffect in _effects)
        {
            Effect eff = effectsRepo.GetEffect(generateEffect.effect);
            Debug.Log(eff.effectName);
            if (eff.pathType == PathType.SimpleCurve)
            {
                float tempCurvature = eff.curvature;
                Vector3[] curve = pathGen.GeneratePath(generateEffect.fromPoint, generateEffect.toPoint, new SimpleCurve(eff.curvature))[0];
                
                foreach (GameObject e in eff.effect)
                {
                    //move along path
                    e.transform.position = curve[0];
                    iTween.MoveTo(e, iTween.Hash(
                        "path", curve,
                        "time", generateEffect.time,
                        "easetype", eff.easeType,
                        "orienttopath", true
                        ));

                    //play the particle system
                    ParticleSystem sys = e.GetComponent<ParticleSystem>();
                    sys.Play();

                    //increment curvature for next effect path
                    tempCurvature += 8.0f;
                    curve = pathGen.GeneratePath(generateEffect.fromPoint, generateEffect.toPoint, new SimpleCurve(tempCurvature))[0];
                    yield return new WaitForSeconds(0.2f);
                }
            }

            if (eff.pathType == PathType.Helix)
            {
                List<Vector3[]> helix = pathGen.GeneratePath(generateEffect.fromPoint, generateEffect.toPoint, new Helix(eff.curvature, eff.iterations));

                //eff.PlayEffect();
                for (int i = 0; i < eff.effect.Length; i++)
                {
                    eff.effect[i].transform.position = helix[i][0];
                    iTween.MoveTo(eff.effect[i], iTween.Hash
                        (
                        "path", helix[i],
                        "time", generateEffect.time,
                        "easetype", eff.easeType,
                        "orienttopath", true
                        ));
                    eff.PlayEffect();
                }
            }

            yield return new WaitForSeconds(generateEffect.time);
            PlaySecondEffect(generateEffect);
        }
    }
}

[Serializable]
public class GenerateEffect
{
    public Effects effect;
    public HotSpots fromPoint, toPoint;
    public float time;
}

