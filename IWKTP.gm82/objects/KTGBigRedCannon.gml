#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 100
spd = 5
image_xscale = 2
image_yscale = 2
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
        a = instance_create(x+sprite_width,y,KTGRedBullet)
        a.hspeed = spd
        a.image_xscale = image_xscale
        a.image_yscale = image_yscale
        sound_play(sndKTGCannon)
    }
}

alarm[0] = 100
