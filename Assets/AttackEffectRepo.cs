using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackEffectRepo : MonoBehaviour
{

    public ParticleSystem[] particleSystems;
    public PathCurve[] pathCurves;

}

[Serializable]
public class PathCurve
{
    public Transform[] waypoints;
    public float animationTime;
    public iTween.EaseType easeType;
    public bool orientToPath;
}
