///@Draws Card Test
///@param x
///@param y


logo_nums = argument0
x_draw = argument1
y_draw = argument2
x_scale = argument3
y_scale = argument4
var color_scale2 = argument5
num = 0
for(i =0;i<array_length_1d(logo_nums);i++)
{
	if(logo_nums[i] != 0)
	{
		num++
	}
}

size = 250;
gap  = 10
startpt = -(num-1)/2
for(i =0;i<array_length_1d(logo_nums);i++)
{
	
	if(logo_nums[i] != 0)
	{
		//
		draw_sprite_ext(s_colors, i, x_draw+startpt*(size+gap)*x_scale, y_draw, x_scale*color_scale2,y_scale*color_scale2, 0, c_white, 1 );	
		scr_Draw_Card_Text(x_draw+startpt*(size+gap)*x_scale, (y_draw)-(70*y_scale), string(logo_nums[i]),4*x_scale,4*y_scale, 2, f_cardfont_title, c_white)
		startpt++;
	}
}

