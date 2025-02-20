#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
warpxb = warpx
warpyb = warpy
triggered = false
polakous = 0
warpcollision = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if warpcollision && room == rCrimson image_angle += 16
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndBlockChange)
with instance_create(warpxb,warpyb,warp)
{
    roomTo = other.warproomTo
    polakous = other.polakous
}
LightEffect(c_white,0.5)
triggered = true
x = -999999
y = -999999
sound_play(sndBlockChange)
with savePoint instance_destroy()
with SpikeTrigger if tag == other.tag triggered = true
if room == rShowdown
{
    instance_create(192,368,movingPlatform)
    instance_create(192,224,movingPlatform)
    instance_create(480,192,SDTimeBlock)
}
if room == rLoveTrap || room == rSSC {with SpikeTrigger {if tag == 10 triggered = true}}
#define Collision_SpikeTrap
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !warpcollision && room == rCrimson
{
    hspeed = 1
    vspeed = -2
    gravity = 0.1
    warpcollision = true
}
