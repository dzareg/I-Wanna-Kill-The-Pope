#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 40
die = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
splitobject(10, 6, MagikBullet, 1, 0, x, y)
sound_play(sndMagikGiantBullet)
speed = 0
die = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale < 3 image_xscale += 0.1
if image_yscale < 3 image_yscale += 0.1
if die
{
    image_xscale += 0.1
    image_yscale += 0.1
    image_alpha -= 0.05
    if image_alpha <= 0 instance_destroy()
}
