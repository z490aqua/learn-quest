/// @description 

// Inherit the parent event
event_inherited();

// Add path
path = path_add();

// Actions
actions = [
	new Punch(),
	new Kick(),
	new Heal(),
	new Slap()
];

correct_this_session = 0;
incorrect_this_session = 0;

// defaults
correct_all_time = 0;
incorrect_all_time = 0;

mathLevel = QUESTION_TYPE.MATH_K;

alarm[0] = 180;


// load data from file
var file_path = "save.json";

var file = file_text_open_read(file_path);

if(file != undefined and file_text_read_string(file) != "") {
	var loaded_json = file_text_read_string(file);
	
	file_text_close(file);
	
	loaded_data = json_decode(loaded_json); 
	
	global.name = ds_map_find_value(loaded_data, "name");
	
	correct_all_time = ds_map_find_value(loaded_data, "correct_all_time");
	incorrect_all_time = ds_map_find_value(loaded_data, "incorrect_all_time");
	
	for(var i = 0; i < ds_map_find_value(loaded_data, "total_materials"); i++){
		// fix this part when we fix the slots
		// var _count = ds_map_find_value(loaded_data, ("MATcount"+string(i)));
		
		ds_list_add(materials, new Slot(ds_map_find_value(loaded_data, ("MATid"+string(i)))));
	}
	
	/*
	for(var i = 0; i < ds_map_find_value(loaded_data, "total_inventory_items"); i++){
		// fix this part when we fix the slots
		// var _count = ds_map_find_value(loaded_data, ("MATcount"+string(i)));
		
		inventory[i] = new Slot(ds_map_find_value(loaded_data, ("INVid"+string(i))));
	}
	*/
	
	x = ds_map_find_value(loaded_data, "x");
	y = ds_map_find_value(loaded_data, "y");
	
	hp = ds_map_find_value(loaded_data, "hp");
	maxHP = ds_map_find_value(loaded_data, "maxhp");
	attack = ds_map_find_value(loaded_data, "atk");
	defense = ds_map_find_value(loaded_data, "def");
	level = ds_map_find_value(loaded_data, "level");
	
	// show_message("Save loaded!");
}