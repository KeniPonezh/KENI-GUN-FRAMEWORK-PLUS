// set macros
#macro BGM 0

// play music
function play_music(music, channel, bgm_extra, loop){
	// play music
	audio_play_sound(music, 0, loop);
	audio_sound_gain(music, global.bgm + (global.bgm * bgm_extra), -1)
};

// stop music
function stop_music(music){
	audio_stop_sound(music)
};


// play sound effect
function play_sound(sound, sfx_extra, loop){
	audio_play_sound(sound, 0, loop)	
	audio_sound_gain(sound, global.sfx + (global.sfx * sfx_extra), -1);
};