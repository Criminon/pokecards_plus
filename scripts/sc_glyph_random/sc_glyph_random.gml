function sc_glyph_random(argument0) {
/// @param environment
//————————————————————————————————————————————————————————————————————————————————————————————————————
if argument0=false { 
	var var_random=irandom(954);
	var distribution_range = 955 / glyph_common_amount; // dividing 955 by the number of glyphs + 1, to get the distribution range

	if var_random < distribution_range { return ref_glyph_lucky; } //lucky
	else if var_random < 2*distribution_range { return ref_glyph_harvest; } //harvest
	else if var_random < 3*distribution_range { return ref_glyph_debilitate; } //debilitate
	else if var_random < 4*distribution_range { return ref_glyph_ruthless; } //ruthless
	else if var_random < 5*distribution_range { return ref_glyph_courage; } //courage
	else if var_random < 6*distribution_range { return ref_glyph_piercing; } //piercing attack
	else if var_random < 7*distribution_range { return ref_glyph_counter; } //counterattack
	else if var_random < 8*distribution_range { return ref_glyph_shield; } //shield
	else if var_random < 9*distribution_range { return ref_glyph_medic; } //medic
	else if var_random < 10*distribution_range { return ref_glyph_tenacity; } //tenacity
	else if var_random < 11*distribution_range { return ref_glyph_bulwark; } //bulwark
	else if var_random < 12*distribution_range { return ref_glyph_fork; } //fork attack
	else if var_random < 13*distribution_range { return ref_glyph_vampire; } //vampire
	else if var_random < 14*distribution_range { return ref_glyph_curse; } //curse
	else if var_random < 15*distribution_range { return ref_glyph_memento; } //memento
	else if var_random < 16*distribution_range { return ref_glyph_berserk; } //berserk
	else if var_random < 17*distribution_range { return ref_glyph_adaptability; } //adaptability
	else if var_random < 18*distribution_range { return ref_glyph_recovery; } //recovery
	else if var_random < 19*distribution_range { return ref_glyph_rations; } //rations
	else if var_random < 20*distribution_range { return ref_glyph_picky; } //picky
	else if var_random < 21*distribution_range { return ref_glyph_underdog; } //underdog
	else if var_random < 22*distribution_range { return ref_glyph_bless; } //bless
	else if var_random < 23*distribution_range { return ref_glyph_adversity; } //adversity
	else { return ref_glyph_wealth; } //wealth
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else {
	var var_random=irandom(629);
	//
	if var_random<75 { return ref_glyph_lucky; } //75 lucky
	else if var_random<160 { return ref_glyph_debilitate; } //85 debilitate
	else if var_random<245 { return ref_glyph_ruthless; } //85 ruthless
	else if var_random<320 { return ref_glyph_courage; } //75 courage
	else if var_random<345 { return ref_glyph_counter; } //25 counterattack
	else if var_random<420 { return ref_glyph_shield; } //75 shield
	else if var_random<445 { return ref_glyph_medic; } //25 medic
	else if var_random<460 { return ref_glyph_tenacity; } //15 tenacity
	else if var_random<485 { return ref_glyph_bulwark; } //25 bulwark
	else if var_random<500 { return ref_glyph_curse; } //15 curse
	else if var_random<560 { return ref_glyph_memento; } //70 memento
	else if var_random<630 { return ref_glyph_recovery; } //25 recovery
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}