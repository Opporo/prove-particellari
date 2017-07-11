using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PathGenerator : MonoBehaviour {

    private Transform[] points;
    public Transform[] allPoints;
    public Transform[] selectedPoints;
    public Transform[] pointsPool;
    private Transform[] pointsToMove;

    public Vector3[] firstPath;
    public Vector3[] secondPath;

    public PathType pathType;

    [Range(-50,50f)]
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
        
        switch (pathType)
        {
                case PathType.SimpleCurve:
                iTween.DrawPath(selectedPoints);
                break;

                case PathType.Helix:
                iTween.DrawPath(EvaluateHelixIterations());
                break;

            default:
                break;
                
        }
    }

    #region Simple Curve
    void GenerateInterpolationPoints(Transform _pointToMove, Transform _pointA, Transform _pointB)
    {
        Vector3 posOne = _pointA.position;
        Vector3 posTwo = _pointB.position;

        //get the direction between the two positions
        Vector3 dir = (posTwo - posOne).normalized;

        //get the direction that crosses our "dir" direction
        Vector3 perpDir = Vector3.Cross(dir, Vector3.forward);

        //get the middle point
        Vector3 midPoint = (posOne + posTwo) / 2f;

        //get the offset point
        Vector3 offsetPoint = midPoint + (perpDir * curvature);

        _pointToMove.position = offsetPoint;
    }
    #endregion

    #region Helix
    private Vector3[] EvaluateHelixIterations()
    {
        //qua devo controllare quanti giri far fare all'elica
        //devo ritornare un int
        iterations = 2;
        pointsToMove = new Transform[iterations * 2];

        //fetch transforms from the pool
        for (int i = 0; i < iterations * 2; i++)
        {
            pointsToMove[i] = pointsPool[i];
        }

        firstPath = GenerateInterpolationPoints(iterations, selectedPoints[0], selectedPoints[2]);
        return firstPath;
    }

    private Vector3[] GenerateInterpolationPoints(int _numberOfIterations, Transform _pointA, Transform _pointB)
    {
        firstPath = new Vector3[_numberOfIterations + 2];
        Vector3 posOne = _pointA.position;
        Vector3 posTwo = _pointB.position;

        //get the direction between the two positions
        Vector3 dir = (posTwo - posOne).normalized;

        //get the direction that crosses our "dir" direction
        Vector3 perpDir = Vector3.Cross(dir, Vector3.forward);

        //get the middle points
        
        Vector3 midPoint = (posOne + posTwo) / 2f;
        Vector3[] midPoints = new Vector3[_numberOfIterations];
        int index = 0;
        for (int i = 0; i < _numberOfIterations * 2; i += 2)
        {
            Vector3 interPoint = ((posOne + posTwo) / _numberOfIterations*2) * (i+1); //TODO il problema è proprio qua
            midPoints[index] = interPoint;
            index++;
        }

        //offet the points for the first path
        float curv = curvature;
        for (int i = 0; i < midPoints.Length; i++)
        {
            Vector2 offsetPoint = midPoints[i] + (perpDir * curv);
            firstPath[i+1] = new Vector3(offsetPoint.x, offsetPoint.y, _pointA.position.z);
            //curv *= -1;
        }

        firstPath[0] = _pointA.position;
        firstPath[3] = _pointB.position;
        return firstPath;
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