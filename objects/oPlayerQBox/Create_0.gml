/// @description 

// Inherit the parent event
event_inherited();

// Header
headerText = "QUESTION";

global.q = get_random_question_by_type(oPlayer.mathLevel);

qArr[0] = "1";
qArr[1] = "2";
qArr[2] = "3";
qArr[3] = "4";

index = 0;

global.ansArr = make_plausible_answers(global.q.correctValue, global.q.numToDraw);

for(var i = 0; i < global.q.numToDraw; i++) {
	qArr[i] = string(global.ansArr[i]);
}