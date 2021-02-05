/// @description Insert description here
// You can write your code in this editor

	if(image_index == 0)
	{
		if(i_htp_text.current_page>=i_htp_text.num_pages)
		{
			image_index = 1
		}
	}
		if(image_index == 1)
	{
		if(i_htp_text.current_page<i_htp_text.num_pages)
		{
			image_index = 0
		}
	}
	
		if(image_index == 2)
	{
		if((i_htp_text.current_page)<1)
		{
			image_index = 3
		}
	}
		if(image_index == 3)
	{
		if((i_htp_text.current_page)>0)
		{
			image_index = 2
		}
	}
