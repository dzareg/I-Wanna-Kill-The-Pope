#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 0
image_yscale = 0
shoot = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shoot = true
speed = 4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale < 1
{
    image_xscale += 0.05
    image_yscale += 0.05
}
if image_xscale == 0.95 alarm[0] = 51
if shoot speed += 0.2
image_angle = direction
