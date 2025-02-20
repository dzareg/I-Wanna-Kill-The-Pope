#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
tag = 6
triggered = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if triggered
{
    hspeed = 2
    if player.x >= 640 || !instance_exists(player)
    {
        kill = true
        hspeed = 0
        sound_stop(sndBG1AoOni)
    }
}
if kill image_alpha -= 0.05
if image_alpha == 0 instance_destroy()
