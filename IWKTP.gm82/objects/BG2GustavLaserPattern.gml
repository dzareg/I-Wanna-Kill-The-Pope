#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndBG2GustavLaserAttack)
alarm[0] = 50
alarm[1] = 5
alarm[2] = 100
a = 64
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i = 0; i < 30; i += 1)
    instance_create(48 + 96*i + a,room_height-48,BG2GustavLaserLock)
a += 32
if a >= 96 a = 0
alarm[0] = 50
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(player) instance_destroy()
instance_create(player.x,player.y,BG2GustavLock)
alarm[1] = 5
