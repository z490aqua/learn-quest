// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_random_question_by_type(_type) {
	var filtered_questions = [];

	for (var i = 0; i < array_length(global.questionArr); i++) {
	    if (global.questionArr[i].questionLevel == _type) {
	        array_push(filtered_questions, global.questionArr[i]);
	    }
	}

	if (array_length(filtered_questions) == 0) {
	    return null;
	}

	var random_index = irandom(array_length(filtered_questions) - 1);
	return filtered_questions[random_index];
}

function make_plausible_answers(_correctAns, _numAns) {
	var ansArray = [];
	var range = 5; 
	
	for (var i = 0; i < _numAns - 1; i++) {
		var variation = irandom_range(-range, range);
		var plausibleAnswer = _correctAns + variation;

		if (plausibleAnswer != _correctAns && !array_contains(ansArray, plausibleAnswer)) {
			array_push(ansArray, plausibleAnswer);
		} else {
			i--; 
		}
	}
    
	var random_position = irandom(array_length(ansArray)); 
	array_insert(ansArray, random_position, _correctAns); 

    return ansArray;
}

function next_question() {
	global.q = get_random_question_by_type(oPlayer.mathLevel);
}