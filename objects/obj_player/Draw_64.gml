/// @description debug mode!
var debug_text, debug_result

if (global.debugmode=true && SEE_DEBUG_VARS){ 
	debug_text = ["abilitycd", "extra top spd", "hsp", "vsp", "dir", "fps", "state", "grounded", "sv_a", "sv_b", "date"]
	debug_result = [string(abilitycd), string(topxspdextra), string(hsp), string(vsp), string(move), string(fps), string(state), string(grounded), string(special_var_a), string(special_var_b), string(date_get_day(date_current_datetime())) + "." + string(date_get_month(date_current_datetime())) + "." + string(date_get_year(date_current_datetime()))]
	
	// debug results
	for (var i = 0; i < array_length(debug_text); ++i){	
		draw_set_font(cc_font_24);
		draw_text(20, 135 + 30*i, debug_text[i] + " : " + debug_result[i]);
		// reset stuff
		draw_set_font(noone);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	};
};

