/// @description Insert description here
// You can write your code in this editor
if(!menu_freeze)
{
	menu_freeze = true
	if(room == r_sp_choice)
	{
		SlideTransition(TRANS_MODE.GOTO, r_gameroom);
	}else{
	SlideTransition(TRANS_MODE.GOTO, r_deckbuilder);
	}
}