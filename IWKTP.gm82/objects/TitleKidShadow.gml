#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
image_xscale = 10
image_yscale = 10
direction = random(360);
speed = random_range(1, 2);
with TitleKid other.image_index = image_index
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= 0.15
if image_alpha <= 0 instance_destroy()
