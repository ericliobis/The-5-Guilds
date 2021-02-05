var deck_c = argument[0]
var list = global.deck_list[|deck_c]
var num_cards = global.totalCards
output = "";
for(var i =0; i<num_cards;i++)
{
	num = 0;
	var size = ds_list_size( list);
	for( var j = 0; j < size; j++ ) if ( ds_list_find_value( list, j ) == i) num++;
	output = output+ string(num)
	
}
return output