/// @description Insert description here
// You can write your code in this editor

if(changed_cardset)
{
	changed_cardset = false;
	if(!stay)
	{
	firstcard = 0
	}
	cards_to_show = ds_grid_create(ds_grid_width(global.cardData), ds_grid_height(global.cardData));
ds_grid_copy(cards_to_show, global.cardData);
	var numdeleted = 0
	for (var i = 0; i < global.totalCards; i++)
	{
	var color = card_colors.red
	switch(global.cardData[# i, COLOR])
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
	var costofcard = clamp(global.cardData[# i, COST],0,5)
	var list = global.deck_list[| i_dmcontrols.current_deck]
	var is_in_deck = (ds_list_find_index(list,cards_to_show[# i-numdeleted, ID])==-1)
	
	if( costs[costofcard]!=1||colors[color] != 1 || (i_seedeck.see_deck && is_in_deck))
	{
		ds_grid_delete_col(cards_to_show, i-numdeleted)
		numdeleted++

	}
		}
		
		if(stay)
		{
			stay = false
			var size = ds_grid_width(cards_to_show)
			
			if(size-(firstcard)*cardsnum<=0)
			{
				if(firstcard >0)
				{
				firstcard--
				}
			}
			
		}
	}

var listsize = ds_grid_width(cards_to_show)


if(changed)
{
for(var j =0; j< cardsnum; j++)
{
	if(firstcard*cardsnum+j<listsize)
	{
		card_ids[j].visible = true
        setCard(card_ids[j], cards_to_show,firstcard*cardsnum+j)
		card_ids[j].this_id = cards_to_show[# firstcard*cardsnum+j, ID]
	}else{
		card_ids[j].visible = false
	}
}
changed = false;
}