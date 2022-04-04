function AI_play_plan(argument0,argument1,argument2,argument3,argument4,argument5,argument6) {
/// @param ref_stat_priority //-1: any poke, 0: hp, 1: atk, 2: def, 3: value
/// @param stat_priority_min
/// @param ref_space_type //-1: any space, 0: vs empty space, 1: vs occupied space
/// @param type_advantage_only
/// @param receiving_no_type_advantage_only
/// @param dealing_damage_only
/// @param receiving_no_damage_only
//————————————————————————————————————————————————————————————————————————————————————————————————————
var highest_value=0;
//
if argument0!=-1 {
	for (var i=0; i<enemycard_hand_total; i++;) {
		if enemycard_hand[i].card_cat=0 {
			if argument0=0 and enemycard_hand[i].card_hp>highest_value { highest_value=enemycard_hand[i].card_hp; }
			else if argument0=1 and enemycard_hand[i].card_atk>highest_value { highest_value=enemycard_hand[i].card_atk; }
			else if argument0=2 and enemycard_hand[i].card_def>highest_value { highest_value=enemycard_hand[i].card_def; }
			else if argument0=3 and enemycard_hand[i].card_value>highest_value { highest_value=enemycard_hand[i].card_value; }
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
var space_target;
//
for (var i=0; i<=4; i++;) {
	space_target[i]=false;
	//
	if card_space_id[i].occupied=false and (argument2=-1 or
	(argument2=0 and card_space_id[i+5].occupied=false) or
	(argument2=1 and card_space_id[i+5].occupied=true)) {
		space_target[i]=true;
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
var any_playable=false, card_target;
//
do {
	for (var i=0; i<enemycard_hand_total; i++;) {
		card_target[i]=false;
		//
		if enemycard_hand[i].card_cat=0 and ((argument0=-1) or
		(argument0=0 and enemycard_hand[i].card_hp=highest_value and enemycard_hand[i].card_hp>=argument1) or
		(argument0=1 and enemycard_hand[i].card_atk=highest_value and enemycard_hand[i].card_atk>=argument1) or
		(argument0=2 and enemycard_hand[i].card_def=highest_value and enemycard_hand[i].card_def>=argument1) or
		(argument0=3 and enemycard_hand[i].card_value=highest_value and enemycard_hand[i].card_value>=argument1)) {
			for (var ii=0; ii<=4; ii++;) {
				//
				var opposing_card_id=-1;
				if card_space_id[ii+5].occupied=true {
					var opposing_card_id=instance_position(card_space_id[ii+5].x,card_space_id[ii+5].y,ob_card);
				}
				//
				var all_conditions_met=true;
				if space_poke_possible[ii][i]=false or space_target[ii]=false {
					all_conditions_met=false;
				}
				if argument3=true and ((opposing_card_id=-1) or (opposing_card_id!=-1 and
				!sc_type_bonus(enemycard_hand[i].card_type_a,enemycard_hand[i].card_type_b,opposing_card_id.card_type_a,opposing_card_id.card_type_b))) {
					all_conditions_met=false;
				}
				if argument4=true and opposing_card_id!=-1 and
				sc_type_bonus(opposing_card_id.card_type_a,opposing_card_id.card_type_b,enemycard_hand[i].card_type_a,enemycard_hand[i].card_type_b) {
					all_conditions_met=false;
				}
				if argument5=true and opposing_card_id!=-1 and enemycard_hand[i].card_atk-opposing_card_id.card_def<=0 and
				!sc_type_bonus(enemycard_hand[i].card_type_a,enemycard_hand[i].card_type_b,opposing_card_id.card_type_a,opposing_card_id.card_type_b) {
					all_conditions_met=false;
				}
				if argument6=true and opposing_card_id!=-1 and (opposing_card_id.card_atk-enemycard_hand[i].card_def>0 or
				sc_type_bonus(opposing_card_id.card_type_a,opposing_card_id.card_type_b,enemycard_hand[i].card_type_a,enemycard_hand[i].card_type_b)) {
					all_conditions_met=false;
				}
				//
				if all_conditions_met=true {
					card_target[i]=true;
					any_playable=true;
				}
			}
		}
	}
	highest_value--;
} until (any_playable=true or highest_value<0);
//————————————————————————————————————————————————————————————————————————————————————————————————————
if any_playable=true {
	do {
		var enemycard_playplan_slot=irandom(enemycard_hand_total-1);
		enemyspace_playplan_slot=irandom(4);
	} until (space_poke_possible[enemyspace_playplan_slot][enemycard_playplan_slot]=true and card_target[enemycard_playplan_slot]=true and space_target[enemyspace_playplan_slot]=true);
	//
	enemycard_playplan_id=enemycard_hand[enemycard_playplan_slot];
	for (var i=0; i<=3; i++;) {
		enemyberry_playplan[i]=enemycard_playplan_id.card_cost_total_type[i]-card_space_id[enemyspace_playplan_slot].berries_total_type[i];
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}