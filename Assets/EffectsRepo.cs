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

        foreach (Effect eff in effects)
        {
            eff.effectNameString = eff.effectName.ToString();
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
    
    [HideInInspector]
    public string effectNameString;
    public Effects effectName;
    public GameObject[] effectComponent;
    public PathType pathType;
    [Range(-50f, 50f)]
    public float curvature;
    public int iterations;
    public iTween.EaseType easeType;
    public GameObject afterThat;

    [HideInInspector]
    public List<ParticleSystem> particleSystemsIncluded = new List<ParticleSystem>();

    public void PlayEffect()
    {
        particleSystemsIncluded.Clear();
        for (int i = 0; i < effectComponent.Length; i++)
        {
            ParticleSystem[] q = effectComponent[i].GetComponentsInChildren<ParticleSystem>();
            for (int j = 0; j < q.Length; j++)
            {
                particleSystemsIncluded.Add(q[j]);
            }
        }
        
        if (particleSystemsIncluded.Capacity > 0)
        {
            foreach (var part in particleSystemsIncluded)
            {
                part.Play();
            }
        }
        else
        {
            Debug.Log("can't play particle effect because object " + effectComponent + " doesn't contain any effect!");
        }
    }
}

public enum Effects
{
    PhysicalSimpleToShield,
    PhysicalSimpleToCard,
    PhysicalCrossedToShield,
    PhysicalCrossedToCard,
    MagicalSimpleToShield,
    MagicalSimpleToCard,
    MagicalCrossedToShield,
    MagicalCrossedToCard
}
