#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,BG2RakhrisEffect)
bossName("Rakhris", "Best Guy 2", BG2Rakhris)
sound_play(sndBG2RakhrisSpawn)
image_alpha = 0
image_speed = 0
hspeed = -2
alarm[0] = 100
alarm[2] = 50
alarm[3] = 10
slice = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0
alarm[1] = 25
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndRakhrisAttack)
hspeed = -16
image_index = 5
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrBossShadow(BG2Rakhris, 0.05)
alarm[2] = 2
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if slice instance_create(x+random_range(-32,32),y+random_range(-32,32),BG2RakhrisOra)
alarm[3] = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !slice && image_alpha < 1 image_alpha += 0.02
if  slice                    image_alpha = 0.8

if x < -room_width || x > room_width*2
{
    slice = true
    x -= hspeed*2
    image_xscale *= -1
    hspeed = -24*image_xscale
    sound_play(sndRakhrisAttack)
}
with BonzoTimer if timer < 4350 exit
if hspeed < 0 && x < xstart && slice
{
    slice = false
    hspeed = 0
    sprite_index = sprBG2RakhrisStop
    image_speed = 1/20
}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !slice killPlayer()
#define Collision_BG2Gustav
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndDeath)
scrScreenShake(1,10)
instance_create(x,y,bloodEmitter)
instance_destroy()
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index == sprBG2RakhrisStop
{
    image_speed = 0
    image_index = 1
}
