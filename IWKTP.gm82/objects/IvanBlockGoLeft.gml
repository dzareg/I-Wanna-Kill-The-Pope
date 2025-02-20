#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = false
collision = false
getreal = false
tag = 2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndSpikeTrap)
getreal = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered {if x > xstart - 128 hspeed = -4 else hspeed = 0}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !collision
{
    alarm[0] = 25;
    collision = true
}
