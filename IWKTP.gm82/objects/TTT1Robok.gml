#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
bossName("Robok", "TTT", TTT1Robok)
sound_play(sndTTT1RobokSpawn)
alarm[0] = 50
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,TTT1RobokBall)
sound_play(sndTTT1RobokAttack)
alarm[0] = 75
