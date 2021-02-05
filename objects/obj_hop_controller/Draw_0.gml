/// @description Insert description here
// You can write your code in this editor
switch(current_page)
{
	case 0:	
		scr_Draw_Card_Text(mid,100, "How to Play", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "The 5 Guilds is a fast paced turned based card game.", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "Each player constructs a deck of at least 30 cards", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,550, "and then attempts to use that deck to defeat their", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,625, "opponent or gain influence of a majority of the Guilds.", 1,1,2,f_cardfont_title, c_white)
		break;
	case 1:	
		scr_Draw_Card_Text(mid,100, "Turn Actions", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Each turn a player may perform one action.", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "They may: play a card (if they can afford it),", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,550, "click on the coin to gain 3 coins, or click on their deck", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,625, "to draw a card. If they are below 5 cards and draw a card", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,700, "they will draw until they have 5 cards in their hand.", 1,1,2,f_cardfont_title, c_white)
		break;
	case 2:	
		scr_Draw_Card_Text(mid,100, "Winning the Game", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "There are three ways to win the game:", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "Lowering you opponents HP to 0", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,550, "Having your opponent draw a card when their deck is empty.", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,625, "Having the support of a least 3 of the 5 guilds.", 1,1,2,f_cardfont_title, c_white)

		break;
			case 3:	
		scr_Draw_Card_Text(mid,100, "Playing a Card", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "To play a card simply drag it from your hand into the", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "stack on the center of the board. The cost of the card", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,550, "is in the upper right corner. If you cannot afford it", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,625, "then you cannot play it.", 1,1,2,f_cardfont_title, c_white)
break;
		case 4:	
		scr_Draw_Card_Text(mid,100, "Influence", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Influence for each guild can be gained by playing a card with", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "their insignia at the bottom (the number indicates how much", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,550, "influence is gained). You also gain one influence if you play", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,625, "a card on top of a card from the same guild.", 1,1,2,f_cardfont_title, c_white)

		break;
		
		case 5:	
		scr_Draw_Card_Text(mid,100, "Influence", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "Once you gain 10 influence for a guild you gain it's support. ", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "You will only lose their support if you drop below 10 influence or ", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,550, "if you opponent gets more influence than you towards that guild.", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,625, "If you have negative influence towards a guild, the effects on their ", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,700, "cards will not work.", 1,1,2,f_cardfont_title, c_white)


		break;
					case 6:	
		scr_Draw_Card_Text(mid,100, "Other Things", 1,1,2,f_title, c_white)
		scr_Draw_Card_Text(mid,400, "You can use the filters in the deckbuilder to see specific card", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,475, "types more easily. You can hover over each deck to see how many", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,550, "cards remain in each players deck. You cannot have a hand size", 1,1,2,f_cardfont_title, c_white)
		scr_Draw_Card_Text(mid,625, "over 10 cards. If both players die at the same time it is a draw.", 1,1,2,f_cardfont_title, c_white)
break;
	default:
		break;
}