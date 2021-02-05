/// @description Insert description here
// You can write your code in this editor




if(switchturn && i_GameVars.db == dbtype.mp)
{
	turn = false;
	switchturn = false;
	//send the data to your homie
	var buffer = buffer_create(18,buffer_grow,1);
	buffer_write(buffer, buffer_u8, DATA.TURN_DATA)
	buffer_write(buffer, buffer_bool, turn)
	buffer_write(buffer, buffer_u8, p1coins)
	buffer_write(buffer, buffer_u8, p2coins)
	buffer_write(buffer, buffer_s16,p1hp)
	buffer_write(buffer, buffer_s16, p2hp)
	buffer_write(buffer, buffer_u8, drawsend)
	buffer_write(buffer, buffer_u8, oppdrawsend)
	buffer_write(buffer, buffer_s8, p1_in[0])
	buffer_write(buffer, buffer_s8, p1_in[1])
	buffer_write(buffer, buffer_s8, p1_in[2])
	buffer_write(buffer, buffer_s8, p1_in[3])
	buffer_write(buffer, buffer_s8, p1_in[4])
	buffer_write(buffer, buffer_s8, p2_in[0])
	buffer_write(buffer, buffer_s8, p2_in[1])
	buffer_write(buffer, buffer_s8, p2_in[2])
	buffer_write(buffer, buffer_s8, p2_in[3])
	buffer_write(buffer, buffer_s8, p2_in[4])
	buffer_write(buffer, buffer_bool, newcard)
	buffer_write(buffer, buffer_u8, newcardid)
	buffer_write(buffer, buffer_u16, ds_list_size(i_deck_p1.cards))
	buffer_write(buffer, buffer_bool, trydraw )
	
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
	
	
}else if(switchturn && i_GameVars.db == dbtype.sp)
{
	switchturn = false;
	i_GameVars.total_turns ++
	//things to do each turn
	switch(i_GameVars.sp_match)
	{
		case 1:
			var inc = irandom_range(0,4)
			p2_in[inc]++
			break
		case 2:
			
			p1hp--
			break
		case 3:
			p2hp = 30
			var decksize = ds_list_size(i_deck_p1.cards)
			var inc = 0
			if(decksize >0 && inc==0)
			{
				ds_list_shuffle(i_deck_p1.cards)
				ds_list_delete(i_deck_p1.cards, 0)
			}
			break
		case 4:
			p1hp --
			p1coins = clamp(p1coins-1, 0, 100)
			p2hp++
			break
		case 5:
			p1hp --
			p2hp= 30
			var inc = irandom_range(0,4)
			p2_in[inc]++
			break
	
	}
}

for(var i= 0;i<5;i++)
{
	if(p1_in[i] <win_cond)
	{
		p1_in_winners[i] = 0
	}
	if(p2_in[i] <win_cond)
	{
		p2_in_winners[i] = 0
	}
	if(p1_in[i] >=win_cond && p2_in[i] <win_cond )
	{
		p1_in_winners[i] = 1
		p2_in_winners[i] = 0
	}else 	if(p1_in[i] <win_cond && p2_in[i] >=win_cond )
	{
		p1_in_winners[i] = 0
		p2_in_winners[i] = 1
	}else if(p1_in[i] >=win_cond && p2_in[i] >=win_cond )
	{
		if(p1_in[i] >p2_in[i])
		{
			p1_in_winners[i] = 1
			p2_in_winners[i] = 0
		}else if(p1_in[i] <p2_in[i])
		{
			p1_in_winners[i] = 0
			p2_in_winners[i] = 1
		}
	}
}

var sump1 = 0;
for(var j = 0; j < 5; j++) {
   sump1 += p1_in_winners[j]
}

var sump2 = 0;
for(var k = 0; k < 5; k++) {
   sump2 += p2_in_winners[k]
}

if(p1hp<=0||p2hp<=0 || trydraw || oppdraw || sump1>=3 || sump2>=3)
{
	i_black_box.visible = true
	i_black_box.image_alpha = 0.8
	if(i_GameVars.db == dbtype.mp)
	{
	i_againbutt.visible = true
	
	}
	i_endbutt.visible = true
	turn = false
	i_endmsg.visible = true
	if(p1hp<=0 || trydraw || sump2 >=3)
	{
		i_endmsg.txt = "YOU LOSE!"
		if((p2hp <=0 || oppdraw || sump1 >=3) && i_GameVars.db == dbtype.mp)
		{
			i_endmsg.txt = "DRAW"
		}
	}else if(i_GameVars.db == dbtype.sp)
	{
		i_nextbutt.visible = true
	}
	
	
	
}
