#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/4
image_xscale = 2
image_yscale = 2
sound_play(sndBossShield)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha -= 0.05
image_xscale += 0.02
image_yscale += 0.02
if image_alpha <= 0 instance_destroy()
