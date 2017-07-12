using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EffectsRepo : MonoBehaviour
{
    private Transform myTransform;

    public GameObject[] effects;

    void OnValidate()
    {
        effects = new GameObject[myTransform.childCount];
        myTransform = gameObject.transform;

        for (int i = 0; i < myTransform.childCount; i++)
        {
            effects[i] = myTransform.GetChild(i).gameObject;
        }
    }
}
