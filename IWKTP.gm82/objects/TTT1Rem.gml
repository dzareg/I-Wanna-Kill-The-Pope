#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
bossName("Rem","TTT", TTT1Rem)
alarm[0] = 100
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    with instance_create(x,y,TTT1RemIztan)
    {
        speed = 2
        direction = point_direction(x,y,player.x,player.y)
    }
}
alarm[0] = 100
