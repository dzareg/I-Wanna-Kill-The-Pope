#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 0.3 image_alpha += 0.01
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(image_alpha)
draw_set_color(c_red)
draw_rectangle(x,y,room_width,room_height,false)
draw_set_color(c_white)
draw_set_alpha(1)
