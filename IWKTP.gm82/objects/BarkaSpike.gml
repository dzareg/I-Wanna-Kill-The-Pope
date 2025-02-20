#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = -8
alarm[0] = 4
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x < room_width-32 && hspeed == -8
    with instance_create(x,y,spikeUp) sprite_index = sprGeezerSpike
alarm[0] = 4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x <= 32
{
    hspeed = 0
    x = 32
}
