// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:0,trmd:1,grmd:0,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33675,y:32816,varname:node_4013,prsc:2|diff-1304-RGB,emission-1304-RGB,alpha-5964-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32755,y:32770,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9700812,c3:0.5661765,c4:1;n:type:ShaderForge.SFN_Tex2d,id:191,x:32776,y:33000,ptovrint:False,ptlb:Pattern1,ptin:_Pattern1,varname:node_191,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:193d7df905a659947b1d450d6d05deb6,ntxv:0,isnm:False|UVIN-4511-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8326,x:32416,y:33036,varname:node_8326,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4511,x:32600,y:33036,varname:node_4511,prsc:2,spu:0.1,spv:0|UVIN-8326-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5387,x:32754,y:33428,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_5387,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0f7c3fd235bd7b441af4f94d97921f59,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5964,x:33230,y:33222,varname:node_5964,prsc:2|A-4929-OUT,B-5387-A;n:type:ShaderForge.SFN_Tex2d,id:7209,x:32754,y:33219,ptovrint:False,ptlb:Pattern2,ptin:_Pattern2,varname:node_7209,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:58b6a222fb1b40a49a084f29f3b4c8f3,ntxv:0,isnm:False|UVIN-967-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4929,x:32969,y:33171,varname:node_4929,prsc:2|A-191-A,B-7209-A;n:type:ShaderForge.SFN_TexCoord,id:1800,x:32416,y:33219,varname:node_1800,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:967,x:32581,y:33219,varname:node_967,prsc:2,spu:-0.1,spv:0|UVIN-1800-UVOUT;proporder:1304-191-5387-7209;pass:END;sub:END;*/

Shader "Shader Forge/HorizontalAnimated" {
    Properties {
        _Color ("Color", Color) = (1,0.9700812,0.5661765,1)
        _Pattern1 ("Pattern1", 2D) = "white" {}
        _Alpha ("Alpha", 2D) = "white" {}
        _Pattern2 ("Pattern2", 2D) = "white" {}
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
            Blend SrcAlpha One
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
            uniform float4 _Color;
            uniform sampler2D _Pattern1; uniform float4 _Pattern1_ST;
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform sampler2D _Pattern2; uniform float4 _Pattern2_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                float4 node_8039 = _Time + _TimeEditor;
                float2 node_4511 = (i.uv0+node_8039.g*float2(0.1,0));
                float4 _Pattern1_var = tex2D(_Pattern1,TRANSFORM_TEX(node_4511, _Pattern1));
                float2 node_967 = (i.uv0+node_8039.g*float2(-0.1,0));
                float4 _Pattern2_var = tex2D(_Pattern2,TRANSFORM_TEX(node_967, _Pattern2));
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                return fixed4(finalColor,((_Pattern1_var.a*_Pattern2_var.a)*_Alpha_var.a));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
