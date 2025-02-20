#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 1
bulletspeed = 3
alarm[0] = 64/bulletspeed
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 1
    with instance_create(832,528,LovetrapBigKidWaterBullet) hspeed = -other.bulletspeed
else
    with instance_create(832,528,LovetrapBigKidBullet) hspeed = -other.bulletspeed
sound_play(sndShoot)
mode *= -1
alarm[0] = 64/bulletspeed
