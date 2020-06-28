dither_tex = sprite_get_texture(s_DitheredTileset, 0);
u_size = shader_get_uniform(ShaderBanding, "texSize");
u_dither_tex = shader_get_sampler_index(ShaderBanding, "s_ShaderTest");