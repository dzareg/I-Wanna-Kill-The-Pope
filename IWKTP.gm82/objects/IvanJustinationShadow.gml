#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
image_index = 1
with IvanJustination other.image_alpha = image_alpha / 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
direction = random(360);
speed = random_range(1, 4);
image_alpha -= 0.05
if image_alpha <= 0 instance_destroy()
with IvanJustination other.image_blend = image_blend
