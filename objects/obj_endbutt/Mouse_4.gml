/// @description Insert description here
// You can write your code in this editor
if(visible)
{
	if(i_GameVars.db == dbtype.mp)
	{
		var buffer = buffer_create(1,buffer_grow,1);
	buffer_write(buffer, buffer_u8, DATA.END_DATA)
	if(!obj_server.is_server)
	{
	//send it to the server
	network_send_packet(i_server.server,buffer,buffer_get_size(buffer))
	}else{
		for(var i=0; i<ds_list_size(i_server.clients);i++)
		{
			var soc = i_server.clients[|i]
			if(soc<0) continue;
		
			network_send_packet(soc,buffer,buffer_get_size(buffer))
	
	
		}
	}
	buffer_delete(buffer)
	}else{
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
	i_GameVars.sp_match = 1
	i_GameVars.total_turns = 0
	}
	SlideTransition(TRANS_MODE.GOTO, r_Menu);
}