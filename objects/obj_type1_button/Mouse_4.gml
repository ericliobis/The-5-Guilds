/// @description Insert description here
// You can write your code in this editor
if(i_dmcontrols.controls_active)
{
if(checked)
{
checked = false
image_blend = c_gray
i_dmcontrols.colors[image_index] = 0
i_dmcontrols.changed_cardset = true
	i_dmcontrols.changed = true;
	i_butt_left.check = true
	i_butt_right.check = true
}else if(!checked)
{
checked = true
image_blend = c_white 
i_dmcontrols.colors[image_index] = 1
i_dmcontrols.changed_cardset = true
	i_dmcontrols.changed = true;
	i_butt_left.check = true
	i_butt_right.check = true
}
}