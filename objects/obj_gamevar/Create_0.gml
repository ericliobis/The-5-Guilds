/// @description Insert description here
// You can write your code in this editor


//all things to send to opponent
is_dragging = false
card_depth = -1;
add =0 
p1_in = [0,0,0,0,0]
p2_in = [0,0,0,0,0]
p1_in_winners = [0,0,0,0,0]
p2_in_winners = [0,0,0,0,0]
if(i_GameVars.db == dbtype.mp)
{
if(i_server.is_server)
{

	turn = !i_server.player_start
}else{
	turn = i_server.player_start
	
}
}else{
	
	turn = true
}
if(i_GameVars.db == dbtype.mp)
{
if(!turn){
	hand_size = ds_list_size(i_hand_p1.cards_in_hand)
	card_num = hand_size
	drawCard(i_deck_p1, i_hand_p1,card_num)
}else{
	hand_size = ds_list_size(i_hand_p2.cards_in_hand)
	card_num = (hand_size)
	add = 1
	opp_hand_size = ds_list_size(i_hand_p2.cards_in_hand)
ds_list_add(i_hand_p2.cards_in_hand,instance_create_depth(0,0,-1000,obj_enemycard))
	i_hand_p2.cards_in_hand[|0].image_xscale = i_hand_p2.start_scale
	i_hand_p2.cards_in_hand[|0].image_yscale = i_hand_p2.start_scale
		}
}else{
	instance_destroy(i_hand_p2)
	hand_size = ds_list_size(i_hand_p1.cards_in_hand)
	card_num = hand_size
	drawCard(i_deck_p1, i_hand_p1,card_num)
	
}
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id)
layer_background_index(back_id, irandom_range(0,3))
p1coins = 0
p2coins = 0
p1hp = 30
p2hp = 30
currentcard = noone;
oppdrawsend = 0;
drawsend = 0
p1drawreceived = 0;
p2drawreceived = 0;
switchturn = false
newcard = false
newcardid = 0;

win_cond = 10
trydraw = false
oppdraw = false
if(i_GameVars.db == dbtype.mp)
{
opp_cards = i_server.opp_deck_size-5-add;
}else{
	opp_cards = 100
}