#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = random_range(0.7, 1);
direction = random(360);
speed = random_range(0.3, 1);
a = random_range(-5, 5);
image_angle = direction;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= 0.03;
direction += a;
image_angle = direction;
if image_alpha <= 0 instance_destroy()
