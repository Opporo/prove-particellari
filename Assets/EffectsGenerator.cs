using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class EffectsGenerator : MonoBehaviour
{
    public PathGenerator pathGen;
    public EffectsRepo effectsRepo;
    public GenerateEffect testEffect;
    public float time;

    void Update()
    {
        if (Input.GetKeyDown("a"))
        {
            TestEffect(testEffect);
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
                iTween.MoveTo(e, iTween.Hash("path", curve, "time", time, "easetype", iTween.EaseType.easeOutQuad, "orienttopath", true));
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
                    "time", time,
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
        foreach(ParticleSystem ps in e.p)
        {
            ps.Stop();
        }
        e.afterThat.transform.position = pathGen.GetHotspotPosition(_eff.toPoint);
        ParticleSystem[] systems = e.afterThat.GetComponentsInChildren<ParticleSystem>();
        foreach(ParticleSystem ps in systems)
        {
            ps.Play();
        }
    }

    private IEnumerator EffectGenerationCO(GenerateEffect _effect)
    {
        Effect eff = effectsRepo.GetEffect(_effect.effect);
        Debug.Log(eff.effectName);

        if (eff.pathType == PathType.SimpleCurve)
        {
            Vector3[] curve = pathGen.GeneratePath(_effect.fromPoint, _effect.toPoint, new SimpleCurve(eff.curvature))[0];

            eff.PlayEffect();

            foreach (GameObject e in eff.effect)
            {
                iTween.MoveTo(e, iTween.Hash("path", curve, "time", time, "easetype", eff.easeType, "orienttopath", true));
                yield return new WaitForSeconds(0.2f);
            }        //TODO fare un for in cui vario la curvatura    
        }

        if (eff.pathType == PathType.Helix)
        {
            List<Vector3[]> helix =
                pathGen.GeneratePath(_effect.fromPoint, _effect.toPoint, new Helix(eff.curvature, eff.iterations));

            eff.PlayEffect();

            for (int i = 0; i < eff.effect.Length; i++)
            {
                iTween.MoveTo(eff.effect[i], iTween.Hash("path", helix[i], "time", time, "easetype", eff.easeType, "orienttopath", true));
                yield return new WaitForSeconds(0.2f);
            }

            yield return new WaitForSeconds(2f);

            for (int i = 0; i < eff.effect.Length; i++)
            {
                iTween.MoveTo(eff.effect[i], helix[i][0], 0f);
            }
        }
    }
}

[Serializable]
public class GenerateEffect
{
    public Effects effect;
    public HotSpots fromPoint, toPoint;
}

