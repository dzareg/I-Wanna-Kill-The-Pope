#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
triggered = false
tag = 4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered
{
    LightEffect(c_white,0.1)
    sound_play(sndExplosion)
    sound_play(sndLovetrapTrigger)
    scrAchievementGet(7)
    instance_destroy()
}
