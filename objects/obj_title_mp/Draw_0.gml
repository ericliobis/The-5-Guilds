/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_title);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var col = c_white;
var offset = 2;
var xx = display_get_gui_width()/2;
var yy = 100;
var txt = "Multiplayer";
	draw_set_color(c_black);
	draw_text(xx+offset,yy, txt);
	draw_text(xx-offset,yy, txt);
	draw_text(xx,yy+offset, txt);
	draw_text(xx,yy-offset, txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);