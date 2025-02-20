#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 10
image_yscale = 10
image_alpha = 1
image_speed = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale += 0.05
image_yscale += 0.05
image_alpha -= 0.01
if image_alpha < 0 instance_destroy()
