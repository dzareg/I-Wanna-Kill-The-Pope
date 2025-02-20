#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curving = true
direction = random(360)
speed = 6
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if curving direction += 1
image_xscale -= 0.05
image_yscale -= 0.05
if image_xscale <= 0 && image_xscale <= 0 instance_destroy()
