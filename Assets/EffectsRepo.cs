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
}

[Serializable]
public class Effect
{
    public Effects effectName;
    public GameObject effect;
    public int howMany;
    public PathType pathType;
    public float curvature;
    public int iterations;

    public Effects myEnumName;
}

public enum Effects
{
    PhysicalSimple,
    PhysicalCrossed
}
