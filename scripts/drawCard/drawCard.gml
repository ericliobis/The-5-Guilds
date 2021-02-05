
//@params deck

var deck = argument0;
var hand = argument1;
var i = argument2
var decksize = ds_list_size(deck.cards)
var hand_size_2 = ds_list_size(hand.cards_in_hand)

if(decksize >0)
{
	ds_list_shuffle(deck.cards)
	
	var draw_card = deck.cards[|0]
	ds_list_delete(deck.cards, 0)

if(hand_size_2<10){
	ds_list_add(hand.cards_in_hand,instance_create_depth(0,0,-i*100-100,obj_card))
	hand.cards_in_hand[|i].image_xscale = hand.cards_in_hand[|i].start_scale
	hand.cards_in_hand[|i].image_yscale = hand.cards_in_hand[|i].start_scale
	


	hand.cards_in_hand[|i].cost = global.cardData[# draw_card, COST]
	var color = card_colors.red
	switch(global.cardData[# draw_card, COLOR])
	{
		case "red":
		color = card_colors.red
		break;
		case "grey":
		color = card_colors.grey
		break;
		case "blue":
		color = card_colors.blue
		break;
		case "green":
		color = card_colors.green
		break;
		case "brown":
		color = card_colors.brown
		break;
	}
	
	hand.cards_in_hand[|i].color = color
	hand.cards_in_hand[|i].card_id = global.cardData[# draw_card, ID]
	hand.cards_in_hand[|i].spr_image = asset_get_index(global.cardData[# draw_card, IMAGE])
	hand.cards_in_hand[|i].name = global.cardData[# draw_card, NAME]
	hand.cards_in_hand[|i].spr_yoffset = global.cardData[# draw_card, OFFSET]
	hand.cards_in_hand[|i].line2 = global.cardData[# draw_card, LN2]
	hand.cards_in_hand[|i].card_text = global.cardData[# draw_card, TEXT]
	hand.cards_in_hand[|i].hpp = global.cardData[# draw_card, HPP] 
	hand.cards_in_hand[|i].coinp  = global.cardData[# draw_card, COINP] 
	hand.cards_in_hand[|i].draw =  global.cardData[# draw_card, DRAW] 
	hand.cards_in_hand[|i].hpm =  global.cardData[# draw_card, HPM] 
	hand.cards_in_hand[|i].coinm =  global.cardData[# draw_card, COINM] 
	hand.cards_in_hand[|i].drawopp = global.cardData[# draw_card, DRAWOPP] 
	hand.cards_in_hand[|i].flavor_text = global.cardData[# draw_card, FLAVOR]
	hand.cards_in_hand[|i].card_inf[0] = real(global.cardData[# draw_card, RP])
	hand.cards_in_hand[|i].card_inf[1] = real(global.cardData[# draw_card, GP])
	hand.cards_in_hand[|i].card_inf[2] = real(global.cardData[# draw_card, BP])
	hand.cards_in_hand[|i].card_inf[3] = real(global.cardData[# draw_card, BLP])
	hand.cards_in_hand[|i].card_inf[4] = real(global.cardData[# draw_card, GRP])
	hand.cards_in_hand[|i].otherf = global.cardData[# draw_card, OTHERF]
}}else{
	i_global.trydraw = true;
}