using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ProvaCosoSuiRobbiConPivotEDimensioniPensateDaNoi : MonoBehaviour
{
    public Vector3 maxo, mino;
    public GameObject first, second;
    private Camera cam;

    void Start()
    {
        cam = FindObjectOfType<Camera>();
        Sprite sprito = GetComponent<Image>().sprite;
        Debug.Log("Size: " + sprito.bounds.size);
        maxo = GetComponent<Image>().sprite.bounds.max; //questi sono world space
        mino = GetComponent<Image>().sprite.bounds.min;
    }

    void OnDrawGizmos()
    {
        Debug.DrawLine(maxo, mino);
    }

}
