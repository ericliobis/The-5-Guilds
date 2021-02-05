/// @description Insert description here
// You can write your code in this editor
if(room == r_Menu)
{
if(is_server)
{
	network_destroy(server)
	

}
instance_destroy()
}
if((room == r_mp_choice)&&is_server)
{
	network_destroy(server)
	selected_host = false
selected_join = false
is_server= false
}
if(room == r_deckbuilder)
{
	randomize()
	player_start = irandom(1)
}
player1rdy = false;
player2rdy = false;
opp_deck_size = 30