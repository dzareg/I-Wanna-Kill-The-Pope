#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
image_xscale = 2
image_yscale = 2
index = 0
spd = 1/8
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
index += spd
if index >= 5 spd *= -1
if index == 0 && spd < 0 instance_destroy()
image_index = abs(index)
