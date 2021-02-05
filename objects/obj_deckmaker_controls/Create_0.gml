/// @description Insert description here
// You can write your code in this editor
colors = [1,1,1,1,1]
controls_active = true
//red, brown, grey, blue, green
costs = [1,1,1,1,1,1]
card_ids = [i_card1, i_card2, i_card3, i_card4,i_card9, i_card5, i_card6, i_card7, i_card8, i_card10]
//0, 1, 2, 3, 4, 5+
cards_to_show = ds_grid_create(ds_grid_width(global.cardData), ds_grid_height(global.cardData));
ds_grid_copy(cards_to_show, global.cardData);
cardsnum = 10
firstcard = 0
changed = true
changed_cardset = false

current_deck = 0
stay = false