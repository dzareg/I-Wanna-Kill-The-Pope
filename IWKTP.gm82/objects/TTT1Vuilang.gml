#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
bossName("Vuilang", "TTT", TTT1Vuilang)
sound_play(sndTTT1Vuilang)
alarm[0] = 60
dir = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndTTT1VuilangAttack)
repeat 6
{
    j = instance_create(x,y,TTT1Mudo)
    j.speed = random_range(1,4)
    j.direction = 180+dir
    dir += 30
}
