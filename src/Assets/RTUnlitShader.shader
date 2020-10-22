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

            float _Speed;

            fixed4 frag (v2f_customrendertexture i) : SV_Target
            {

                return fixed4(frac(i.globalTexcoord+_Time),1);
            }
            ENDCG
        }
    }
}
