#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 0.4
image_yscale = 0.4
move_towards_point(random_range(-10,810),random_range(-10,618),random_range(2,4))
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= 0.02
image_angle += 5
if image_alpha < 0 instance_destroy()
