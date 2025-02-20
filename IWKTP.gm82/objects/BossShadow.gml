#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
alarm[0] = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if object == 0 exit
sprite_index = object.sprite_index
image_xscale = object.image_xscale
image_yscale = object.image_yscale
image_index  = object.image_index
image_blend  = object.image_blend
image_alpha  = object.image_alpha*1/4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= fadespeed
if image_alpha <= 0 instance_destroy()
