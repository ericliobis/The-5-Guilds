/// @description Insert description here
// You can write your code in this editor
randomize()
paused = false;

backrm = r_Menu

enum dbtype{
	checkdeck,
	mp,
	sp	
}

db = dbtype.checkdeck
active_deck = 0;
sp_match =1
total_turns = 0
sp_record = 1
sp_turn_record = 0
if (file_exists("game.sav"))
{

sav=file_text_open_read("game.sav")

sp_record = file_text_read_real(sav)
file_text_readln(sav)
sp_turn_record = file_text_read_real(sav)


file_text_close(sav)    
}
