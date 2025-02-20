#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = -4
hspeed = 2
mode = 0
sound_play(sndMagikDie)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 20
vspeed += 0.2
if y >= room_width + 64 && mode == 0
{
    instance_destroy()
    with Boss1Controller event_user(0)
}
