//read the file
var theJsonFile = file_text_open_read("cardlist.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);

var theJsonMap = json_decode(theData);
var theList = ds_map_find_value(theJsonMap, "default");
global.totalCards = ds_list_size(theList);

global.cardData = ds_grid_create(global.totalCards,LN2+1);

for (var i = 0; i < global.totalCards; i++)
{
	
    var theEntry = ds_list_find_value(theList, i);
	global.cardData[# i, ID] = theEntry[? "id"];
    global.cardData[# i, NAME] = theEntry[? "name"];
    global.cardData[# i, COLOR] = theEntry[? "color"];
    global.cardData[# i, COST] = theEntry[? "cost"];
    global.cardData[# i, IMAGE] = theEntry[? "image"];
    global.cardData[# i, OFFSET] = theEntry[? "offset"];
    global.cardData[# i, TEXT] = theEntry[? "text"];
	global.cardData[# i, LN2] = theEntry[? "line2"];
    global.cardData[# i, FLAVOR] = theEntry[? "flavor"];
	global.cardData[# i, HPP] = theEntry[? "hpp"];
	global.cardData[# i, COINP] = theEntry[? "coinp"];
	global.cardData[# i, DRAW] = theEntry[? "draw"];
	global.cardData[# i, HPM] = theEntry[? "hpm"];
	global.cardData[# i, COINM] = theEntry[? "coinm"];
	global.cardData[# i, DRAWOPP] = theEntry[? "drawopp"];
	global.cardData[# i, OTHERF] = theEntry[? "other"];
	global.cardData[# i, RP] = theEntry[? "rp"];
	global.cardData[# i, GP] = theEntry[? "gp"];
	global.cardData[# i, BP] = theEntry[? "bp"];
	global.cardData[# i, BLP] = theEntry[? "blp"];
	global.cardData[# i, GRP] = theEntry[? "grp"];


}