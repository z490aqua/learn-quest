layer_sequence_destroy(qC);

global.qRemain --;
		
if(global.qRemain == 0) {
	layer_sequence_destroy(global.qSeqElm);
	instance_destroy(self);
}
		
next_question();
		
qArr[0] = "1";
qArr[1] = "2";
qArr[2] = "3";
qArr[3] = "4";
		
array_delete(qArr, 0, 4);
		
global.ansArr = make_plausible_answers(global.q.correctValue, global.q.numToDraw);

for(var i = 0; i < global.q.numToDraw; i++) {
	qArr[i] = string(global.ansArr[i]);
}
		
index = 0;
		
oPlayer.correct_this_session++;
oPlayer.correct_all_time++;