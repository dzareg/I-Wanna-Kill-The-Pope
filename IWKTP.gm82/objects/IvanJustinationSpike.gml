#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = -6
image_speed = 1/5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x < 0 x = 832
if iframes > 0 iframes -= 1
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other
{
    if instance_exists(IvanJustination) && other.iframes == 0
    {
        image_xscale = 4
        image_yscale = 4
        noclip = true
        direction = point_direction(x,y,IvanJustination.x,IvanJustination.y)
        other.iframes = 100
    }
}
