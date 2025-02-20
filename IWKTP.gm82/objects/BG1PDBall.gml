#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15
image_xscale = random_range(1.5,2)
image_yscale = random_range(1.5,2)
vspeed = 5
gravity = 0.08
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y > room_height instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode(bm_add)
repeat 2 draw_self()
draw_set_blend_mode(bm_normal)
