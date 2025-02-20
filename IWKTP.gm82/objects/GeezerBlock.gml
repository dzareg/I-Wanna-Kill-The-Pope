#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if room == rBoss2C sprite_index = sprGeezerBlock
alarm[0] = 10
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1
if room == rBoss2A && sprite_index != sprGeezerBlock exit
image_alpha = random_range(0.2,1)
with spikeUp image_alpha = random_range(0.2,1)
