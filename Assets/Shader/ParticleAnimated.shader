// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33295,y:32562,varname:node_4795,prsc:2|emission-2688-OUT,alpha-2393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32236,y:32482,ptovrint:False,ptlb:Noise 1,ptin:_Noise1,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:58b6a222fb1b40a49a084f29f3b4c8f3,ntxv:0,isnm:False|UVIN-4724-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32807,y:32825,varname:node_2393,prsc:2|A-3924-OUT,B-2053-A;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32451,y:32778,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32451,y:32982,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9610547,c2:1,c3:0.8235294,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4135,x:32235,y:32676,ptovrint:False,ptlb:Noise 2,ptin:_Noise2,varname:node_4135,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:193d7df905a659947b1d450d6d05deb6,ntxv:0,isnm:False|UVIN-227-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9294,x:32451,y:32606,varname:node_9294,prsc:2|A-6074-A,B-4135-A;n:type:ShaderForge.SFN_Tex2d,id:9188,x:32492,y:32409,ptovrint:False,ptlb:Particle Alfa,ptin:_ParticleAlfa,varname:node_9188,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0f7c3fd235bd7b441af4f94d97921f59,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3924,x:32615,y:32618,varname:node_3924,prsc:2|A-9188-A,B-9294-OUT;n:type:ShaderForge.SFN_Panner,id:227,x:32054,y:32683,varname:node_227,prsc:2,spu:0.1,spv:0|UVIN-3310-UVOUT;n:type:ShaderForge.SFN_Panner,id:4724,x:32054,y:32482,varname:node_4724,prsc:2,spu:-0.05,spv:0|UVIN-427-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:427,x:31855,y:32482,varname:node_427,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_TexCoord,id:3310,x:31855,y:32683,varname:node_3310,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:2688,x:32945,y:32541,varname:node_2688,prsc:2|A-2053-RGB,B-797-RGB,C-2210-OUT,D-2393-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2210,x:32451,y:33166,ptovrint:False,ptlb:Additive factor,ptin:_Additivefactor,varname:node_2210,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;proporder:6074-797-4135-9188-2210;pass:END;sub:END;*/

Shader "Shader Forge/ParticleAnimated" {
    Properties {
        _Noise1 ("Noise 1", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.9610547,1,0.8235294,1)
        _Noise2 ("Noise 2", 2D) = "white" {}
        _ParticleAlfa ("Particle Alfa", 2D) = "white" {}
        _Additivefactor ("Additive factor", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Noise1; uniform float4 _Noise1_ST;
            uniform float4 _TintColor;
            uniform sampler2D _Noise2; uniform float4 _Noise2_ST;
            uniform sampler2D _ParticleAlfa; uniform float4 _ParticleAlfa_ST;
            uniform float _Additivefactor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _ParticleAlfa_var = tex2D(_ParticleAlfa,TRANSFORM_TEX(i.uv0, _ParticleAlfa));
                float4 node_5820 = _Time + _TimeEditor;
                float2 node_4724 = (i.uv0+node_5820.g*float2(-0.05,0));
                float4 _Noise1_var = tex2D(_Noise1,TRANSFORM_TEX(node_4724, _Noise1));
                float2 node_227 = (i.uv0+node_5820.g*float2(0.1,0));
                float4 _Noise2_var = tex2D(_Noise2,TRANSFORM_TEX(node_227, _Noise2));
                float node_2393 = ((_ParticleAlfa_var.a*(_Noise1_var.a*_Noise2_var.a))*i.vertexColor.a);
                float3 emissive = (i.vertexColor.rgb*_TintColor.rgb*_Additivefactor*node_2393);
                float3 finalColor = emissive;
                return fixed4(finalColor,node_2393);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
