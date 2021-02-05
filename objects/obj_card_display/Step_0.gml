
var list = global.deck_list[| i_dmcontrols.current_deck]
var size = ds_list_size( list );
num_in_deck = 0;
for( var i = 0; i < size; i++ ) if ( ds_list_find_value( list, i ) == this_id ) num_in_deck++