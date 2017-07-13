using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EffectsRepo : MonoBehaviour
{
    public bool update;
    private Transform myTransform;

    public GameObject[] effects;

    void OnValidate()
    {
        myTransform = gameObject.transform;
        effects = new GameObject[myTransform.childCount];
        
        for (int i = 0; i < myTransform.childCount; i++)
        {
            effects[i] = myTransform.GetChild(i).gameObject;
        }
    }
}
