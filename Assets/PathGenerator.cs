using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PathGenerator : MonoBehaviour {

    private Transform[] points;
    public Transform[] allPoints;
    public Transform[] selectedPoints; //TODO questo dovrà diventare un enum

    public PathType pathType;

    [Range(-50,50f)]
    public float curvature;

    [Range(1,4)]
    public int iterations;

    [SerializeField]
    private Vector3[] firstPath;
    [SerializeField]
    private Vector3[] secondPath;

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
    }

    void OnDrawGizmos()
    {
        
        switch (pathType)
        {
                case PathType.SimpleCurve:
                DrawCurvePath();
                iTween.DrawPath(firstPath);
                break;

                case PathType.Helix:
                DrawHelixPath();
                iTween.DrawPath(firstPath);
                iTween.DrawPath(secondPath);
                break;

            default:
                break;
                
        }
    }

    public void GeneratePath(Transform _pointA, Transform _pointB, PathType _pathType, Vector3[] _firstPath, Vector3[] _secondPath = null, float _curvature = 5.0f, int _iterations = 2)
    {
        if (_pathType == PathType.SimpleCurve)
        {
            GenerateInterpolationPoint(_pointA, _pointB, _curvature);
            _firstPath = firstPath;
        }
        else if (_pathType == PathType.Helix)
        {
            GenerateInterpolationPoints(_pointA, _pointB, _curvature, _iterations);
            _firstPath = firstPath;
            _secondPath = secondPath;
        }
    }

    #region Simple Curve

    void DrawCurvePath()
    {
        GenerateInterpolationPoint(selectedPoints[0], selectedPoints[1], curvature);
    }

    void GenerateInterpolationPoint(Transform _pointA, Transform _pointB, float _curvature)
    {
        firstPath = new Vector3[3];

        Vector3 posOne = _pointA.position;
        Vector3 posTwo = _pointB.position;

        //get the direction between the two positions
        Vector3 dir = (posTwo - posOne).normalized;

        //get the direction that crosses our "dir" direction
        Vector3 perpDir = Vector3.Cross(dir, Vector3.forward);

        //get the middle point
        Vector3 midPoint = (posOne + posTwo) / 2f;

        //get the offset point
        Vector3 offsetPoint = midPoint + (perpDir * _curvature);

        firstPath[0] = posOne;
        firstPath[1] = offsetPoint;
        firstPath[2] = posTwo;
    }
    #endregion

    #region Helix

    private void DrawHelixPath()
    {
        GenerateInterpolationPoints(selectedPoints[0], selectedPoints[1], curvature, iterations);
    }

    private int EvaluateHelixIterations(Vector3 _pointA, Vector3 _pointB)
    {
        //TODO qua devo controllare quanti giri far fare all'elica
        //devo ritornare un int
        return iterations;
    }

    private void GenerateInterpolationPoints(Transform _pointA, Transform _pointB, float _curvature, int _iterations)
    {
        Vector3 posOne = _pointA.position;
        Vector3 posTwo = _pointB.position;

        //int numberOfIterations = EvaluateHelixIterations(posOne, posTwo);
        int numberOfIterations = _iterations;

        Vector3[] midPoints = new Vector3[numberOfIterations];

        firstPath = new Vector3[midPoints.Length + 2];
        secondPath = new Vector3[midPoints.Length + 2];
        
        //get the direction between the two positions
        Vector3 dir = (posTwo - posOne).normalized;

        //get the direction that crosses our "dir" direction
        Vector3 perpDir = Vector3.Cross(dir, Vector3.forward);

        //GET THE MIDDLE POINTS
        //calculate distance between start and end
        float xDist = Mathf.Abs(posOne.x - posTwo.x);
        float yDist = Mathf.Abs(posOne.y - posTwo.y);

        int index = 0;
        for (int i = 0; i < numberOfIterations * 2; i += 2)
        {
            float newPosX = (posOne.x + (xDist / (numberOfIterations * 2)) * (i + 1));
            float newPosY = (posOne.y + (yDist / (numberOfIterations * 2)) * (i + 1));

            midPoints[index] = new Vector3(newPosX, newPosY, posOne.z); //TODO qua posso impostare l'offset sulla z

            index++;
        }

        //offset the points for the first path
        float curv = _curvature;
        for (int i = 0; i < midPoints.Length; i++)
        {
            Vector3 offsetPoint = midPoints[i] + (perpDir * curv);
            firstPath[i + 1] = offsetPoint;
            curv *= -1;
        }

        //offset the points for the second path
        curv = -_curvature;
        for (int i = 0; i < midPoints.Length; i++)
        {
            Vector3 offsetPoint = midPoints[i] + (perpDir * curv);
            secondPath[i + 1] = offsetPoint;
            curv *= -1;
        }

        firstPath[0] = posOne;
        firstPath[midPoints.Length + 1] = posTwo;

        secondPath[0] = posOne;
        secondPath[midPoints.Length + 1] = posTwo;
    }
    #endregion
}

public enum PathType
{
    SimpleCurve,
    Helix,
    Curl
}

public enum HotSpots
{
    
}