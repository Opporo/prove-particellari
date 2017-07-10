using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PathGenerator : MonoBehaviour {

    private Transform[] points;
    public Transform[] allPoints;
    public Transform[] selectedPoints;
    public Transform[] pointsPool;

    public PathType pathType;

    [Range(-1,1)]
    public float curvature;

    [Range(1, 4)]
    public int iterations;

    void OnValidate()
    {
        //fetch all transforms
        points = GetComponentsInChildren<Transform>();

        //remove first transform (parent object)
        allPoints = new Transform[points.Length - 1];
        for (int i = 1; i < points.Length; i++)
        {
            allPoints[i-1] = points[i];
        }

        CheckPointDebug();
    }

    void OnDrawGizmos()
    {
        iTween.DrawPath(selectedPoints);
    }

    #region Simple Curve
    void GenerateInterpolationPoints(Transform _pointToMove, Transform _pointA, Transform _pointB)
    {
        _pointToMove.position = new Vector3((_pointB.position.x - (_pointB.position.x - _pointA.position.x) / (2f + curvature)), (_pointB.position.y - (_pointB.position.y - _pointA.position.y) / (2f - curvature)), _pointA.position.z);
    }
    #endregion

    #region Helix
    void EvaluateHelixIterations()
    {
        //qua devo controllare quanti giri far fare all'elica
        //devo ritornare un int
        iterations = 2;
        GenerateInterpolationPoints(pointsPool, iterations, selectedPoints[0], selectedPoints[2]);
    }

    void GenerateInterpolationPoints(Transform[] _pointsToMove, int _numberOfIterations, Transform _pointA, Transform _pointB)
    {

    }
    #endregion

    void CheckPointDebug()
    {
        switch (pathType)
        {
            case PathType.SimpleCurve:
                GenerateInterpolationPoints(selectedPoints[1], selectedPoints[0], selectedPoints[2]);
                break;

            case PathType.Helix:
                //do something
                break;

            default:
                break;
        }
        
    }

}

public enum PathType
{
    SimpleCurve,
    Helix,
    Curl
}