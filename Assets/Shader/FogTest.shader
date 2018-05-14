// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33337,y:32759,varname:node_4795,prsc:2|emission-8164-OUT,alpha-42-OUT;n:type:ShaderForge.SFN_Tex2d,id:4368,x:32650,y:32659,ptovrint:False,ptlb:Pattern1,ptin:_Pattern1,varname:node_4368,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:39ba91724e012544d8edaebf1ceb13a7,ntxv:0,isnm:False|UVIN-696-OUT;n:type:ShaderForge.SFN_Tex2d,id:6305,x:32652,y:32958,ptovrint:False,ptlb:Pattern2,ptin:_Pattern2,varname:node_6305,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c33fa018ad6566441ae68015d80952f7,ntxv:0,isnm:False|UVIN-4190-OUT;n:type:ShaderForge.SFN_TexCoord,id:7663,x:31888,y:32774,varname:node_7663,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector4Property,id:3621,x:31888,y:32942,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_3621,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.05,v2:-0.05,v3:0.05,v4:-0.02;n:type:ShaderForge.SFN_Append,id:3633,x:32113,y:32982,varname:node_3633,prsc:2|A-3621-Z,B-3621-W;n:type:ShaderForge.SFN_Append,id:7820,x:32114,y:32578,varname:node_7820,prsc:2|A-3621-X,B-3621-Y;n:type:ShaderForge.SFN_Time,id:9927,x:32114,y:32807,varname:node_9927,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8900,x:32332,y:32958,varname:node_8900,prsc:2|A-9927-T,B-3633-OUT;n:type:ShaderForge.SFN_Multiply,id:5566,x:32296,y:32588,varname:node_5566,prsc:2|A-7820-OUT,B-9927-T;n:type:ShaderForge.SFN_Add,id:696,x:32487,y:32659,varname:node_696,prsc:2|A-5566-OUT,B-7663-UVOUT;n:type:ShaderForge.SFN_Add,id:4190,x:32486,y:32958,varname:node_4190,prsc:2|A-8900-OUT,B-7663-UVOUT;n:type:ShaderForge.SFN_VertexColor,id:2709,x:32816,y:32784,varname:node_2709,prsc:2;n:type:ShaderForge.SFN_Color,id:5388,x:32816,y:32930,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:947,x:32816,y:33092,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d7bba6c20a7998842bc5f72ce3076c3e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8164,x:33122,y:32780,varname:node_8164,prsc:2|A-2709-RGB,B-5388-RGB,C-1567-OUT;n:type:ShaderForge.SFN_Multiply,id:42,x:33122,y:32938,varname:node_42,prsc:2|A-4368-A,B-6305-A,C-947-A,D-2709-A;n:type:ShaderForge.SFN_ValueProperty,id:1567,x:32816,y:33282,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_1567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;proporder:5388-4368-6305-3621-947-1567;pass:END;sub:END;*/

Shader "Shader Forge/FogTest" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Pattern1 ("Pattern1", 2D) = "white" {}
        _Pattern2 ("Pattern2", 2D) = "white" {}
        _Speed ("Speed", Vector) = (-0.05,-0.05,0.05,-0.02)
        _Alpha ("Alpha", 2D) = "white" {}
        _Intensity ("Intensity", Float ) = 2
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
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Pattern1; uniform float4 _Pattern1_ST;
            uniform sampler2D _Pattern2; uniform float4 _Pattern2_ST;
            uniform float4 _Speed;
            uniform float4 _Color;
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform float _Intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = (i.vertexColor.rgb*_Color.rgb*_Intensity);
                float3 finalColor = emissive;
                float4 node_9927 = _Time + _TimeEditor;
                float2 node_696 = ((float2(_Speed.r,_Speed.g)*node_9927.g)+i.uv0);
                float4 _Pattern1_var = tex2D(_Pattern1,TRANSFORM_TEX(node_696, _Pattern1));
                float2 node_4190 = ((node_9927.g*float2(_Speed.b,_Speed.a))+i.uv0);
                float4 _Pattern2_var = tex2D(_Pattern2,TRANSFORM_TEX(node_4190, _Pattern2));
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                fixed4 finalRGBA = fixed4(finalColor,(_Pattern1_var.a*_Pattern2_var.a*_Alpha_var.a*i.vertexColor.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
