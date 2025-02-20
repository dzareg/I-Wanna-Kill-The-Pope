#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 1
tag = 1
image_speed = 1/5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered
{
    if y > ystart - 32 vspeed = -4
    else
    {
        vspeed = 0;
        sprite_index = sprIvanLongSpike;
        mode = 1
    }
}
if IvanBlockGoLeft.getreal && mode == 1
{
    if y > ystart - 64 vspeed = -1
    else vspeed = 0
}
