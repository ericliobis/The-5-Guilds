/// @description Insert description here
// You can write your code in this editor
if(visible)
{
hand_size = ds_list_size(i_hand_p1.cards_in_hand)
if(max_hand_size > hand_size and i_global.turn)
{
cards_to_draw = clamp(5-hand_size, 1,5)
i_global.drawsend = cards_to_draw;
	i_global.oppdrawsend = 0;
for(var i2=0;i2< cards_to_draw;i2++)
{
	card_num = (hand_size+i2)
	drawCard(i_deck_p1, i_hand_p1,card_num)
	
}
 i_global.switchturn = true;
}
}