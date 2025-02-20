#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = false
if room == rLoveTrap depth = -12
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered image_alpha -= 0.1
if image_alpha < 0 instance_destroy()
