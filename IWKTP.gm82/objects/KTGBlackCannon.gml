#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 100
spd = 2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    if player.y < 672
    {
        a = instance_create(x+sprite_width,y,KTGBlackBullet)
        a.hspeed = spd
        //b = instance_create(x+sprite_width,y,KTGBlackBulletKillerHitbox)
        //b.hspeed = spd
        sound_play(sndKTGCannon)
    }
}
alarm[0] = 100
