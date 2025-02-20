#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = -2
gravity = 0.2
hspeed = choose(-2,2)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 10
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with GeezerBlock2 instance_create(x,y,CrimsonLittleShiratamaSpike)
sound_play(sndSpikeTrap)
instance_destroy()
