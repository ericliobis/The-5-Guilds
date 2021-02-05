/// @description Insert description here
// You can write your code in this editor

hand_size = ds_list_size(cards_in_hand)
total_width = 0
//Place cards all where they belong


//Go through all the cards and scale them and place them accordingly

if(!i_global.is_dragging)
{
	mouse_loc_x = mouse_x
	mouse_loc_y = mouse_y
}
for(var i=0;i<hand_size;i++)
{
	if(!cards_in_hand[|i].drag)
	{
	diff_x = sqrt(sqr(cards_in_hand[|i].x-mouse_loc_x)+sqr(cards_in_hand[|i].y-mouse_loc_y)/2)
	cards_in_hand[|i].y = i_hand_p1.y
	cards_in_hand[|i].y = i_hand_p1.y
	scale = (max_scale-min_scale)*(scale_far-clamp(diff_x,scale_close,scale_far))/(scale_far-scale_close)+min_scale
	scale = clamp(scale, min_scale,max_scale)
	cards_in_hand[|i].image_xscale = scale
	cards_in_hand[|i].image_yscale = scale
	}else{
	cards_in_hand[|i].image_xscale = max_scale
	cards_in_hand[|i].image_yscale = max_scale

	}
		total_width += cards_in_hand[|i].sprite_width+gap	
}
top = total_width/2
for(var i=0;i<hand_size;i++)
{
	if(!cards_in_hand[|i].drag)
	{
	cards_in_hand[|i].x = i_hand_p1.x-total_width+cards_in_hand[|i].sprite_width/2+top+gap*i
	cards_in_hand[|i].y = room_height-10-cards_in_hand[|i].sprite_height/2
	
	}
	total_width -= cards_in_hand[|i].sprite_width
}