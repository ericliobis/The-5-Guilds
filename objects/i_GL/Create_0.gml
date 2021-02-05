//open_two_windows()

/// @description Insert description here
// You can write your code in this editor
enum card_colors {
   red,
   grey,
   brown,
   blue,
   green
   }

enum card_types {
   attack,
   defend,
   item,
   magic
   }
global.deck_list = ds_list_create();
d1 = ds_list_create();
d2= ds_list_create();
d3 = ds_list_create();
d4 = ds_list_create();
d5 = ds_list_create();
ds_list_add(global.deck_list, d1);
ds_list_add(global.deck_list, d2);
ds_list_add(global.deck_list, d3);
ds_list_add(global.deck_list, d4);
ds_list_add(global.deck_list, d5);

readJSON()

file = file_text_open_read(working_directory+"decks.txt");
if(file != -1)
{
for(var i = 0;i<5;i++)
{
	var line = file_text_readln(file);
	for(var j=1;j<string_length(line)-1;j++)
	{
		var cardnum = real(string_char_at(line, j))
		if(cardnum != 0)
		{
			ds_list_add(global.deck_list[|i],(j-1))
			if(cardnum == 2)
			{
				ds_list_add(global.deck_list[|i],(j-1))
			}
		}
	}


}
}