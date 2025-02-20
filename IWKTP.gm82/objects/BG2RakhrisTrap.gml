#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = -1
image_alpha = 0.8
tag = 7
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered && hspeed == 0
{
    hspeed = 14
    sound_play(sndRakhrisAttack)
}
