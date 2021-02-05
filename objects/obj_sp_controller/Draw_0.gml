/// @description Insert description here
// You can write your code in this editor
switch(i_GameVars.sp_match)
{
	case 1:	
		scr_Draw_Card_Text(mid,100, "Round 1", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Opponent gains +1 random influence each turn", 1,1,2,f_cardfont_title, c_white)
		
		break;
	case 2:	
				scr_Draw_Card_Text(mid,100, "Round 2", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Opponent deals 1 damage per turn", 1,1,2,f_cardfont_title, c_white)

		break;
			case 3:	
		scr_Draw_Card_Text(mid,100, "Round 3", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Opponent cannot be damaged", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "Discards a random card from your deck each turn.", 1,1,2,f_cardfont_title, c_white)
break;
		case 4:	
				scr_Draw_Card_Text(mid,100, "Round 4", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Opponent gains 1 hp per turn", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "Player loses 1 coin and 1 hp per turn", 1,1,2,f_cardfont_title, c_white)

		break;
		
		case 5:	
		scr_Draw_Card_Text(mid,100, "Final Round", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Opponent gains +1 random influence each turn", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "Opponent cannot be damaged. Player loses 1 hp per turn.", 1,1,2,f_cardfont_title, c_white)

		break;
		case 6:	
		scr_Draw_Card_Text(mid,100, "The End!", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Try to beat all 5 opponents in even less turns!", 1,1,2,f_cardfont_title, c_white)
		instance_destroy(i_go_butt)
		break;
	default:
		break;
}
if(i_GameVars.sp_record != 6)
{
scr_Draw_Card_Text(mid,555, "Current Round: "+ string(i_GameVars.sp_match) + "  Current Turns: " + string(i_GameVars.total_turns) , 1,1,2,f_cardfont_title, c_white)
}else{
	scr_Draw_Card_Text(mid,555, "Current Round: "+ "Finished!" + "  Current Turns: " + string(i_GameVars.total_turns) , 1,1,2,f_cardfont_title, c_white)
}
if(i_GameVars.sp_record != 6)
{
scr_Draw_Card_Text(mid,625, "Record Round: "+ string(i_GameVars.sp_record) + "  Record Turns: " + string(i_GameVars.sp_turn_record) , 1,1,2,f_cardfont_title, c_white)
}else{
	scr_Draw_Card_Text(mid,625, "Record Round: "+ "Finished!"+ "  Record Turns: " + string(i_GameVars.sp_turn_record) , 1,1,2,f_cardfont_title, c_white)
}