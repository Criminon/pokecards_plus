function sc_enemy_deck(argument0) {
/// @param trainer_kind
//————————————————————————————————————————————————————————————————————————————————————————————————————
enemycard_maindeck_total=ob_main.enemy_maindeck_size;
//
for (var i=0; i<=17; i++;) {
	enemy_type_chance[i]=0; //0%
}
var glyphmax = 23;

if ob_main.area_zone = area_zone_max or ob_main.newgameplus = true
{
	var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
	var glyph_b = irandom_range(0,11);
	var glyph_c = irandom_range(12,glyphmax);
	var level = 10;
	var innate = choose(3,4);
}
else
{
	var glyph_a = -2;
	var glyph_b = -2;
	var glyph_c = -2;
	if ob_main.area_zone = 0
	{
		var level = choose(1,1,1,2);
	}
	else if ob_main.area_zone = 1
	{
		var level = choose(1,2,2,3);		
	}
	else if ob_main.area_zone = 2
	{
		var level = choose(2,3,3,4);		
	}
	else if ob_main.area_zone = 3
	{
		var level = choose(3,4,4,5);		
	}
	else if ob_main.area_zone = 4
	{
		var level = choose(4,5,5,6);		
	}
	else if ob_main.area_zone = 5
	{
		var level = choose(5,6,6,7);		
	}
	else if ob_main.area_zone = 6
	{
		var level = choose(6,7,7,8);		
	}
	else if ob_main.area_zone = 7
	{
		var level = choose(7,8,8,9);		
	}
	else if ob_main.area_zone = 8
	{
		var level = choose(9,9,10,10);		
	}
	var innate = -1;
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
if argument0<=100 {
	for (var i=0; i<=17; i++;) {
		enemy_type_chance[i]=1; //1% minimum
	}
	//
	if argument0=-1 { //(TEMPLATE)
		enemy_type_chance[00]=00; //normal
		enemy_type_chance[01]=00; //grass
		enemy_type_chance[02]=00; //fire
		enemy_type_chance[03]=00; //water
		enemy_type_chance[04]=00; //electric
		enemy_type_chance[05]=00; //flying
		enemy_type_chance[06]=00; //fighting
		enemy_type_chance[07]=00; //psychic
		enemy_type_chance[08]=00; //fairy
		enemy_type_chance[09]=00; //ground
		enemy_type_chance[10]=00; //rock
		enemy_type_chance[11]=00; //bug
		enemy_type_chance[12]=00; //poison
		enemy_type_chance[13]=00; //ice
		enemy_type_chance[14]=00; //dragon
		enemy_type_chance[15]=00; //steel
		enemy_type_chance[16]=00; //ghost
		enemy_type_chance[17]=00; //dark
		
		if ob_main.area_zone = area_zone_max or ob_main.newgameplus = true
			{
			for (var i=0; i<enemycard_maindeck_total; i++;) {
			sc_enemy_deck_addcard(i,-1,10,choose(ref_glyph_rush,ref_glyph_taunt),irandom_range(0,11),irandom_range(12,22),choose(3,4),0); } 
		}	
	}
	else if argument0=00 { //CAMPER/PICNICKER
		enemy_type_chance[00]=100; //normal
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[03]=75; //water
		enemy_type_chance[05]=100; //flying
		enemy_type_chance[09]=100; //ground
		enemy_type_chance[10]=75; //rock
		enemy_type_chance[11]=25; //bug
		enemy_type_chance[12]=25; //poison
		enemy_type_chance[17]=10; //dark
	}
	else if argument0=01 or argument0=04 { //FISHER & SWIMMER
		enemy_type_chance[03]=100; //water
	}
	else if argument0=02 { //HIKER
		enemy_type_chance[01]=10; //grass
		enemy_type_chance[06]=25; //fighting
		enemy_type_chance[09]=100; //ground
		enemy_type_chance[10]=100; //rock
		enemy_type_chance[11]=10; //bug
	}
	else if argument0=03 { //BUG CATCHER
		enemy_type_chance[01]=10; //grass
		enemy_type_chance[09]=10; //ground
		enemy_type_chance[11]=100; //bug
		enemy_type_chance[12]=100; //poison
	}
	else if argument0=05 { //BIRD KEEPER
		enemy_type_chance[05]=100; //flying
	}
	else if argument0=06 { //SKIER
		enemy_type_chance[03]=50; //water
		enemy_type_chance[05]=25; //flying
		enemy_type_chance[10]=25; //rock
		enemy_type_chance[13]=100; //ice
	}
	else if argument0=07 { //SUPER NERD
		enemy_type_chance[02]=75; //fire
		enemy_type_chance[04]=100; //electric
		enemy_type_chance[12]=100; //poison
	}
	else if argument0=08 { //YOUNGSTER
		enemy_type_chance[00]=100; //normal
		enemy_type_chance[01]=25; //grass
		enemy_type_chance[02]=25; //fire
		enemy_type_chance[03]=25; //water
		enemy_type_chance[04]=25; //electric
		enemy_type_chance[05]=25; //flying
		enemy_type_chance[06]=10; //fighting
		enemy_type_chance[09]=25; //ground
		enemy_type_chance[10]=25; //rock
		enemy_type_chance[11]=100; //bug
		enemy_type_chance[12]=25; //poison
		enemy_type_chance[15]=10; //steel
		enemy_type_chance[17]=10; //dark
	}
	else if argument0=09 { //LAD/LASS
		enemy_type_chance[00]=50; //normal
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[02]=25; //fire
		enemy_type_chance[03]=25; //water
		enemy_type_chance[04]=25; //electric
		enemy_type_chance[05]=25; //flying
		enemy_type_chance[08]=100; //fairy
		enemy_type_chance[12]=10; //poison
	}
	else if argument0=10 { //BIKER
		enemy_type_chance[00]=25; //normal
		enemy_type_chance[02]=100; //fire
		enemy_type_chance[04]=25; //electric
		enemy_type_chance[07]=25; //psychic
		enemy_type_chance[08]=10; //fairy
		enemy_type_chance[12]=100; //poison
		enemy_type_chance[16]=50; //ghost
		enemy_type_chance[17]=50; //dark
	}
	else if argument0=11 { //ROUGHNECK
		enemy_type_chance[06]=100; //fighting
		enemy_type_chance[12]=50; //poison
		enemy_type_chance[16]=25; //ghost
		enemy_type_chance[17]=100; //dark
	}
	else if argument0=12 { //PUNK GUY/PUNK GIRL
		enemy_type_chance[00]=10; //normal
		enemy_type_chance[06]=25; //fighting
		enemy_type_chance[12]=100; //poison
		enemy_type_chance[16]=50; //ghost
		enemy_type_chance[17]=100; //dark
	}
	else if argument0=13 { //GUITARIST
		enemy_type_chance[04]=100; //electric
		enemy_type_chance[12]=10; //poison
		enemy_type_chance[17]=25; //dark
	}
	else if argument0=14 { //PSYCHIC
		enemy_type_chance[07]=100; //psychic
		enemy_type_chance[16]=50; //ghost
	}
	else if argument0=15 { //BLACK BELT
		enemy_type_chance[02]=10; //fire
		enemy_type_chance[06]=100; //fighting
		enemy_type_chance[10]=50; //rock
		enemy_type_chance[15]=25; //steel
	}
	else if argument0=16 { //SCIENTIST
		enemy_type_chance[00]=25; //normal
		enemy_type_chance[02]=10; //fire
		enemy_type_chance[04]=100; //electric
		enemy_type_chance[07]=100; //psychic
		enemy_type_chance[12]=75; //poison
	}
	else if argument0=17 { //RUIN MANIAC
		enemy_type_chance[09]=100; //ground
		enemy_type_chance[10]=100; //rock
		enemy_type_chance[15]=75; //steel
	}
	else if argument0=18 { //BURGLAR
		enemy_type_chance[02]=100; //fire
		enemy_type_chance[12]=25; //poison
		enemy_type_chance[17]=10; //dark
	}
	else if argument0=19 { //ENGINEER
		enemy_type_chance[04]=100; //electric
	}
	else if argument0=20 { //CHANNELER
		enemy_type_chance[16]=100; //ghost
		enemy_type_chance[17]=10; //dark
	}
	else if argument0=21 { //DRAGON TAMER
		enemy_type_chance[14]=100; //dragon
	}
	else if argument0=22 { //SPRITE BOY/FAIRY GIRL
		enemy_type_chance[00]=25; //normal
		enemy_type_chance[07]=50; //psychic
		enemy_type_chance[08]=100; //fairy
	}
	else if argument0=23 { //KINDLER
		enemy_type_chance[02]=100; //fire
		enemy_type_chance[03]=10; //water
	}
	else if argument0=24 { //AROMA MAN/AROMA LADY
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[08]=10; //fairy
	}
	else if argument0=25 { //RANGER
		enemy_type_chance[00]=50; //normal
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[02]=10; //fire
		enemy_type_chance[03]=25; //water
		enemy_type_chance[04]=10; //electric
		enemy_type_chance[05]=25; //flying
		enemy_type_chance[09]=25; //ground
		enemy_type_chance[10]=10; //rock
		enemy_type_chance[11]=25; //bug
		enemy_type_chance[12]=25; //poison
	}
	else if argument0=100 { //ACE TRAINER (number also referenced in sc_enemy_berry_deck)
		enemy_type_chance[00]=100; //normal
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[02]=100; //fire
		enemy_type_chance[03]=100; //water
		enemy_type_chance[04]=100; //electric
		enemy_type_chance[05]=100; //flying
		enemy_type_chance[06]=100; //fighting
		enemy_type_chance[07]=100; //psychic
		enemy_type_chance[08]=100; //fairy
		enemy_type_chance[09]=100; //ground
		enemy_type_chance[10]=100; //rock
		enemy_type_chance[11]=100; //bug
		enemy_type_chance[12]=100; //poison
		enemy_type_chance[13]=100; //ice
		enemy_type_chance[14]=100; //dragon
		enemy_type_chance[15]=100; //steel
		enemy_type_chance[16]=100; //ghost
		enemy_type_chance[17]=100; //dark
	}
	//————————————————————————————————————————————————————————————————————————————————————————————————————
		for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true {sc_enemy_deck_addcard(i,-1,level,choose(ref_glyph_rush,ref_glyph_taunt),irandom_range(0,11),irandom_range(12,22),choose(3,4),-1); }
		else {sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); }
			}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=101 { //TUTORIAL (PROF. ASPEN)
	enemycard_maindeck_total=5;
	//
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		//all use the same berries, to avoid berry deck shuffle issues
		if i<1 { sc_enemy_deck_addcard(i,161,1,-1,-1,-1,1,0); } //SENTRET, LV 1 (IN 1)
		else if i<2 { sc_enemy_deck_addcard(i,016,1,-1,-1,-1,1,0); } //PIDGEY, LV 1 (IN 1)
		else if i<3 { sc_enemy_deck_addcard(i,069,1,-1,-1,-1,1,0); } //BELLSPROUT, LV 1 (IN 1)
		else if i<4 { sc_enemy_deck_addcard(i,129,1,ref_glyph_debilitate,-1,-1,1,0); } //MAGIKARP, LV 1 (IN 1)
		else if i<5 { sc_enemy_deck_addcard(i,019,1,-1,-1,-1,1,0); } //RATTATA, LV 1 (IN 1)
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
//GYM & LEAGUE TYPE CHANCE
//main type: 100% (if very few pokemon, make all others even lower)
//secondary types: 50% (75% if very few pokemon)
//tertiary types: 25% (50% if very few pokemon)
//————————————————————————————————————————————————————————————————————————————————————————————————————
//GYMS AND LEAGUE LEVEL DISTRIBUTION
//high level: 50% (round up, +1 (1-4) over-level every 2 gyms, +1 (5) total over-level in league, +2 (7) total over-level champion)
//mid level: 30% (round up) / 40% (champion)
//low level: 20% (rest) / 10% (champion)
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=200 { //GYM 1: IAN (NORMAL/flying)
	enemy_type_chance[00]=100; //normal
	enemy_type_chance[05]=50; //flying

	for (var i=0; i<enemycard_maindeck_total; i++;) {
			if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 428;
			var form = 1000;
			var lvl = 10;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 162; var form = -1; var lvl = 3;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn,lvl,ref_glyph_lucky,glyph_b,glyph_c,innate,form); } //FURRET, LV 3 (>MAX) (IN 1)
		else if i<5 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(4) LV 2
		else if i<10 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(5) LV 1
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=201 { //GYM 2: CAMMIE (GRASS/ground/rock)
	enemy_type_chance[01]=100; //grass
	enemy_type_chance[09]=50; //ground
	enemy_type_chance[10]=50; //rock

	for (var i=0; i<enemycard_maindeck_total; i++;) {
			if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 460;
			var form = 1000;
			var lvl = 10;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 192; var form = -1; var lvl = 4;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn,lvl,ref_glyph_recovery,glyph_b,glyph_c,innate,form); } //SUNFLORA, LV 4 (>MAX)
		else if i<7 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(6) LV 3
		else if i<12 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(5) LV 2
		else if i<14 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(2) LV 1
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=202 { //GYM 3: WALKER (WATER/ice)
	enemy_type_chance[03]=100; //water
	enemy_type_chance[13]=75; //ice
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 362;
			var form = 1000;
			var lvl = 10;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 55; var form = -1; var lvl = 5;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn,lvl,ref_glyph_shield,glyph_b,glyph_c,innate,form); } //GOLDUCK, LV 5 (>MAX)
		else if i<2 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(1) LV 5 (>MAX)
		else if i<9 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(7) LV 4
		else if i<15 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(6) LV 3
		else if i<18 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(3) LV 2
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=203 { //GYM 4: MADISON (FIRE/steel)
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[15]=75; //steel
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 229;
			var form = 1000;
			var lvl = 10;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 038; var form = -1; var lvl = 6;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn,lvl,ref_glyph_courage,glyph_b,glyph_c,innate,form); } //NINETALES, LV 6 (>MAX)
		else if i<2 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(1) LV 6 (>MAX)
		else if i<11 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(9) LV 5
		else if i<18 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(7) LV 4
		else if i<22 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(4) LV 3
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=204 { //GYM 5: ZOE (ELECTRIC)
	enemy_type_chance[04]=100; //electric
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 310;
			var form = 1000;
			var lvl = 10;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 135; var form = -1; var lvl = 7;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn,lvl,ref_glyph_ruthless,glyph_b,glyph_c,innate,form); } //JOLTEON, LV 7 (>MAX)
		else if i<3 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(2) LV 7 (>MAX)
		else if i<13 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(10) LV 6
		else if i<21 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(8) LV 5
		else if i<26 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(5) LV 4
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=205 { //GYM 6: VINCENT (FIGHTING/dark)
	enemy_type_chance[06]=100; //fighting
	enemy_type_chance[17]=75; //dark
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 448;
			var form = 1000;
			var lvl = 10;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 107; var form = -1; var lvl = 8;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn,lvl,ref_glyph_counter,glyph_b,glyph_c,innate,form); } //HITMONCHAN, LV 8 (>MAX)
		else if i<3 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(2) LV 8 (>MAX)
		else if i<15 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(12) LV 7
		else if i<24 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(9) LV 6
		else if i<30 { sc_enemy_deck_addcard(i,-1,5,-level,glyph_a,glyph_b,-1,-1); } //(6) LV 5
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=206 { //GYM 7: PENNY (PSYCHIC/fairy/ghost)
	enemy_type_chance[07]=100; //psychic
	enemy_type_chance[08]=50; //fairy
	enemy_type_chance[16]=75; //ghost
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 282;
			var form = 1000;
			var lvl = 10;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 196; var form = -1; var lvl = 9;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn,lvl,ref_glyph_curse,glyph_b,glyph_c,innate,form); } //ESPEON, LV 9 (>MAX)
		else if i<4 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(3) LV 9 (>MAX)
		else if i<17 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(13) LV 8
		else if i<28 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(11) LV 7
		else if i<34 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(6) LV 6
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=207 { //GYM 8: LAKE (GRASS/FIRE/WATER)
	enemy_type_chance[01]=100; //grass
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[03]=100; //water
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn1 = 254;
			var pkmn2 = 257;
			var pkmn3 = 260;
			var form = 1000;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn1 = 071; var pkmn2 = 126; var pkmn3 = 099; var form = -1;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn1,10,ref_glyph_adaptability,glyph_b,glyph_c,innate,form); } //VICTREEBEL, LV 10 (>MAX)
		else if i<2 { sc_enemy_deck_addcard(i,pkmn2,10,ref_glyph_adaptability,glyph_b,glyph_c,-1,form); } //MAGMAR, LV 10 (>MAX)
		else if i<3 { sc_enemy_deck_addcard(i,pkmn3,10,ref_glyph_adaptability,glyph_b,glyph_c,-1,form); } //KINGLER, LV 10 (>MAX)
		else if i<4 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(1) LV 10 (>MAX)
		else if i<19 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(15) LV 9
		else if i<31 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(12) LV 8
		else if i<38 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(7) LV 7
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=208 { //ELITE 1: EMILY (FIRE/dark, psychic/ghost)
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[07]=25; //psychic
	enemy_type_chance[16]=50; //ghost
	enemy_type_chance[17]=75; //dark
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 006;
			var form = 1000;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 006; var form = -1; }
		if i<1 { sc_enemy_deck_addcard(i,pkmn,10,ref_glyph_vampire,glyph_b,glyph_c,innate,form); } //CHARIZARD, LV 10 (IN MAX)
		else if i<5 { sc_enemy_deck_addcard(i,-1,10,glyph_a,glyph_b,glyph_c,innate_max,-1); } //(4) LV 10 (IN MAX)
		else if i<20 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(15) LV 10
		else if i<32 { sc_enemy_deck_addcard(i,-1,9,-level,glyph_a,glyph_b,-1,-1); } //(12) LV 9
		else if i<40 { sc_enemy_deck_addcard(i,-1,8,-level,glyph_a,glyph_b,-1,-1); } //(8) LV 8
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=209 { //ELITE 2: FINN (POISON/bug, ground/rock)
	enemy_type_chance[09]=25; //ground
	enemy_type_chance[10]=25; //rock
	enemy_type_chance[11]=50; //bug
	enemy_type_chance[12]=100; //poison
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 094;
			var form = 1000;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 024; var form = -1; }
		if i<1 { sc_enemy_deck_addcard(i,pkmn,10,ref_glyph_debilitate,glyph_b,glyph_c,innate,-1); } //ARBOK, LV 10 (IN MAX)
		else if i<5 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate_max,-1); } //(4) LV 10 (IN MAX)
		else if i<20 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(15) LV 10
		else if i<32 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(12) LV 9
		else if i<40 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(8) LV 8
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=210 { //ELITE 3: DION (FLYING/fighting, grass)
	enemy_type_chance[01]=25; //grass
	enemy_type_chance[05]=100; //flying
	enemy_type_chance[06]=50; //fighting
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 018;
			var form = 1000;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 227; var form = -1; }
		if i<1 { sc_enemy_deck_addcard(i,pkmn,10,ref_glyph_piercing,glyph_b,glyph_c,innate,-1); } //SKARMORY, LV 10 (IN MAX)
		else if i<5 { sc_enemy_deck_addcard(i,-1,10,glyph_a,glyph_b,glyph_c,innate_max,-1); } //(4) LV 10 (IN MAX)
		else if i<20 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(15) LV 10
		else if i<32 { sc_enemy_deck_addcard(i,-1,9,-level,glyph_a,glyph_b,-1,-1); } //(12) LV 9
		else if i<40 { sc_enemy_deck_addcard(i,-1,8,-level,glyph_a,glyph_b,-1,-1); } //(8) LV 8
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=211 { //ELITE 4: APRIL (DRAGON/ice, steel, water)
	enemy_type_chance[03]=5; //water
	enemy_type_chance[13]=50; //ice
	enemy_type_chance[14]=100; //dragon
	enemy_type_chance[15]=25; //steel
	
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn = 373;
			var form = 1000;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn = 149; var form = -1; }
		if i<1 { sc_enemy_deck_addcard(i,pkmn,10,ref_glyph_berserk,-2,-2,innate_max,-1); } //DRAGONITE, LV 10 (IN MAX)
		else if i<5 { sc_enemy_deck_addcard(i,-1,10,glyph_a,glyph_b,glyph_c,innate_max,-1); } //(4) LV 10 (IN MAX)
		else if i<20 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(15) LV 10
		else if i<32 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(12) LV 9
		else if i<40 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(8) LV 8
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=212 { //CHAMPION: DUNCAN (ALL)
	enemy_type_chance[00]=100; //normal
	enemy_type_chance[01]=100; //grass
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[03]=100; //water
	enemy_type_chance[04]=100; //electric
	enemy_type_chance[05]=100; //flying
	enemy_type_chance[06]=100; //fighting
	enemy_type_chance[07]=100; //psychic
	enemy_type_chance[08]=100; //fairy
	enemy_type_chance[09]=100; //ground
	enemy_type_chance[10]=100; //rock
	enemy_type_chance[11]=100; //bug
	enemy_type_chance[12]=100; //poison
	enemy_type_chance[13]=100; //ice
	enemy_type_chance[14]=100; //dragon
	enemy_type_chance[15]=100; //steel
	enemy_type_chance[16]=100; //ghost
	enemy_type_chance[17]=100; //dark
	for (var i=0; i<enemycard_maindeck_total; i++;) {
			if ob_main.newgameplus = true
		{
			var glyphmax = 23;
			var pkmn1 = 248;
			var pkmn2 = 376;
			var pkmn3 = 384;
			var form = 1000;
			var glyph_a = choose(ref_glyph_rush,ref_glyph_taunt);
			var glyph_b = irandom_range(0,11);
			var glyph_c = irandom_range(12,glyphmax);
		}
		else { var pkmn1 = 248; var pkmn2 = 376; var pkmn3 = 384; var form = -1;}
		if i<1 { sc_enemy_deck_addcard(i,pkmn1,10,ref_glyph_tenacity,glyph_b,glyph_c,innate_max,-1); } //TYRANITAR, LV 10 (IN MAX)
		else if i<2 { sc_enemy_deck_addcard(i,pkmn2,10,ref_glyph_counter,ref_glyph_curse,ref_glyph_medic,innate_max,-1); } //MEWTWO, LV 10 (IN MAX)
		else if i<7 { sc_enemy_deck_addcard(i,pkmn3,10,glyph_a,glyph_b,glyph_c,innate_max,-1); } //(5) LV 10 (IN MAX)
		else if i<20 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(13) LV 10
		else if i<36 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(16) LV 9
		else if i<40 { sc_enemy_deck_addcard(i,-1,level,glyph_a,glyph_b,glyph_c,innate,-1); } //(4) LV 8
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0 = 213 { // Mewtwo
	enemy_type_chance[00]=100; //normal
	enemy_type_chance[01]=100; //grass
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[03]=100; //water
	enemy_type_chance[04]=100; //electric
	enemy_type_chance[05]=100; //flying
	enemy_type_chance[06]=100; //fighting
	enemy_type_chance[07]=100; //psychic
	enemy_type_chance[08]=100; //fairy
	enemy_type_chance[09]=100; //ground
	enemy_type_chance[10]=100; //rock
	enemy_type_chance[11]=100; //bug
	enemy_type_chance[12]=100; //poison
	enemy_type_chance[13]=100; //ice
	enemy_type_chance[14]=100; //dragon
	enemy_type_chance[15]=100; //steel
	enemy_type_chance[16]=100; //ghost
	enemy_type_chance[17]=100; //dark
	//
		for (var i=0; i<enemycard_maindeck_total; i++;) {
		var glyphmax = 23;
		if i<1 { sc_enemy_deck_addcard(i,150,10,ref_glyph_command,ref_glyph_determination,ref_glyph_berserk,innate_max+1,-1); } //MEWTWO, LV 10 (IN MAX)
		else if i<2 { sc_enemy_deck_addcard(i,2013,10,ref_glyph_command,ref_glyph_determination,ref_glyph_berserk,innate_max+1,-1); } //ARMORED MEWTWO, LV 10 (IN MAX)
		else if i<3 { sc_enemy_deck_addcard(i,2016,10,ref_glyph_taunt,ref_glyph_lucky,irandom_range(1,glyphmax),innate_max+1,-1); } //CLONE BLASTOISE
		else if i<4 { sc_enemy_deck_addcard(i,2017,10,ref_glyph_taunt,ref_glyph_lucky,irandom_range(1,glyphmax),innate_max+1,-1); } //CLONE VENUSAUR
		else if i<5 { sc_enemy_deck_addcard(i,2018,10,ref_glyph_taunt,ref_glyph_lucky,irandom_range(1,glyphmax),innate_max+1,-1); } //CLONE CHARIZARD
		else if i<6 { sc_enemy_deck_addcard(i,150,10,ref_glyph_command,ref_glyph_determination,ref_glyph_berserk,innate_max+1,-1); } //MEWTWO, LV 10 (IN MAX)
		else if i<7 { sc_enemy_deck_addcard(i,2013,10,ref_glyph_command,ref_glyph_determination,ref_glyph_berserk,innate_max+1,-1); } //ARMORED MEWTWO, LV 10 (IN MAX)
		else if i<8 { sc_enemy_deck_addcard(i,2016,10,ref_glyph_taunt,ref_glyph_lucky,irandom_range(1,glyphmax),innate_max+1,-1); } //CLONE BLASTOISE
		else if i<9 { sc_enemy_deck_addcard(i,2017,10,ref_glyph_taunt,ref_glyph_lucky,irandom_range(1,glyphmax),innate_max+1,-1); } //CLONE VENUSAUR
		else if i<10 { sc_enemy_deck_addcard(i,2018,10,ref_glyph_taunt,ref_glyph_lucky,irandom_range(1,glyphmax),innate_max+1,-1); } //CLONE CHARIZARD
		else if i<11 { sc_enemy_deck_addcard(i,2009,10,ref_glyph_command,ref_glyph_determination,ref_glyph_berserk,innate_max+1,-1); } //SHADOW MEWTWO, LV 10 (IN MAX)
		else if i<12 { sc_enemy_deck_addcard(i,150,10,ref_glyph_command,ref_glyph_determination,ref_glyph_berserk,innate_max+1,1000); } //MEWTWO X MEWTWO, LV 10 (IN MAX)
		else if i<12 { sc_enemy_deck_addcard(i,150,10,ref_glyph_command,ref_glyph_determination,ref_glyph_berserk,innate_max+1,1001); } //MEWTWO Y MEWTWO, LV 10 (IN MAX)
		else if i<40 { sc_enemy_deck_addcard(i,-1,10,ref_glyph_lucky,irandom_range(1,11),irandom_range(12,glyphmax),innate_max+1,-1); } //(5) LV 10 (IN MAX)
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————