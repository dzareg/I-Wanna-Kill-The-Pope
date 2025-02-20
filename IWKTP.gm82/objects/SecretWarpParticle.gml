#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
direction = random(360)
speed = random_range(4,6)
alarm[0] = 25
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
comeback = true
direction += 180
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if comeback
{
    direction += 0.5
    if image_alpha < 1 image_alpha += 0.1
}
#define Collision_SecretWarp
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if comeback
{
    image_xscale -= 0.2
    image_yscale -= 0.2
    if image_xscale <= 0 instance_destroy()
}
