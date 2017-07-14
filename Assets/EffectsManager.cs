using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class EffectsGenerator : MonoBehaviour
{

    public PathGenerator pathGen;
    public EffectsRepo effectsRepo;

    public GenerateEffect testEffect;

}

[Serializable]
public class GenerateEffect
{
    public Effects effect;
    public HotSpots fromPoint, toPoint;
}

