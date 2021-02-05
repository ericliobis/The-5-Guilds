///@Draws Card Test
///@param x
///@param y
///@param text
///@param xscale
///@param yscale
///@param border
///@param font
///@param colort
x_loc = argument0
y_loc = argument1
text = argument2
xscale = argument3
yscale = argument4
border = argument5
font = argument6
colort = argument7


draw_set_halign(fa_center);
draw_set_font(font)
draw_set_color(c_black)
for(var i =1; i<border+1; i++)
{
draw_text_transformed(x_loc+i,y_loc+i, text, xscale,yscale, 0)
draw_text_transformed(x_loc+i,y_loc, text, xscale,yscale, 0)
draw_text_transformed(x_loc+i,y_loc-i, text, xscale,yscale, 0)
draw_text_transformed(x_loc,y_loc+i, text, xscale,yscale, 0)
draw_text_transformed(x_loc,y_loc-i, text, xscale,yscale, 0)
draw_text_transformed(x_loc-i,y_loc+i, text, xscale,yscale, 0)
draw_text_transformed(x_loc-i,y_loc, text, xscale,yscale, 0)
draw_text_transformed(x_loc-i,y_loc-i, text, xscale,yscale, 0)
if(i == 2){
	draw_text_transformed(x_loc+i-1,y_loc+i, text, xscale,yscale, 0)
	draw_text_transformed(x_loc+i,y_loc+i-1, text, xscale,yscale, 0)
draw_text_transformed(x_loc+i,y_loc-i, text, xscale,yscale, 0)
draw_text_transformed(x_loc+i-1,y_loc-i, text, xscale,yscale, 0)
draw_text_transformed(x_loc+i,y_loc-i+1, text, xscale,yscale, 0)
draw_text_transformed(x_loc-i+1,y_loc+i, text, xscale,yscale, 0)
draw_text_transformed(x_loc-i+1,y_loc-i, text, xscale,yscale, 0)
draw_text_transformed(x_loc-i,y_loc+i-1, text, xscale,yscale, 0)
draw_text_transformed(x_loc-i,y_loc-i+1, text, xscale,yscale, 0)
}
}

draw_set_color(colort)
draw_text_transformed(x_loc,y_loc, text, xscale,yscale, 0)
draw_set_halign(fa_left);