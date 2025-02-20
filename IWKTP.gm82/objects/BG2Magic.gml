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
image_angle += 5
if image_alpha < 1 && instance_exists(BG2WorldPeace) {image_alpha += 0.05}
if image_alpha > 0 && !instance_exists(BG2WorldPeace) {image_alpha -= 0.05}
