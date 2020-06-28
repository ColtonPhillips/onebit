dither_tex = sprite_get_texture(s_DitheredTileset, 0);
u_dither_tex = shader_get_sampler_index(ShaderBanding, "ditherTex");
u_size = shader_get_uniform(ShaderBanding, "texSize");
shader_set(ShaderBanding);
shader_set_uniform_f(u_size, sprite_width, sprite_height);
texture_set_stage(u_dither_tex, dither_tex);
draw_self();
shader_reset();