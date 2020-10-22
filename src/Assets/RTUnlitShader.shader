Shader "Unlit/RTUnlitShader"
{
    SubShader
    {
        Lighting off

        Pass
        {
            CGPROGRAM
            #include "UnityCustomRenderTexture.cginc"
            #pragma vertex CustomRenderTextureVertexShader
            #pragma fragment frag

            float speed=1;

    fixed4 frag(v2f_customrendertexture i) : SV_Target
    {
     speed += 0.1;
                return fixed4(frac(i.globalTexcoord+_Time*speed),1);
            }
            ENDCG
        }
    }
}
