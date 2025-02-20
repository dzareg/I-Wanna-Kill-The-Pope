#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndBillyDie)
alarm[0] = 10
with spikeUp if y < 500 vspeed = 4
vspeed = 2
gravity = 0.2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = instance_create(x+random_range(-100,100), y+random(50), Explosion)
a.killplayer = false
a.depth = depth
alarm[0] = 10
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y >= 1000
{
    sound_play(sndBillyFuckYou)
    instance_create(room_width/2,room_height/2,BG1TorBoom);
    instance_destroy()
}
