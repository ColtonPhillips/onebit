SNESFanfare = SoundOkuzaFanfare;
SNESTitleMusic = SoundOkuzaTItleMusic;


function PlayOnce(snd) {
	audio_play_sound(snd,1,false);	
}

function Loop(snd) {
	audio_play_sound(snd,1,true);	
}
