/// @description Insert description here
// You can write your code in this editor
draw_self()
if(coinnum == 5){
	scr_Draw_Card_Text(x,y-25,"5+",1,1,2,f_cardfont_title, c_white)
}else
{
scr_Draw_Card_Text(x,y-25,coinnum,1,1,2,f_cardfont_title, c_white)
}