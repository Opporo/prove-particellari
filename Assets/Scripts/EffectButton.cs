using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EffectButton : MonoBehaviour {

    public EffectsGenerator gen;
    public GenerateEffect myEffect;

	void PlayEffect(GenerateEffect _eff)
    {
        gen.TestEffect(_eff);
    }
}
