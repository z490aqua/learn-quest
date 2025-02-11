
if (name == undefined || name == "") {
    show_message("Error: Name is not set.");
    return;
}

var safe_name = string_replace_all(name, " ", "_"); 
safe_name = string_replace_all(safe_name, "/", "_"); 

var _save_data = ds_map_create();
ds_map_add(_save_data, "name", safe_name);
ds_map_add(_save_data, "x", x);
ds_map_add(_save_data, "y", y);
ds_map_add(_save_data, "correct_all_time", correct_all_time);
ds_map_add(_save_data, "incorrect_all_time", incorrect_all_time);
ds_map_add(_save_data, "total_materials", ds_list_size(materials));

for(var i = 0; i < ds_list_size(materials); i++) {
    var material = materials[| i];
	
	ds_map_add(_save_data, ("MATid" + string(i)), material.itemID);
    ds_map_add(_save_data, ("MATcount" + string(i)), material.count);
}

// BROKEN UNTIL FURTHER NOTICE

ds_map_add(_save_data, "total_inventory_items", array_length_1d(inventory));

for(var i = 0; i < array_length_1d(inventory); i++) {
    var item = inventory[i];
	
	ds_map_add(_save_data, ("INVid" + string(i)), item);
    // ds_map_add(_save_data, ("INVcount" + string(i)), item.count);
}


var save_json = json_encode(_save_data, false);

var file_path = "save.json";

var file = file_text_open_write(file_path);

if (file != undefined) {
    file_text_write_string(file, save_json);

    file_text_close(file);
} else {
    show_message("Error: Unable to open file for saving. Please restart the application.");
}



alarm[0] = 180;