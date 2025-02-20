#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
counter = 0
mode = -1
image_alpha = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
counter += 0.05
if counter >= 1 {mode *= -1; counter = 0}
if image_alpha < 1 {image_alpha += 0.01}
vspeed = counter * mode
