#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
bossName("DJ Banana", "TTT", TTT1DJBanana)
fire = false
dir = 0
alarm[0] = 100
alarm[1] = 2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fire = !fire
dir = 0
alarm[0] = 100
alarm[1] = 2
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if fire
{
    dir += 35
    c = instance_create(x,y,TTT1Banana)
    c.speed = 5
    c.direction = dir
    d = instance_create(x,y,TTT1Banana)
    d.speed = 5
    d.direction = dir+180
    alarm[1] = 7
}
