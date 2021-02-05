/// @description Insert description here
// You can write your code in this editor
draw_sprite_part_ext(spr_image, 0,0, spr_yoffset, sprite_get_width(spr_image), 2000+spr_yoffset, bbox_left+(150)*image_xscale, bbox_top+(180)*image_yscale, (image_xscale)*image_scale,(image_yscale)*image_scale, c_white, 1 );
draw_self();
if(!drag)
{

}
if(drag){
	image_xscale = 2*obj_hand_p1.start_scale
	image_yscale = 2*obj_hand_p1.start_scale

}
draw_sprite_ext(s_colors, color, bbox_left+(150)*image_xscale, bbox_top+(100)*image_yscale, image_xscale*color_scale,image_yscale*color_scale, 0, c_white, 1 );
//draw_sprite_ext(s_circle, 0, bbox_right-20, bbox_top+20, image_xscale*color_scale*4,image_yscale*color_scale*4, 0, c_white, 1 );
//draw_sprite_ext(s_types, type, bbox_right-20, bbox_top+20, image_xscale*color_scale,image_yscale*color_scale, 0, c_white, 1 );
draw_sprite_ext(s_coin, 0, bbox_right-(150)*image_xscale, bbox_top+(100)*image_yscale, image_xscale*color_scale*4,image_yscale*color_scale*4, 0, c_white, 1 );
scr_Draw_Card_Text(bbox_right-(150)*image_xscale, bbox_top-100*image_yscale, cost, (image_xscale/start_scale)*cost_scale, (image_yscale/start_scale)*cost_scale,2, f_cardfont_title, c_white)
scr_Draw_Card_Text(x, bbox_bottom-(25+sprite_get_height(s_test_card)/2)*image_yscale, name, (image_xscale/start_scale)*cardtext_scale2, (image_yscale/start_scale)*cardtext_scale2,2, f_cardfont_title, c_white)

if(line2 == "")
{
scr_Draw_Card_Text(x, bbox_bottom-(800)*image_yscale, card_text, (image_xscale/start_scale)*cardtext_scale, (image_yscale/start_scale)*cardtext_scale,2, f_cardfont, c_white)
}else{
	scr_Draw_Card_Text(x, bbox_bottom-(850)*image_yscale, card_text, (image_xscale/start_scale)*cardtext_scale, (image_yscale/start_scale)*cardtext_scale,2, f_cardfont, c_white)
	scr_Draw_Card_Text(x, bbox_bottom-(725)*image_yscale, line2, (image_xscale/start_scale)*cardtext_scale, (image_yscale/start_scale)*cardtext_scale,2, f_cardfont, c_white)
}
//scr_Draw_Card_Text(x, bbox_bottom-(800)*image_yscale, card_text, (image_xscale/start_scale)*cardtext_scale, (image_yscale/start_scale)*cardtext_scale,2, f_cardfont, c_white)
scr_Draw_Card_Logos(card_inf, x, bbox_bottom - 400*image_yscale, image_xscale,image_yscale, color_scale2)


scr_Draw_Card_Text(((bbox_left+ bbox_right)/2), bbox_top-35, num_in_deck, (image_xscale/start_scale)*num_scale, (image_yscale/start_scale)*num_scale,2, f_cardfont_title, c_white)