// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ProvaAmplify"
{
	Properties
	{
		[HideInInspector]_SpecColor("SpecularColor",Color)=(1,1,1,1)
		_TextureSample0("Texture Sample 0", 2D) = "white" {}
		_UVSpeed("UV Speed", Vector) = (0,0,0,0)
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Geometry+0" }
		Cull Back
		Blend SrcAlpha OneMinusSrcAlpha
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf BlinnPhong keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _TextureSample0;
		uniform float2 _UVSpeed;

		void surf( Input i , inout SurfaceOutput o )
		{
			float2 uv_TexCoord8 = i.uv_texcoord * float2( 1,1 ) + float2( 0,0 );
			o.Albedo = tex2D( _TextureSample0, ( ( _Time.y * _UVSpeed ) + uv_TexCoord8 ) ).rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=13801
2567;29;2546;1364;1366.644;890.1086;1;True;True
Node;AmplifyShaderEditor.Vector2Node;5;-917,-180;Float;False;Property;_UVSpeed;UV Speed;2;0;0,0;0;3;FLOAT2;FLOAT;FLOAT
Node;AmplifyShaderEditor.SimpleTimeNode;4;-928,-270;Float;False;1;0;FLOAT;1.0;False;1;FLOAT
Node;AmplifyShaderEditor.TextureCoordinatesNode;8;-816,-38;Float;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;FLOAT;FLOAT;FLOAT;FLOAT
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6;-706,-171;Float;False;2;2;0;FLOAT;0.0;False;1;FLOAT2;0.0;False;1;FLOAT2
Node;AmplifyShaderEditor.SimpleAddOpNode;10;-501.6439,-61.10864;Float;False;2;2;0;FLOAT2;0.0;False;1;FLOAT2;0,0;False;1;FLOAT2
Node;AmplifyShaderEditor.SamplerNode;3;-343,-296;Float;True;Property;_TextureSample0;Texture Sample 0;1;0;Assets/AmplifyShaderEditor/Examples/Assets/Textures/SceneTextures/WoodDiffuse.tif;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0.0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1.0;False;5;COLOR;FLOAT;FLOAT;FLOAT;FLOAT
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;2;187,-381;Float;False;True;2;Float;ASEMaterialInspector;0;0;BlinnPhong;ProvaAmplify;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;0;False;0;0;Custom;0.5;True;True;0;False;Transparent;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;False;0;255;255;0;0;0;0;0;0;0;0;False;2;15;10;25;False;0.5;True;2;SrcAlpha;OneMinusSrcAlpha;0;Zero;Zero;OFF;OFF;0;False;0;0,0,0,0;VertexOffset;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;0;0;False;14;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0.0;False;4;FLOAT;0.0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0.0;False;9;FLOAT;0.0;False;10;FLOAT;0.0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;6;0;4;0
WireConnection;6;1;5;0
WireConnection;10;0;6;0
WireConnection;10;1;8;0
WireConnection;3;1;10;0
WireConnection;2;0;3;0
ASEEND*/
//CHKSM=238B702D44354C7DCBC81E494BCE9EF1DF90091E