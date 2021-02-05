/// @description Insert description here
// You can write your code in this editor
draw_self()
if(position_meeting(mouse_x,mouse_y,self))
{
	draw_set_font(f_cardfont_title)
	draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(f_cardfont_title);
var col = c_white;
var offset = 2;
var xx = mouse_x;
var yy = mouse_y;
var txt = i_global.opp_cards;
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
draw_set_valign(fa_top);
}