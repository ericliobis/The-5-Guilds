/// @description Insert description here
// You can write your code in this editor
if(room != r_deckbuilder || i_dmcontrols.controls_active)
{
	if(room == r_mp_choice && i_iplookup.mp_ip)
	{
		i_iplookup.mp_ip = false
	}else{
SlideTransition(TRANS_MODE.GOTO, i_GameVars.backrm);
	}
}