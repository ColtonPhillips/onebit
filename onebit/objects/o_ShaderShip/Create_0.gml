dither_tex = sprite_get_texture(s_DitheredTileset, 0);
u_size = shader_get_uniform(ShaderDithered, "texSize");
u_dither_tex = shader_get_sampler_index(ShaderDithered, "s_ShaderTest");