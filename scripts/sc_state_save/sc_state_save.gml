// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_state_save(){
var savemap=ds_map_create();
ds_map_add(savemap,"savestate",ob_main.savestate);
ds_map_secure_save(savemap,"savestate.sav");
ds_map_destroy(savemap);
}