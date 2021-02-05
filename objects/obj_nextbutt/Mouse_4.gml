/// @description Insert description here
// You can write your code in this editor
if(visible)
{
	i_GameVars.sp_match++;
	sav = file_text_open_write("game.sav")
if(i_GameVars.sp_record < i_GameVars.sp_match || (i_GameVars.sp_record == i_GameVars.sp_match && i_GameVars.total_turns < i_GameVars.sp_turn_record))
{
file_text_write_real(sav,i_GameVars.sp_match )
file_text_writeln(sav)
file_text_write_real(sav,i_GameVars.total_turns)
file_text_close(sav)
i_GameVars.sp_record = i_GameVars.sp_match
i_GameVars.sp_turn_record = i_GameVars.total_turns
}
	
	SlideTransition(TRANS_MODE.GOTO, r_sp_choice);
}