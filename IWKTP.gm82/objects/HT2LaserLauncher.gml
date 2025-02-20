#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1
tag = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered && instance_exists(player)
{
    sound_play(sndHT2Laser);
    splitobject(1,6,HT2Laser,1,0,x+16,y+16)
}
alarm[0] = 35
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
