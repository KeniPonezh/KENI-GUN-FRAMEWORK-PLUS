/// @description debug mode!
var debug_text, debug_result

if global.debugmode=true{ 
	debug_text = ["abilitycd", "extra top spd", "hsp", "vsp", "dir", "fps", "char"]
	debug_result = [string(abilitycd), string(topxspdextra), string(hsp), string(vsp), string(move), string(fps), string(global.character)]
	
	// debug results
	for (var i = 0; i < array_length(debug_text); ++i){	
		draw_text(20, 35 + 30*i, debug_text[i] + " : " + debug_result[i]);
	};
		
};