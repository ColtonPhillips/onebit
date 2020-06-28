varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D ditherTex;
uniform vec2 texSize;

vec2 size = vec2(16, 16);
vec2 tSize = vec2(128, 16);

vec2 rSize = size / tSize;

void main()
{
	float band = floor(texture2D(gm_BaseTexture, v_vTexcoord ).r * 7.);
	vec2 offset = vec2(rSize.x * band, 0.);
	
	vec2 texcoord = vec2 (
		mod((v_vTexcoord.x * texSize.x), size.x) / (tSize.x),
		mod((v_vTexcoord.y * texSize.y), size.y) / (tSize.y)
	);
	//vec2 texcoord = vec2( (mod((v_vTexcoord.x * texSize.x), size.x ) /  (tSize.x * 2.)),
	//					  (mod((v_vTexcoord.y * texSize.y), size.y ) /  (tSize.y * 2.)));
//	gl_FragColor = vec4(rSize.x, rSize.x, rSize.x, texture2D(gm_BaseTexture, v_vTexcoord ).a);
	gl_FragColor = texture2D(ditherTex, texcoord + offset);
	gl_FragColor.a = texture2D(gm_BaseTexture, v_vTexcoord ).a;
	
	//vec2 offset = vec2(rSize.x * floor(band / height), rSize.y * mod(band, height));
	//gl_FragColor = texture2D(ditherTex, texcoord + offset);
	//gl_FragColor = texture2D(ditherTex, texcoord);
	
	// gl_FragColor = vec4(offset.x / 16.0 / 7.0, offset.x / 16.0 / 7.0, offset.x / 16.0 / 7.0, texture2D(gm_BaseTexture, v_vTexcoord ).a);
}