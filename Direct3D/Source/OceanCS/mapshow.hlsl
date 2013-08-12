//-----------------------------------------------------------------------------
// ¸Ä¶¯
//-----------------------------------------------------------------------------
/*Texture2D gShadowMap: register(t0);
// A small sky cubemap for reflection
SamplerState g_samplerCube		: register(s0);*/
struct VS_IN
{
	float3 posL : POSITION;
	float2 texC : TEXCOORD;
};

struct VS_OUT
{
	float4 posH : SV_POSITION;
	float2 texC : TEXCOORD;
};
 
VS_OUT VS(VS_IN vIn)
{
	VS_OUT vOut;

	vOut.posH = float4(vIn.posL, 1.0f);
	
	vOut.texC = vIn.texC;
	
	return vOut;
}

float4 PS(VS_OUT pIn) : SV_Target
{
//	float3 rgb = gShadowMap.Sample(g_samplerCube, pIn.texC).rgb;
	
	// draw as grayscale
	return float4(1.0,1.0,1.0,1);
}