#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
radius = 0
mode = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if radius < 2000 && instance_exists(IvanJustination) radius += 20
if !instance_exists(IvanJustination)
{
    radius -= 50
    if radius <= 0 instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_dest_color);
draw_circle_color(x,y,radius,c_white,c_white,false)
draw_set_color = c_black;
draw_set_blend_mode(bm_normal);
