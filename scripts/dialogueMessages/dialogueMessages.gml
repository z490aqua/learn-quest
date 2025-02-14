try {
	var file_path = "save.json";

	var file = file_text_open_read(file_path);

	if(file != undefined) {
	
		var loaded_json = file_text_read_string(file);
	
		file_text_close(file);
	
		loaded_data = json_decode(loaded_json); 
	
		global.name = ds_map_find_value(loaded_data, "name");

		// show_message("Name updated!");
	}
}
catch(_e) {
	global.name = "player";
	show_debug_message(_e);
}
global.messages = {};

speakers = {
	player : {
		name : global.name,
		image : sPlayer_Right_Idle,
	},
	
	bob : {
		name : "Bob",
		image : sBob_Right_Idle,
	},
	
	rob : {
		name : "Rob",
		image : sBob_Right_Idle,
	},
	
	jessica : {
		name : "Jessica",
		image : sJessica_Right_Idle,
	}
}

global.messages.bob_0 = [
	{
		speaker : speakers.player,
		message : "What are you doing?",
	},
	{
		speaker : speakers.bob,
		message : "Um, just waiting for Rob. He said he'd be here at 11... That guy is never on time! I hate him!"
	},
	{
		speaker : speakers.bob,
		message : "I'm Bob, by the way."
	},
	{
		speaker : speakers.player,
		message : "I know."
	}
];

global.messages.rob_0 = [
	{
		speaker : speakers.rob,
		message : "Lemme walk, bud."
	}
]

global.messages.jessica_0 = [
	{
		speaker : speakers.jessica,
		message : "Oh hey! Can you help me out here?"
	},
	{
		speaker : speakers.player,
		message : "Sure, what do you need?"
	},
	{
		speaker : speakers.jessica,
		message : "I lost my pizza cutter. I can't eat my pizza without it!"
	},
	{
		speaker : speakers.jessica,
		message : "I'm sure it's somewhere around here."
	},
	{
		speaker : speakers.player,
		message : "Sure, I'll find it."
	},
	{
		speaker : speakers.jessica,
		message : "Quick, my pizza is getting cold!"
	}
]