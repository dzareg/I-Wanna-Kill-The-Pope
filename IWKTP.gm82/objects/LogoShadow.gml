#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = Logo.image_alpha
image_speed = 0
image_index = 1
direction = random(360);
speed = random_range(1, 2);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= 0.15
if image_alpha <= 0 {instance_destroy()}
