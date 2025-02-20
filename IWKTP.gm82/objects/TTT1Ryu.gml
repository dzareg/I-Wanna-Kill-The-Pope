#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
bossName("Ryu", "TTT", TTT1Ryu)
vspeed = -12
gravity = 0.2
sound_play(sndTTT1Hadouken)
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed > 0 instance_destroy()
