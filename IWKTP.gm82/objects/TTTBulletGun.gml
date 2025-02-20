#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 40
t = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
amount = 20 * mode
if instance_exists(player)
{
    if mode != 2
    {
        image_angle += amount;
        t += amount;
        sound_play(sndTTTBullet)
        a = instance_create(x,y,TTTBullet)
        a.direction = t
        alarm[0] = 8
    }
    else
    {
        sound_play(sndTTTBullet)
        a = instance_create(x,y,TTTBullet)
        a.direction = point_direction(x,y,player.x,player.y)
        image_angle = point_direction(x,y,player.x,player.y)
        alarm[0] = 25
    }
}
if mode != 2 {if range != 0 && t = range || t = -range mode *= -1}
