#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 0
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 1
alarm[1] = 50
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 2
alarm[2] = 50
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if dame == 0
{
    alarm[0] = 50;
    dame = 1;
    visible = true;
    sound_play(sndBlockChange);
    with SpikeTrigger if tag == 2 triggered = true
    with instance_create(352,320,SpikeTrigger) {image_xscale = 5; tag = 3}
}
