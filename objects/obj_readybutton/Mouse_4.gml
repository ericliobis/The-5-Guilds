/// @description Insert description here
// You can write your code in this editor
var this_deck_size = ds_list_size(global.deck_list[| i_dmcontrols.current_deck])
if((!i_server.is_server ||ds_list_size(i_server.clients)>1) && this_deck_size>=decksize)
{
if(!i_server.player1rdy)
{
	i_dmcontrols.controls_active = false

i_server.player1rdy = true 
image_blend = c_green
}else{
	i_dmcontrols.controls_active = true

i_server.player1rdy = false 
image_blend = c_red
}
var buffer = buffer_create(3,buffer_grow,1);
buffer_write(buffer, buffer_u8, DATA.INIT_DATA)
buffer_write(buffer, buffer_bool, i_server.player1rdy)
buffer_write(buffer, buffer_u8, i_server.player_start)
buffer_write(buffer, buffer_u8, this_deck_size)
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
}