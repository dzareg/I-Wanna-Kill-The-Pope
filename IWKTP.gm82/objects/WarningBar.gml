#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction = point_direction(x, y, view_xview[0]+400+random_range(-150,150), view_yview[0]+304+random_range(-100,100));
image_angle = direction+180;
if image_angle >= 360 {image_angle -= 360;}
speed = 40;
ox = x-view_xview[0];
oy = y-view_yview[0];
alarm[0] = 10;
d = 0
mode = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = 1;
alarm[1] = 120;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = 40;
alarm[2] = 100;
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ox += hspeed;
oy += vspeed;
d += 5 * mode;
if d >= 250 || d <= 0 mode *= -1
image_blend = make_color_rgb(255, d, d)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index,image_index,view_xview[0]+ox,view_yview[0]+oy,1,1,image_angle,image_blend,image_alpha)
