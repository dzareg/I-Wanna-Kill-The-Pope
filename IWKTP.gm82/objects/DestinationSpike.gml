#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = -4
iframes = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x < -32
{
    if instance_exists(DestinationShiratama)
        x = room_width+32
    else
        instance_destroy()
}
if iframes > 0 iframes -= 1
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with other
{
    if instance_exists(DestinationShiratama) && other.iframes == 0
    {
        x = other.x+16
        if DestinationShiratama.shield
            direction = 90
        else
        {
            image_xscale = 4
            image_yscale = 4
            noclip = true
            direction = point_direction(x,y,DestinationShiratama.x,DestinationShiratama.y)
            other.iframes = 50
        }
    }
}
