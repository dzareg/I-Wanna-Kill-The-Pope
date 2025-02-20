#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity_direction = direction
gravity = 0.05
image_xscale = 0
image_yscale = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale < 0.8
{
    image_xscale += 0.1
    image_yscale += 0.1
}
image_angle += 9
a += 0.15
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
