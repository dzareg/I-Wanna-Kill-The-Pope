#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t=120
laserx=x
sound_play(sndFTGMetalLaserCharge)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
t-=1
if t mod 5 == 0
    image_alpha = 1
 else
    image_alpha = 0.5

if instance_exists(player)
{
    x = player.x
    y = player.y
}

if t == 20 laserx = x

if t <= 0
{
    sound_play(sndFTGMetalLaserFire)
    instance_create(laserx,0,FTGMetalLaser)
    instance_destroy()
}
