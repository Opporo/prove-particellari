// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32851,y:32360,varname:node_4795,prsc:2|emission-2393-OUT,alpha-7326-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32042,y:32310,varname:_MainTex,prsc:2,tex:93f90be5a7524ef4a848814a6cd93ff8,ntxv:0,isnm:False|UVIN-5799-OUT,TEX-7346-TEX;n:type:ShaderForge.SFN_Multiply,id:2393,x:32605,y:32461,varname:node_2393,prsc:2|A-6415-OUT,B-8235-OUT,C-2053-RGB,D-797-RGB,E-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32231,y:32720,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32231,y:32865,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32231,y:33007,varname:node_9248,prsc:2,v1:4;n:type:ShaderForge.SFN_Tex2d,id:3845,x:32032,y:32673,varname:node_3845,prsc:2,tex:93f90be5a7524ef4a848814a6cd93ff8,ntxv:0,isnm:False|UVIN-7274-OUT,TEX-7346-TEX;n:type:ShaderForge.SFN_Multiply,id:7326,x:32605,y:32603,varname:node_7326,prsc:2|A-3845-R,B-6074-G,C-326-A;n:type:ShaderForge.SFN_TexCoord,id:2011,x:31093,y:32464,varname:node_2011,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7346,x:31093,y:32306,ptovrint:False,ptlb:Splat,ptin:_Splat,varname:node_7346,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:93f90be5a7524ef4a848814a6cd93ff8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Desaturate,id:6415,x:32231,y:32584,varname:node_6415,prsc:2|COL-3845-RGB,DES-9238-OUT;n:type:ShaderForge.SFN_Desaturate,id:8235,x:32216,y:32310,varname:node_8235,prsc:2|COL-6074-RGB,DES-9238-OUT;n:type:ShaderForge.SFN_Vector1,id:9238,x:32032,y:32517,varname:node_9238,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:326,x:32231,y:33097,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_326,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b8497f22f89fec54ca6cce50e924a6d5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:2785,x:31093,y:32640,ptovrint:False,ptlb:USpeed1,ptin:_USpeed1,varname:node_2785,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:9734,x:31093,y:32723,ptovrint:False,ptlb:VSpeed1,ptin:_VSpeed1,varname:node_9734,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.05;n:type:ShaderForge.SFN_ValueProperty,id:6452,x:31093,y:32803,ptovrint:False,ptlb:USpeed2,ptin:_USpeed2,varname:node_6452,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.05;n:type:ShaderForge.SFN_ValueProperty,id:6249,x:31093,y:32883,ptovrint:False,ptlb:VSpeed2,ptin:_VSpeed2,varname:node_6249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_Time,id:2121,x:31471,y:32529,varname:node_2121,prsc:2;n:type:ShaderForge.SFN_Append,id:7428,x:31324,y:32640,varname:node_7428,prsc:2|A-2785-OUT,B-9734-OUT;n:type:ShaderForge.SFN_Multiply,id:6422,x:31701,y:32369,varname:node_6422,prsc:2|A-7428-OUT,B-2121-T;n:type:ShaderForge.SFN_Add,id:5799,x:31869,y:32310,varname:node_5799,prsc:2|A-2011-UVOUT,B-6422-OUT;n:type:ShaderForge.SFN_Append,id:5702,x:31324,y:32803,varname:node_5702,prsc:2|A-6452-OUT,B-6249-OUT;n:type:ShaderForge.SFN_Multiply,id:1815,x:31688,y:32701,varname:node_1815,prsc:2|A-5702-OUT,B-2121-T;n:type:ShaderForge.SFN_Add,id:7274,x:31864,y:32673,varname:node_7274,prsc:2|A-2011-UVOUT,B-1815-OUT;proporder:797-7346-326-2785-9734-6452-6249;pass:END;sub:END;*/

Shader "Shader Forge/Fog" {
    Properties {
        _TintColor ("Color", Color) = (1,1,1,1)
        _Splat ("Splat", 2D) = "white" {}
        _Alpha ("Alpha", 2D) = "white" {}
        _USpeed1 ("USpeed1", Float ) = 0.1
        _VSpeed1 ("VSpeed1", Float ) = -0.05
        _USpeed2 ("USpeed2", Float ) = -0.05
        _VSpeed2 ("VSpeed2", Float ) = 0.05
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
            uniform float4 _TintColor;
            uniform sampler2D _Splat; uniform float4 _Splat_ST;
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform float _USpeed1;
            uniform float _VSpeed1;
            uniform float _USpeed2;
            uniform float _VSpeed2;
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
                float4 node_2121 = _Time + _TimeEditor;
                float2 node_7274 = (i.uv0+(float2(_USpeed2,_VSpeed2)*node_2121.g));
                float4 node_3845 = tex2D(_Splat,TRANSFORM_TEX(node_7274, _Splat));
                float node_9238 = 1.0;
                float2 node_5799 = (i.uv0+(float2(_USpeed1,_VSpeed1)*node_2121.g));
                float4 _MainTex = tex2D(_Splat,TRANSFORM_TEX(node_5799, _Splat));
                float3 emissive = (lerp(node_3845.rgb,dot(node_3845.rgb,float3(0.3,0.59,0.11)),node_9238)*lerp(_MainTex.rgb,dot(_MainTex.rgb,float3(0.3,0.59,0.11)),node_9238)*i.vertexColor.rgb*_TintColor.rgb*4.0);
                float3 finalColor = emissive;
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                fixed4 finalRGBA = fixed4(finalColor,(node_3845.r*_MainTex.g*_Alpha_var.a));
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0.5,0.5,0.5,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
