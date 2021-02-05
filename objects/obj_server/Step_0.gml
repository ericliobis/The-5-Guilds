/// @description Insert description here
// You can write your code in this editor
if(selected_host)
{
	selected_host = false;
	server = network_create_server(type, port, max_clients)
	if(server < 0)
	{
		show_error("Could not create server.", false)
	}else{
			i_GameVars.backrm = r_mp_choice
	i_GameVars.db = dbtype.mp
	SlideTransition(TRANS_MODE.GOTO, r_deckbuilder);
		is_server = true
		ds_list_add(clients, -1)
	}
}else if(selected_join){
	selected_join = false;
	server = network_create_socket(type)
	var res = network_connect(server, server_ip, port)
	
	if( res<0)
	{
		network_destroy(res)
		i_host_bt.menu_freeze = false
		i_error.visible = true
	}else{
	i_GameVars.backrm = r_mp_choice
	i_GameVars.db = dbtype.mp
	SlideTransition(TRANS_MODE.GOTO, r_deckbuilder);
	}
}
