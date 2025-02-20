#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/7
hspeed = 2
firemode = 0
iframes = 0
frozen = false
alarm[0] = random_range(200,300)
alarm[1] = 10
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///fire
firemode = 2
alarm[2] = 45
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///shoot
if instance_exists(player) && firemode == 2
{
    with instance_create(x+33*image_xscale,y-50,ContraProjectile)
    {
        speed = 6
        direction = point_direction(x,y,player.x,player.y)
    }
    sound_play(sndContraShoot)
}
alarm[1] = 15
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///back to walking
firemode = 0
sprite_index = sprContraSoldierWalk
alarm[0] = random_range(200,300)
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
frozen = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    if x < player.x image_xscale = 1 else image_xscale = -1
    if firemode == 0 && !frozen hspeed = 1.5*image_xscale else hspeed = 0
    if alarm[0] = 60
    {
        sprite_index = sprContraSoldierShoot
        firemode = 1
        hspeed = 0
    }
}
IFrameControl()
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if iframes == 0
{
    frozen = true
    alarm[3] = 20
}
BulletCollision()
iframes = 60
#define Collision_BG2Explosion
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x,y,bloodEmitter) alarm[0] = 5
instance_destroy()
sound_play(sndDeath)
