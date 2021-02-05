/// @description Insert description here
// You can write your code in this editor

hand_size = ds_list_size(cards_in_hand)
total_width = 0
//Place cards all where they belong


//Go through all the cards and scale them and place them accordingly


for(var i=0;i<hand_size;i++)
{

	cards_in_hand[|i].image_xscale = min_scale
	cards_in_hand[|i].image_yscale = min_scale

		total_width += cards_in_hand[|i].sprite_width+gap	
}
top = total_width/2
for(var i=0;i<hand_size;i++)
{
	if(!cards_in_hand[|i].drag)
	{
	cards_in_hand[|i].x = i_hand_p1.x-total_width+cards_in_hand[|i].sprite_width/2+top+gap*i
	cards_in_hand[|i].y = 10+cards_in_hand[|i].sprite_height/2
	
	}
	total_width -= cards_in_hand[|i].sprite_width
}
