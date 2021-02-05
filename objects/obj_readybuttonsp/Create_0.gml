/// @description Insert description here
// You can write your code in this editor
decksize = 30;
rdy = false
if(i_GameVars.db == dbtype.checkdeck)
{
	i_GameVars.backrm = r_Menu
}else if(i_GameVars.db == dbtype.mp)
{
	i_GameVars.backrm = r_mp_choice
}else{
	i_GameVars.backrm = r_sp_start
}



if(i_GameVars.db != dbtype.sp )
{
	instance_destroy()
}

i_GameVars.sp_match = 1
i_GameVars.total_turns = 0
image_blend = c_red
