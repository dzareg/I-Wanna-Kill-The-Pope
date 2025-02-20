#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 4
image_yscale = 4
sound_play(sndTVStatic)
alarm[0] = 10
infinite = false
with playerKiller if speed != 0 instance_destroy()
if room == rBoss2C
{
    with VisualEffect instance_destroy()
    with TTTMissingnoIceDeath instance_destroy()
    with KTGDarkBoshyPlatform instance_destroy()
    with WillyFire instance_destroy()
    with KTGExorCloud instance_destroy()
    with KTGExorLighting instance_destroy()
    with BG2GustavLaserLock instance_destroy()
    with BG2GustavLaser instance_destroy()
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !infinite instance_destroy()
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = view_xview
y = view_yview
