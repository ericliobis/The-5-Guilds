/// @description Insert description here
// You can write your code in this editor
if(rdy)
{
	SlideTransition(TRANS_MODE.GOTO, r_sp_choice);
}
var this_deck_size = ds_list_size(global.deck_list[| i_dmcontrols.current_deck])
if(this_deck_size>=decksize)
{
	
	image_blend = c_green

}else
{
	image_blend = c_red
}