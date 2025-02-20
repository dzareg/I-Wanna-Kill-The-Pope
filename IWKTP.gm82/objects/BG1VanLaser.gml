#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
image_speed = 1/3
image_xscale = 0.1
alarm[0] = 100
mode = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndBG1VanLaser)
scrScreenShake(4,10)
mode = 1
alarm[1] = 50
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 2
instance_create(x,y-222,BG1Van)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1 image_alpha += 0.05
if mode == 1
{
    if image_xscale < 1 image_xscale += 0.05
    if place_meeting(x,y,player) killPlayer()
}
if mode == 2
{
    if image_xscale > 0 image_xscale -= 0.1
    else instance_destroy()
}
