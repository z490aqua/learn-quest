// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Question(_text, _correctAns, _numAns, _extra = false, _questionType) constructor{
	content = _text;
	correctValue = _correctAns;
	numToDraw = _numAns;
	questionLevel = _questionType;
	
	/*
	QuestionEval = function (player) {
		if(player.correct) {
			player.correct_this_session ++;
			player.correct_all_time ++;
		}
		else {
			player.incorrect_this_session ++;
			player.incorrect_all_time ++;
		}
	}
	*/
}