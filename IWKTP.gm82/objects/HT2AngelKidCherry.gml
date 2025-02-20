#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
shootcherry = false
kill = false
alarm[0] = 1
image_xscale = 2
image_yscale = 2
image_speed = 1/15
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if shootcherry
{
    with instance_create(x,y,deliciousFruit)
    {
        sprite_index = other.sprite_index
        direction = random_range(180,360)
        speed = 3
    }
}
alarm[0] = 18
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if speed > 0 speed -= 0.05 else shootcherry = true
if shootcherry
{
    image_xscale -= 0.02
    image_yscale -= 0.02
    if image_xscale < 0 && image_yscale < 0 instance_destroy()
}
if kill image_alpha -= 0.02
if image_alpha < 0 instance_destroy()
