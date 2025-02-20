#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0.2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= 0.02
if image_alpha <= 0 instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode(bm_add)
//if object != 0
//draw_sprite_ext(object.sprite_index,object.image_index,object.x,object.y,object.image_xscale,object.image_yscale,object.image_angle,c_red,image_alpha)
draw_set_blend_mode(bm_normal)
