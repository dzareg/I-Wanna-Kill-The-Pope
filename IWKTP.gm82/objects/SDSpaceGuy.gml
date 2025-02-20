#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
image_speed = 1/5
y += 60
hp = 15
starthp = hp
shield = true
spikeraise = false
alarm[0] = 1
alarm[1] = 120
alarm[2] = 200
image_yscale = 0
image_alpha = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var a;
a = instance_create(room_width+64,464,objwater)
a.hspeed = -2
a.image_xscale = 1.5
a.image_yscale = 1.5
alarm[0] = 64
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    with instance_create(x-60,y,deliciousFruit)
    {
        direction = point_direction(x,y,player.x,player.y)
        speed = 4
        sprite_index = sprSDCherry
    }
    sound_play(sndShoot)
}
alarm[1] = 100
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///raise the spikes
spikeraise = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
IFrameControl()
if image_yscale < 1
    image_yscale += 0.02
if image_yscale == 0.98
{
    bossName("Space Guy", "Showdown", SDSpaceGuy)
    sprite_index = sprSDSpaceGuy
    y = ystart
}
image_alpha = image_yscale
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if hp <= 0
{
    with RTGZombieGuyBullet kill = true
    with HT2AngelKidCherry kill = true
    with spikeUp vspeed = 2
    with MagikSpikeTrap mode = 2
    with deliciousFruit {direction = point_direction(x,y,player.x,player.y)+180; speed = 6}
    with Boss1Controller event_user(0)
    instance_create(x+random_range(-20,20),y+random_range(-20,20),bloodEmitter)
    sound_play(sndDeath)
    scrScreenShake(1,10)
    instance_destroy()
}
