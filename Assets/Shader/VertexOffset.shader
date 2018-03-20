// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33680,y:32509,varname:node_4013,prsc:2|diff-9193-OUT,emission-9193-OUT,voffset-9210-OUT;n:type:ShaderForge.SFN_Tex2d,id:8873,x:32673,y:32558,ptovrint:False,ptlb:Pattern1,ptin:_Pattern1,varname:node_8873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:True,tagnrm:False,tex:c33fa018ad6566441ae68015d80952f7,ntxv:0,isnm:False|UVIN-530-OUT;n:type:ShaderForge.SFN_Multiply,id:9210,x:33251,y:32880,varname:node_9210,prsc:2|A-1915-OUT,B-4242-OUT;n:type:ShaderForge.SFN_Slider,id:4242,x:32869,y:32973,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_4242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:1.372467,max:5;n:type:ShaderForge.SFN_TexCoord,id:2994,x:32271,y:32648,varname:node_2994,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_NormalVector,id:4670,x:32673,y:32941,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:1915,x:32976,y:32776,varname:node_1915,prsc:2|A-8873-A,B-1521-A,C-4670-OUT;n:type:ShaderForge.SFN_Multiply,id:6021,x:32958,y:32636,varname:node_6021,prsc:2|A-8873-RGB,B-1521-RGB;n:type:ShaderForge.SFN_Tex2d,id:1521,x:32673,y:32762,ptovrint:False,ptlb:Pattern2,ptin:_Pattern2,varname:node_1521,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:True,tagnrm:False,tex:39ba91724e012544d8edaebf1ceb13a7,ntxv:0,isnm:False|UVIN-8980-OUT;n:type:ShaderForge.SFN_Slider,id:8962,x:31915,y:32817,ptovrint:False,ptlb:Speed1,ptin:_Speed1,varname:node_8962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:0.1752137,max:0.5;n:type:ShaderForge.SFN_Time,id:99,x:32072,y:32658,varname:node_99,prsc:2;n:type:ShaderForge.SFN_Add,id:8980,x:32487,y:32762,varname:node_8980,prsc:2|A-2994-UVOUT,B-7370-OUT;n:type:ShaderForge.SFN_Multiply,id:7370,x:32271,y:32812,varname:node_7370,prsc:2|A-99-T,B-8962-OUT;n:type:ShaderForge.SFN_Slider,id:9595,x:31915,y:32563,ptovrint:False,ptlb:Speed2,ptin:_Speed2,varname:node_9595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:0.1206775,max:0.5;n:type:ShaderForge.SFN_Multiply,id:9191,x:32271,y:32516,varname:node_9191,prsc:2|A-9595-OUT,B-99-T;n:type:ShaderForge.SFN_Add,id:530,x:32484,y:32558,varname:node_530,prsc:2|A-9191-OUT,B-2994-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8667,x:33439,y:32750,varname:node_8667,prsc:2|A-8873-A,B-1521-A;n:type:ShaderForge.SFN_Color,id:594,x:32910,y:31921,ptovrint:False,ptlb:node_594,ptin:_node_594,varname:node_594,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2132353,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:512,x:32910,y:32241,ptovrint:False,ptlb:node_512,ptin:_node_512,varname:node_512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9951319,c2:1,c3:0.6470588,c4:1;n:type:ShaderForge.SFN_Lerp,id:9193,x:33464,y:32436,varname:node_9193,prsc:2|A-594-RGB,B-512-RGB,T-6021-OUT;proporder:8962-1521-9595-4242-8873-4151-594-512;pass:END;sub:END;*/

Shader "Shader Forge/VertexOffset" {
    Properties {
        _Speed1 ("Speed1", Range(-0.5, 0.5)) = 0.1752137
        [NoScaleOffset]_Pattern2 ("Pattern2", 2D) = "white" {}
        _Speed2 ("Speed2", Range(-0.5, 0.5)) = 0.1206775
        _Offset ("Offset", Range(-5, 5)) = 1.372467
        [NoScaleOffset]_Pattern1 ("Pattern1", 2D) = "white" {}
        _node_4151 ("node_4151", 2D) = "white" {}
        _node_594 ("node_594", Color) = (0.2132353,0,0,1)
        _node_512 ("node_512", Color) = (0.9951319,1,0.6470588,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Pattern1;
            uniform float _Offset;
            uniform sampler2D _Pattern2;
            uniform float _Speed1;
            uniform float _Speed2;
            uniform float4 _node_594;
            uniform float4 _node_512;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_99 = _Time + _TimeEditor;
                float2 node_530 = ((_Speed2*node_99.g)+o.uv0);
                float4 _Pattern1_var = tex2Dlod(_Pattern1,float4(node_530,0.0,0));
                float2 node_8980 = (o.uv0+(node_99.g*_Speed1));
                float4 _Pattern2_var = tex2Dlod(_Pattern2,float4(node_8980,0.0,0));
                v.vertex.xyz += ((_Pattern1_var.a*_Pattern2_var.a*v.normal)*_Offset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_99 = _Time + _TimeEditor;
                float2 node_530 = ((_Speed2*node_99.g)+i.uv0);
                float4 _Pattern1_var = tex2D(_Pattern1,node_530);
                float2 node_8980 = (i.uv0+(node_99.g*_Speed1));
                float4 _Pattern2_var = tex2D(_Pattern2,node_8980);
                float3 node_6021 = (_Pattern1_var.rgb*_Pattern2_var.rgb);
                float3 node_9193 = lerp(_node_594.rgb,_node_512.rgb,node_6021);
                float3 diffuseColor = node_9193;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_9193;
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Pattern1;
            uniform float _Offset;
            uniform sampler2D _Pattern2;
            uniform float _Speed1;
            uniform float _Speed2;
            uniform float4 _node_594;
            uniform float4 _node_512;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_99 = _Time + _TimeEditor;
                float2 node_530 = ((_Speed2*node_99.g)+o.uv0);
                float4 _Pattern1_var = tex2Dlod(_Pattern1,float4(node_530,0.0,0));
                float2 node_8980 = (o.uv0+(node_99.g*_Speed1));
                float4 _Pattern2_var = tex2Dlod(_Pattern2,float4(node_8980,0.0,0));
                v.vertex.xyz += ((_Pattern1_var.a*_Pattern2_var.a*v.normal)*_Offset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_99 = _Time + _TimeEditor;
                float2 node_530 = ((_Speed2*node_99.g)+i.uv0);
                float4 _Pattern1_var = tex2D(_Pattern1,node_530);
                float2 node_8980 = (i.uv0+(node_99.g*_Speed1));
                float4 _Pattern2_var = tex2D(_Pattern2,node_8980);
                float3 node_6021 = (_Pattern1_var.rgb*_Pattern2_var.rgb);
                float3 node_9193 = lerp(_node_594.rgb,_node_512.rgb,node_6021);
                float3 diffuseColor = node_9193;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Pattern1;
            uniform float _Offset;
            uniform sampler2D _Pattern2;
            uniform float _Speed1;
            uniform float _Speed2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_99 = _Time + _TimeEditor;
                float2 node_530 = ((_Speed2*node_99.g)+o.uv0);
                float4 _Pattern1_var = tex2Dlod(_Pattern1,float4(node_530,0.0,0));
                float2 node_8980 = (o.uv0+(node_99.g*_Speed1));
                float4 _Pattern2_var = tex2Dlod(_Pattern2,float4(node_8980,0.0,0));
                v.vertex.xyz += ((_Pattern1_var.a*_Pattern2_var.a*v.normal)*_Offset);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
