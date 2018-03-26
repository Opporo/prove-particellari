// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34006,y:32615,varname:node_2865,prsc:2|normal-8388-RGB,emission-391-OUT,custl-9960-OUT,alpha-5311-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:32792,y:32285,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_FragmentPosition,id:2638,x:31872,y:33005,varname:node_2638,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:4606,x:31872,y:33154,varname:node_4606,prsc:2;n:type:ShaderForge.SFN_Distance,id:7114,x:32098,y:33066,varname:node_7114,prsc:2|A-2638-XYZ,B-4606-XYZ;n:type:ShaderForge.SFN_Divide,id:2153,x:32308,y:33153,varname:node_2153,prsc:2|A-7114-OUT,B-2147-OUT;n:type:ShaderForge.SFN_Power,id:7337,x:32512,y:33153,varname:node_7337,prsc:2|VAL-2153-OUT,EXP-8608-OUT;n:type:ShaderForge.SFN_Lerp,id:5311,x:33150,y:32937,varname:node_5311,prsc:2|A-6305-OUT,B-8111-OUT,T-4650-OUT;n:type:ShaderForge.SFN_Clamp01,id:4650,x:32689,y:33153,varname:node_4650,prsc:2|IN-7337-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6305,x:32792,y:32934,ptovrint:False,ptlb:State1,ptin:_State1,varname:_State1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8111,x:32792,y:33060,ptovrint:False,ptlb:State2,ptin:_State2,varname:_State2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:6805,x:32910,y:33215,ptovrint:False,ptlb:Glow Color,ptin:_GlowColor,varname:_GlowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2647059,c2:0.9695739,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:5787,x:33545,y:32815,varname:node_5787,prsc:2|A-6805-RGB,B-2931-OUT,T-5311-OUT;n:type:ShaderForge.SFN_Vector4,id:2931,x:32910,y:33404,varname:node_2931,prsc:2,v1:0,v2:0,v3:0,v4:1;n:type:ShaderForge.SFN_NormalVector,id:8920,x:32005,y:32684,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:8406,x:32005,y:32830,varname:node_8406,prsc:2;n:type:ShaderForge.SFN_Dot,id:6725,x:32248,y:32748,varname:node_6725,prsc:2,dt:0|A-8920-OUT,B-8406-OUT;n:type:ShaderForge.SFN_Multiply,id:1681,x:32433,y:32748,varname:node_1681,prsc:2|A-6725-OUT,B-7588-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:7588,x:32248,y:32897,varname:node_7588,prsc:2;n:type:ShaderForge.SFN_Append,id:6882,x:32689,y:32748,varname:node_6882,prsc:2|A-1681-OUT,B-1681-OUT;n:type:ShaderForge.SFN_Tex2d,id:8211,x:32978,y:32642,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:_Ramp,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:181ec605fb3b4314bbee61db18ab41c0,ntxv:0,isnm:False|UVIN-6882-OUT;n:type:ShaderForge.SFN_LightColor,id:6482,x:32978,y:32840,varname:node_6482,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9960,x:33189,y:32749,varname:node_9960,prsc:2|A-8211-RGB,B-6482-RGB;n:type:ShaderForge.SFN_Multiply,id:1014,x:33189,y:32594,varname:node_1014,prsc:2|A-7736-RGB,B-5806-RGB;n:type:ShaderForge.SFN_Color,id:5806,x:32792,y:32510,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8388,x:33189,y:32379,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ValueProperty,id:2147,x:32098,y:33219,ptovrint:False,ptlb:Distance,ptin:_Distance,varname:_Distance,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4.4;n:type:ShaderForge.SFN_ValueProperty,id:8608,x:32308,y:33301,ptovrint:False,ptlb:Falloff,ptin:_Falloff,varname:_Falloff,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:80;n:type:ShaderForge.SFN_Add,id:391,x:33800,y:32715,varname:node_391,prsc:2|A-1014-OUT,B-5787-OUT;proporder:7736-5806-6305-8111-6805-8211-8388-2147-8608;pass:END;sub:END;*/

Shader "Shader Forge/Proximity" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _State1 ("State1", Float ) = 0
        _State2 ("State2", Float ) = 1
        _GlowColor ("Glow Color", Color) = (0.2647059,0.9695739,1,1)
        _Ramp ("Ramp", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Distance ("Distance", Float ) = 4.4
        _Falloff ("Falloff", Float ) = 80
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _State1;
            uniform float _State2;
            uniform float4 _GlowColor;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float4 _Color;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Distance;
            uniform float _Falloff;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_5311 = lerp(_State1,_State2,saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_Distance),_Falloff)));
                float3 emissive = ((_MainTex_var.rgb*_Color.rgb)+lerp(float4(_GlowColor.rgb,0.0),float4(0,0,0,1),node_5311)).rgb;
                float node_1681 = (dot(normalDirection,lightDirection)*attenuation);
                float2 node_6882 = float2(node_1681,node_1681);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_6882, _Ramp));
                float3 finalColor = emissive + (_Ramp_var.rgb*_LightColor0.rgb);
                fixed4 finalRGBA = fixed4(finalColor,node_5311);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _State1;
            uniform float _State2;
            uniform float4 _GlowColor;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float4 _Color;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Distance;
            uniform float _Falloff;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_1681 = (dot(normalDirection,lightDirection)*attenuation);
                float2 node_6882 = float2(node_1681,node_1681);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_6882, _Ramp));
                float3 finalColor = (_Ramp_var.rgb*_LightColor0.rgb);
                float node_5311 = lerp(_State1,_State2,saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_Distance),_Falloff)));
                fixed4 finalRGBA = fixed4(finalColor * node_5311,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
