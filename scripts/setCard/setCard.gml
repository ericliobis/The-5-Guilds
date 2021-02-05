
card_to_change = argument0
card_data = argument1
num_card = argument2
	card_to_change.cost = card_data[# num_card, COST]
	var color = card_colors.red
	switch(card_data[# num_card, COLOR])
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
	
	card_to_change.color = color
	card_to_change.card_id =  card_data[# num_card, ID]
	card_to_change.spr_image = asset_get_index(card_data[# num_card, IMAGE])
	card_to_change.name = card_data[# num_card, NAME]
	card_to_change.spr_yoffset = card_data[# num_card, OFFSET]
	card_to_change.card_text = card_data[# num_card, TEXT]
	card_to_change.line2 = card_data[# num_card, LN2]
	card_to_change.hpp = card_data[# num_card, HPP] 
	card_to_change.coinp  = card_data[# num_card, COINP] 
	card_to_change.draw =  card_data[# num_card, DRAW] 
	card_to_change.hpm =  card_data[# num_card, HPM] 
	card_to_change.coinm =  card_data[# num_card, COINM] 
	card_to_change.drawopp = card_data[# num_card, DRAWOPP] 
	card_to_change.flavor_text = card_data[# num_card, FLAVOR]
	card_to_change.card_inf[0] = real(card_data[# num_card, RP])
	card_to_change.card_inf[1] = real(card_data[# num_card, GP])
	card_to_change.card_inf[2] = real(card_data[# num_card, BP])
	card_to_change.card_inf[3] = real(card_data[# num_card, BLP])
	card_to_change.card_inf[4] = real(card_data[# num_card, GRP])
	card_to_change.otherf = card_data[# num_card, OTHERF]