/// @description Insert description here
// You can write your code in this editor
//check for clients and data
var type = async_load[? "type"]
if(type == network_type_connect){
	var socket = async_load[? "socket"]
	ds_list_add(clients, socket)
}else if(type == network_type_data)
{
	var buffer = async_load[? "buffer"]
	buffer_seek(buffer, buffer_seek_start,0);
	var data = buffer_read(buffer, buffer_u8)
	if(data == DATA.INIT_DATA)
	{
		player2rdy = buffer_read(buffer, buffer_bool)
		if(!is_server)
		{
		player_start = buffer_read(buffer, buffer_u8)
		}else
		{
			var null = buffer_read(buffer, buffer_u8)
		}
		opp_deck_size =buffer_read(buffer, buffer_u8) 
	}else if (data == DATA.TURN_DATA)
	{
		i_global.turn = !buffer_read(buffer, buffer_bool);
		i_global.p2coins = buffer_read(buffer, buffer_u8);
		i_global.p1coins = buffer_read(buffer, buffer_u8);
		i_global.p2hp = buffer_read(buffer, buffer_s16)
		i_global.p1hp = buffer_read(buffer, buffer_s16)
		i_global.p2drawreceived = buffer_read(buffer, buffer_u8);
		i_global.p1drawreceived = buffer_read(buffer, buffer_u8);
		i_global.p2_in[0] = buffer_read(buffer,buffer_s8)
		i_global.p2_in[1] = buffer_read(buffer,buffer_s8)
		i_global.p2_in[2] = buffer_read(buffer,buffer_s8)
		i_global.p2_in[3] = buffer_read(buffer,buffer_s8)
		i_global.p2_in[4] = buffer_read(buffer,buffer_s8)
		i_global.p1_in[0] = buffer_read(buffer,buffer_s8)
		i_global.p1_in[1] = buffer_read(buffer,buffer_s8)
		i_global.p1_in[2] = buffer_read(buffer,buffer_s8)
		i_global.p1_in[3] = buffer_read(buffer,buffer_s8)
		i_global.p1_in[4] = buffer_read(buffer,buffer_s8)
		var newcard = buffer_read(buffer,buffer_bool)
		var newcardid = buffer_read(buffer,buffer_u8)
		i_global.opp_cards = buffer_read(buffer,buffer_u16)
		i_global.oppdraw = buffer_read(buffer,buffer_bool)
		if(newcard)
		{
			instance_destroy(i_hand_p2.cards_in_hand[|0])
			ds_list_delete(i_hand_p2.cards_in_hand,0)
			instance_destroy(i_global.currentcard)
		 i_global.currentcard = (instance_create_depth(0,0,-100,obj_card))
		  setCard(i_global.currentcard,global.cardData, newcardid)
		  i_global.currentcard.x = i_playboard.x
		 i_global.currentcard.y = i_playboard.y
		 i_global.currentcard.image_xscale = i_global.currentcard.start_scale
		 i_global.currentcard.image_yscale = i_global.currentcard.start_scale
		//remove this card from the hand
		 i_global.currentcard.inhand = false
		}
		
		hand_size = ds_list_size(i_hand_p1.cards_in_hand)
		 for(var i2=0;i2<i_global.p1drawreceived;i2++){
			 
			 card = (hand_size+i2)
			 drawCard(i_deck_p1, i_hand_p1,card)
		 }
		 i_global.p1drawreceived = 0
		for(var i2=0;i2<i_global.p2drawreceived;i2++){
		opp_hand_size = ds_list_size(i_hand_p2.cards_in_hand)
		if(opp_hand_size<10)
		{
		 	ds_list_add(i_hand_p2.cards_in_hand,instance_create_depth(0,0,-i2*1000,obj_enemycard))
	i_hand_p2.cards_in_hand[|i2].image_xscale = i_hand_p2.start_scale
	i_hand_p2.cards_in_hand[|i2].image_yscale = i_hand_p2.start_scale
		
		}
		}
		i_global.p2drawreceived = 0
		i_global.drawsend = 0;
		i_global.oppdrawsend = 0
		i_global.newcard = false;
		
	}if(data == DATA.END_DATA)
	{
		SlideTransition(TRANS_MODE.GOTO, r_Menu);
	}
	buffer_delete(buffer)
	//put in buffer data here
}
	