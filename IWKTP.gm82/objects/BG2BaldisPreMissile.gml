#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 37.7
a += 1
if speed > 0 speed += -0.25

if a >= 48
{
    if instance_exists(player)
        action_create_object_motion(BG2BaldisMissile,x,y,12,point_direction(x,y,player.x,player.y))
    instance_destroy()
}
