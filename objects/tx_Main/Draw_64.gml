/// @description Insert description here
// You can write your code in this editor

if(!global.paused)
{
	draw_set_halign(fa_center);
	draw_set_font(ftDialogueMessage);

	var _gap = 60;
	var _size = 4;

	for(var i = 0; i < _size; i++){
		draw_set_color(c_black);
		if(i == index)
			draw_set_color(#91CD46);
		
		draw_text(102, 102 * .4 + _gap * i, menu[i]) 
	
	}
}
	
if (global.paused && layer_sequence_exists(global.seqLayer, pauseSeqElm)) {
	if (surface_exists(global.seqSurf)) {
		gpu_set_blendenable(false);
		draw_surface(global.seqSurf, 0, 0);
		gpu_set_blendenable(true);
	}
	
}