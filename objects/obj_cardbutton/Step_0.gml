/// @description Insert description here
// You can write your code in this editor
if(check)
{
	if(image_index == 0)
	{
		if(ceil(ds_grid_width(i_dmcontrols.cards_to_show)/i_dmcontrols.cardsnum)<= (i_dmcontrols.firstcard+1))
		{
			image_index = 1
		}
	}
		if(image_index == 1)
	{
		if(ceil(ds_grid_width(i_dmcontrols.cards_to_show)/i_dmcontrols.cardsnum)> (i_dmcontrols.firstcard+1))
		{
			image_index = 0
		}
	}
	
		if(image_index == 2)
	{
		if((i_dmcontrols.firstcard)<1)
		{
			image_index = 3
		}
	}
		if(image_index == 3)
	{
		if((i_dmcontrols.firstcard)>0)
		{
			image_index = 2
		}
	}
}