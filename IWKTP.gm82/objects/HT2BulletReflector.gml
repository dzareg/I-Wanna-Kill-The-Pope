#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = instance_create(x,y,FallingBlock)
a.sprite_index = sprite_index
instance_destroy()
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(HT2GiantBlueCherry) || instance_exists(HT2GiantRedCherry) || instance_exists(MagikPhase3)
{
    with other direction = 90
    other.x = x+16
}
