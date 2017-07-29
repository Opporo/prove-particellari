using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EffectButton : MonoBehaviour {

    public EffectsGenerator gen;
    public Animator anim;
    public GenerateEffect[] myEffect;
    public GameObject target;
    public GameObject[] targetTwo;
    
    void Start()
    {
        gen = FindObjectOfType<EffectsGenerator>();
    }

	public void PlayEffect()
    {
        gen.TestEffect(myEffect);
    }

    public void ChangeStatus(string animName)
    {
        anim.Play(animName);
    }

    public void Dissolve()
    {
        StartCoroutine(DissolveCO());
    }

    public void Appear()
    {
        StartCoroutine(AppearCO());
    }
    public IEnumerator DissolveCO()
    {
        float amount = 1.0f;
        while (amount > 0)
        {
            target.GetComponent<Image>().material.SetFloat("_ClipAmount", amount);
            amount -= 0.02f;
            yield return null;
        }
        target.SetActive(false);
        yield return new WaitForSeconds(1.0f);
        target.GetComponent<Image>().material.SetFloat("_ClipAmount", 1);
        target.SetActive(true);
    }

    public IEnumerator AppearCO()
    {
        float amount = 0.0f;
        while (amount < 1.0f)
        {
            target.GetComponent<Image>().material.SetFloat("_ClipAmount", amount);
            amount += 0.02f;
            yield return null;
        }
        foreach (GameObject tar in targetTwo)
        {
            tar.SetActive(true);
        }
        
        yield return new WaitForSeconds(1.0f);

        target.GetComponent<Image>().material.SetFloat("_ClipAmount", 0);

        foreach (GameObject tar in targetTwo)
        {
            tar.SetActive(false);
        }
    }
}
