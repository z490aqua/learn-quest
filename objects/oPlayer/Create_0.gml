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
// read in data from file
correct_all_time = 0;
incorrect_all_time = 0;

mathLevel = QUESTION_TYPE.MATH_K;