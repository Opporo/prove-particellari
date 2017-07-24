// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:1,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:0,trmd:0,grmd:0,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33709,y:32814,varname:node_4013,prsc:2|emission-2497-OUT,alpha-5964-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:33271,y:32759,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2352941,c2:0.5569979,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:191,x:33014,y:32957,ptovrint:False,ptlb:Pattern1,ptin:_Pattern1,varname:_Pattern1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ca96246f3c3712449adb39e633701991,ntxv:0,isnm:False|UVIN-1554-OUT;n:type:ShaderForge.SFN_Tex2d,id:5387,x:33010,y:33353,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:_Alpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0b53e2440f5f0e54788a6ecc798a3245,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5964,x:33271,y:33127,cmnt:Multiply all alphas,varname:node_5964,prsc:2|A-9830-A,B-191-A,C-7209-A,D-5387-A;n:type:ShaderForge.SFN_Tex2d,id:7209,x:33010,y:33155,ptovrint:False,ptlb:Pattern2,ptin:_Pattern2,varname:_Pattern2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1963-OUT;n:type:ShaderForge.SFN_Multiply,id:2497,x:33492,y:32914,cmnt:Decide final color,varname:node_2497,prsc:2|A-1304-RGB,B-5964-OUT,C-645-OUT,D-9830-A;n:type:ShaderForge.SFN_ValueProperty,id:645,x:33271,y:32948,ptovrint:False,ptlb:Additive Factor,ptin:_AdditiveFactor,varname:_AdditiveFactor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_VertexColor,id:9830,x:33014,y:32801,varname:node_9830,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:8356,x:32540,y:32787,varname:node_8356,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:1554,x:32820,y:32957,cmnt:Panning UVs,varname:node_1554,prsc:2|A-8356-UVOUT,B-2636-OUT;n:type:ShaderForge.SFN_Vector4Property,id:3528,x:31958,y:33076,ptovrint:False,ptlb:Offset Speed,ptin:_OffsetSpeed,cmnt:U1 V1 U2 V2,varname:_OffsetSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:-0.05,v3:0,v4:-0.02;n:type:ShaderForge.SFN_Time,id:9032,x:32302,y:32823,varname:node_9032,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2636,x:32540,y:32936,varname:node_2636,prsc:2|A-9032-T,B-9651-OUT;n:type:ShaderForge.SFN_Append,id:9651,x:32302,y:32957,varname:node_9651,prsc:2|A-3528-X,B-3528-Y;n:type:ShaderForge.SFN_Append,id:3150,x:32302,y:33323,varname:node_3150,prsc:2|A-3528-Z,B-3528-W;n:type:ShaderForge.SFN_Time,id:3532,x:32302,y:33192,varname:node_3532,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:7470,x:32540,y:33123,varname:node_7470,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6910,x:32540,y:33302,varname:node_6910,prsc:2|A-3532-T,B-3150-OUT;n:type:ShaderForge.SFN_Add,id:1963,x:32820,y:33155,cmnt:Panning UVs,varname:node_1963,prsc:2|A-7470-UVOUT,B-6910-OUT;proporder:191-7209-5387-3528-1304-645;pass:END;sub:END;*/

Shader "Shader Forge/ParticleAnimated" {
    Properties {
        _Pattern1 ("Pattern1", 2D) = "white" {}
        _Pattern2 ("Pattern2", 2D) = "white" {}
        _Alpha ("Alpha", 2D) = "white" {}
        _OffsetSpeed ("Offset Speed", Vector) = (0,-0.05,0,-0.02)
        _Color ("Color", Color) = (0.2352941,0.5569979,1,1)
        _AdditiveFactor ("Additive Factor", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "PreviewType"="Plane"
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
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _Pattern1; uniform float4 _Pattern1_ST;
            uniform sampler2D _Alpha; uniform float4 _Alpha_ST;
            uniform sampler2D _Pattern2; uniform float4 _Pattern2_ST;
            uniform float _AdditiveFactor;
            uniform float4 _OffsetSpeed;
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
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_9032 = _Time + _TimeEditor;
                float2 node_1554 = (i.uv0+(node_9032.g*float2(_OffsetSpeed.r,_OffsetSpeed.g))); // Panning UVs
                float4 _Pattern1_var = tex2D(_Pattern1,TRANSFORM_TEX(node_1554, _Pattern1));
                float4 node_3532 = _Time + _TimeEditor;
                float2 node_1963 = (i.uv0+(node_3532.g*float2(_OffsetSpeed.b,_OffsetSpeed.a))); // Panning UVs
                float4 _Pattern2_var = tex2D(_Pattern2,TRANSFORM_TEX(node_1963, _Pattern2));
                float4 _Alpha_var = tex2D(_Alpha,TRANSFORM_TEX(i.uv0, _Alpha));
                float node_5964 = (i.vertexColor.a*_Pattern1_var.a*_Pattern2_var.a*_Alpha_var.a); // Multiply all alphas
                float3 emissive = (_Color.rgb*node_5964*_AdditiveFactor*i.vertexColor.a);
                float3 finalColor = emissive;
                return fixed4(finalColor,node_5964);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
