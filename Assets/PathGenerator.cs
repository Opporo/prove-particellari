using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.Security.Cryptography.X509Certificates;

public class PathGenerator : MonoBehaviour {

    public bool update;
    private Transform[] pointsIncludingParent;
    public Vector3[] allPoints;
    public Transform[] selectedPoints; //TODO questo dovrà diventare un enum

    public HotSpot[] hotSpots;

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
        pointsIncludingParent = GetComponentsInChildren<Transform>();

        //remove first transform (parent object) and save positions
        allPoints = new Vector3[pointsIncludingParent.Length - 1];
        hotSpots = new HotSpot[pointsIncludingParent.Length - 1];
        for (int i = 1; i < pointsIncludingParent.Length; i++)
        {
           allPoints[i-1] = pointsIncludingParent[i].position;
           hotSpots[i - 1] = pointsIncludingParent[i].gameObject.GetComponent<HotSpot>();
           hotSpots[i - 1].myPosition = allPoints[i - 1];
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

    #region Path Generator

    //Generate a SimpleCurve path
    public void GeneratePath(HotSpots _pointA, HotSpots _pointB, PathType _pathType, Vector3[] _firstPath,
        float _curvature)
    {
        GenerateInterpolationPoint(GetHotspotTransform(_pointA), GetHotspotTransform(_pointB), _curvature);
        _firstPath = new Vector3[firstPath.Length];
        firstPath.CopyTo(_firstPath, 0);
    }

    //Generate a Helix Path
    public void GeneratePath(HotSpots _pointA, HotSpots _pointB, PathType _pathType, Vector3[] _firstPath, Vector3[] _secondPath,
    float _curvature, int _iterations)
    {
        GenerateInterpolationPoints(GetHotspotTransform(_pointA), GetHotspotTransform(_pointB), _curvature, iterations);

        _firstPath = new Vector3[firstPath.Length];
        firstPath.CopyTo(_firstPath, 0);

        secondPath = new Vector3[secondPath.Length];
        secondPath.CopyTo(_secondPath, 0);
    }
#endregion

    Vector3 GetHotspotTransform(HotSpots _hs)
    {
        return Array.Find(hotSpots, x => x.hotspotName == _hs).myPosition;
    }

    #region Simple Curve

    void DrawCurvePath()
    {
        GenerateInterpolationPoint(selectedPoints[0].position, selectedPoints[1].position, curvature);
    }

    void GenerateInterpolationPoint(Vector3 _pointA, Vector3 _pointB, float _curvature)
    {
        firstPath = new Vector3[3];

        Vector3 posOne = _pointA;
        Vector3 posTwo = _pointB;

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
        GenerateInterpolationPoints(selectedPoints[0].position, selectedPoints[1].position, curvature, iterations);
    }

    private int EvaluateHelixIterations(Vector3 _pointA, Vector3 _pointB)
    {
        //TODO qua devo controllare quanti giri far fare all'elica
        //devo ritornare un int
        return iterations;
    }

    private void GenerateInterpolationPoints(Vector3 _pointA, Vector3 _pointB, float _curvature, int _iterations)
    {
        Vector3 posOne = _pointA;
        Vector3 posTwo = _pointB;

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
    Player_Defense,
    Player_Health,
    Player_Stamina,
    Player_Mana,
    Player_Gold,
    Player_Marker_Poison,
    Player_Marker_Burn,
    Player_Marker_Ice,
    Player_Marker_Invulnerability,
    Player_Exp,
    Player_Card_Back,
    Player_Card_1_Top_Left_Icon,
    Player_Card_1_Top_Right_Icon,
    Player_Card_1_Top_Center_Icon,
    Player_Card_1_Center,
    Player_Card_1_Bottom_Left_Icon,
    Player_Card_1_Bottom_Right_Icon,
    Player_Card_1_Bottom_Center_Icon,
    //per player card 2 e 3
    Enemy_1_Defense,
    Enemy_1_Center
}