/// @description Insert description here
// You can write your code in this editor
if(inhand)
{
if( drag == false )
{
    if( mouse_check_button_pressed( mb_left ) and i_global.turn)
    {
        if( collision_point( mouse_x, mouse_y, self, false, false ) )
        {
            drag = true;
			i_global.is_dragging = true
			drag_offset_x = mouse_x-x
			drag_offset_y = mouse_y-y
        }
    }
}

if( drag == true )
{
    x = mouse_x-drag_offset_x
	y = mouse_y-drag_offset_y


if( mouse_check_button_released( mb_left ) )
{
    drag = false;
	if(position_meeting(x,y, i_playboard) and i_global.p1coins >= cost)
	{
		i_global.newcard = true
		i_global.newcardid = card_id
		x = i_playboard.x
		y = i_playboard.y
		i_global.p1coins-=cost
		image_xscale = start_scale
		image_yscale = start_scale
		//remove this card from the hand
		inhand = false
		index = ds_list_find_index(i_hand_p1.cards_in_hand, id)
		depth = i_global.card_depth--
		ds_list_delete(i_hand_p1.cards_in_hand,index)
		i_global.switchturn = true
		if(i_global.p1_in[color]>=0)
		{
		i_global.p1hp += hpp
		i_global.p2hp -= hpm
		i_global.p1coins = clamp(i_global.p1coins+ coinp,0, 100)
		i_global.p2coins = clamp(i_global.p2coins- coinm,0, 100)
		i_global.p1_in[0] += card_inf[0]
		i_global.p1_in[1] += card_inf[1]
		i_global.p1_in[2] += card_inf[2]
		i_global.p1_in[3] += card_inf[3]
		i_global.p1_in[4] += card_inf[4]
		 
		 hand_size = ds_list_size(i_hand_p1.cards_in_hand)
		 for(i2=0;i2<draw;i2++){
			 
			 card = (hand_size+i2)
			 drawCard(i_deck_p1, i_hand_p1,card)
		 }
		 i_global.drawsend = draw
		 var num_opp_drawn = 0
		 if(i_GameVars.db != dbtype.sp)
		 {
		for(i2=0;i2<drawopp;i2++){
		opp_hand_size = ds_list_size(i_hand_p2.cards_in_hand)
		if(opp_hand_size<10)
		{
			num_opp_drawn ++
		 	ds_list_add(i_hand_p2.cards_in_hand,instance_create_depth(0,0,-i2*1000,obj_enemycard))
	i_hand_p2.cards_in_hand[|i2].image_xscale = i_hand_p2.start_scale
	i_hand_p2.cards_in_hand[|i2].image_yscale = i_hand_p2.start_scale
		}
		}
		 }
		if(i_global.opp_cards-num_opp_drawn<0)
		{
			i_global.oppdraw = true
		}
		i_global.oppdrawsend = drawopp
		}
		 if(instance_exists(i_global.currentcard) and color == i_global.currentcard.color)
		 {
			 
			 i_global.p1_in[color]++
		 }
		 instance_destroy(i_global.currentcard)
		 i_global.currentcard = self
	}
	i_global.is_dragging = false;
    //speed = 0;
    prev_mouse_x = mouse_x;
}
}
}
if(!inhand and !i_global.is_dragging)
{
	if(!position_meeting(mouse_x, mouse_y, self))
	{
			image_xscale = start_scale
		image_yscale = start_scale
		big = false
	}else if(mouse_check_button_pressed(mb_left) and !big){
		big = true
		image_xscale = start_scale*2.5
		image_yscale = start_scale*2.5
	}else if(mouse_check_button_pressed(mb_left) and big){
		big = false
				image_xscale = start_scale
		image_yscale = start_scale
	}
}else if(!inhand){
	image_xscale = start_scale
		image_yscale = start_scale
		big = false
}
