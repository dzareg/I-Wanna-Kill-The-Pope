#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 3
alarm[1] = 50
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 45
alarm[0] = 3
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop(sndBG2GustavLaser)
sound_play(sndBG2GustavLaser)
instance_create(x,y,BG2GustavLaser)
instance_destroy()
