#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
bossName("PD Great Spirit", "TTT", TTT1PDSpirit)
sound_play(sndTTT1PDSpawn)
alarm[0] = 70
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,TTT1PDFireball)
sound_play(sndTTT1PDAttack)
alarm[0] = 10
