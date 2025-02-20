#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
abcd = random_range(2,5)
image_xscale = 3
image_yscale = 3
image_speed = 1/4
hspeed = -4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
b += 10;
image_angle = lengthdir_y(abcd, b);

if x < -64 instance_destroy()
