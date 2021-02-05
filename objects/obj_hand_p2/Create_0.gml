/// @description Insert description here
// You can write your code in this editor
//Variables:
start_scale = 0.1
min_scale = 0.75*start_scale
max_scale = 1.5*start_scale
scale_close = 50
scale_far = 300
mouse_loc_x = mouse_x;
mouse_loc_y = mouse_y;
gap = 10
cards_in_hand = ds_list_create();
hand_size = 5
if(i_GameVars.db == dbtype.mp)
{
for(var i=0;i< hand_size;i++)
{
	ds_list_add(cards_in_hand,instance_create_depth(0,0,-i*1000,obj_enemycard))
	cards_in_hand[|i].image_xscale = start_scale
	cards_in_hand[|i].image_yscale = start_scale
}
}