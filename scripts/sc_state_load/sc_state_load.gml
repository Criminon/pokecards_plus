function sc_state_load() {
//————————————————————————————————————————————————————————————————————————————————————————————————————]
if file_exists("savestate.sav") {
	var savemap=ds_map_secure_load("savestate.sav");
if !is_undefined(ds_map_find_value(savemap,"savestate")) {ob_main.savestate=ds_map_find_value(savemap,"savestate"); }

	}
}