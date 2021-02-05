/// @description Insert description here
// You can write your code in this editor
if(i_dmcontrols.controls_active && visible)
{
var list = global.deck_list[| i_dmcontrols.current_deck]
if(num_in_deck<2)
{
	ds_list_add(list,this_id)
}else{
	ds_list_delete(list, ds_list_find_index(list,this_id))
	ds_list_delete(list, ds_list_find_index(list,this_id))
}
if(i_seedeck.see_deck)
{
	i_dmcontrols.stay = true
i_dmcontrols.changed_cardset = true
	i_dmcontrols.changed = true;
	i_butt_left.check = true
	i_butt_right.check = true
}
file = file_text_open_write(working_directory+"decks.txt");
for(var i=0;i<5;i++)
{
file_text_write_string(file,DeckToCode(i));
file_text_writeln(file);
}
file_text_close(file);
}