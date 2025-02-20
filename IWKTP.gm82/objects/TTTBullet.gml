#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
getrekt = 10
speed = 5
alarm[0] = 10
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
getrekt = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if getrekt == 1 && place_meeting(x,y,block)
{
    scrVisualEffect(x,y,sprTTTExplosion,1/2,1,1,-11,c_white)
    sound_play(sndTTTExplosion)
    instance_destroy()
}
