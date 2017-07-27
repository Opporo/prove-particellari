using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class EffectsRepo : MonoBehaviour
{
    public bool update;
    private Transform myTransform;

    public GameObject[] effectComponents;

    public Effect[] effects;

    void OnValidate()
    {
        myTransform = gameObject.transform;
        effectComponents = new GameObject[myTransform.childCount];
        
        for (int i = 0; i < myTransform.childCount; i++)
        {
            effectComponents[i] = myTransform.GetChild(i).gameObject;
        }
    }

    void Start()
    {
        foreach(GameObject _go in effectComponents)
        {
            iTween.Init(_go);
        }
    }

    public Effect GetEffect(Effects _effect)
    {
        return Array.Find(effects, x => x.effectName == _effect);
    }
}

[Serializable]
public class Effect
{
    public Effects effectName;
    public GameObject[] effect;
    public int howMany;
    public PathType pathType;
    [Range(-50f, 50f)]
    public float curvature;
    public int iterations;
    public iTween.EaseType easeType;
    public GameObject afterThat;

    [HideInInspector]
    public List<ParticleSystem> p = new List<ParticleSystem>();

    public void PlayEffect()
    {
        p.Clear();
        for (int i = 0; i < effect.Length; i++)
        {
            ParticleSystem[] q = effect[i].GetComponentsInChildren<ParticleSystem>();
            for (int j = 0; j < q.Length; j++)
            {
                p.Add(q[j]);
            }
        }
        
        //Debug.Log("Found " + p.Capacity + " particle systems in " + effect);
        if (p.Capacity > 0)
        {
            foreach (var part in p)
            {
                part.Play();
            }
        }
        else
        {
            Debug.Log("can't play particle effect because object " + effect + " doesn't contain any effect!");
        }
    }
}

public enum Effects
{
    PhysicalSimple,
    PhysicalCrossed,
    MagicalSimple,
    MagicalCrossed
}
