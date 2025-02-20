#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
image_speed = 1/2
mode = 0
alarm[1] = 120
hp = 20
starthp = hp
xx = x+60*image_xscale
yy = y-20
bossHpBar(MagikPhase2)
LightEffect(c_white,0.5)
instance_create(32,416,spikeUp)
instance_create(64,416,spikeUp)
instance_create(room_width-64,416,spikeUp)
instance_create(room_width-96,416,spikeUp)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
changedirection = false
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = instance_create(irandom_range(224,576),-64,MagikGiantBullet)
a.direction = 270
a.speed = 6
a.image_xscale *= 3
a.image_yscale *= 3
sound_play(sndShoot)
alarm[1] = 60
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
xx = x+40*image_xscale
yy = y-20
if mode == 0 {y += 16; if y > room_height - 32 {y = room_height - 32; sprite_index = sprMagikWalk; mode = 1}}
if mode == 1 hspeed += 0.2 * image_xscale
image_speed = hspeed
with MagikGrenade vspeed += 0.1
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if hp <= 0 {a = instance_create(x,y,Magik2Death); a.hspeed *= image_xscale; instance_destroy()}
#define Collision_MagikReflector
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !changedirection
{
    image_xscale *= -1
    hspeed = 1 * image_xscale
    changedirection = true
    alarm[0] = 50
    scrScreenShake(10,2)
    sound_play(sndMagikSlam)
}
