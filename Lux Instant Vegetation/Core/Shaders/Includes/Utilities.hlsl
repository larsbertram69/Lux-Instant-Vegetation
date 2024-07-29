void ShadowFade_float(
    float alpha,
    out float o_alpha
)
{
    #if (SHADERPASS == SHADERPASS_SHADOWS)
        o_alpha = 1.0;
    #else 
        o_alpha = alpha; 
    #endif
}

void ShadowFade_half(
    half alpha,
    out half o_alpha
)
{
    #if (SHADERPASS == SHADERPASS_SHADOWS)
        o_alpha = 1.0;
    #else 
        o_alpha = alpha; 
    #endif
}

void ApplyColorVariation_float(
    float3 BaseColor,
    float VariationStrength,

    out float3 o_BaseColor
)
{ 
    o_BaseColor = lerp(BaseColor, (BaseColor + _HueVariation.rgb) * 0.5, VariationStrength * _HueVariation.a);
}

void ApplyColorVariation_half(
    half3 BaseColor,
    half VariationStrength,

    out half3 o_BaseColor
)
{ 
    o_BaseColor = lerp(BaseColor, (BaseColor + _HueVariation.rgb) * 0.5, VariationStrength * _HueVariation.a);
}