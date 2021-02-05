/// @description Insert description here
// You can write your code in this editor
network_set_config(network_config_connect_timeout, 5000);
player1rdy = false;
player2rdy = false;
server_ip = "0.0.0.0"
is_server = false
type = network_socket_tcp;
port = 8000
max_clients = 2
selected_host = false
selected_join = false
player_start = irandom(1)
clients = ds_list_create()
enum DATA{
	INIT_DATA,
	TURN_DATA,
	END_DATA
}
opp_deck_size = 30