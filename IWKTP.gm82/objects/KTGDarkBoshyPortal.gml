#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 0
image_yscale = 0
image_speed = 1/5
alarm[0] = 100
alarm[1] = 150
die = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,KTGDarkBoshy)
sound_play(sndItsBoshyTime)
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y+45*choose(-1,0,1),KTGDarkBoshyPlatform)
alarm[1] = 15
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_xscale < 1
{
    image_xscale += 0.02
    image_yscale += 0.02
}
image_angle += 4
if die
{
    image_xscale -= 0.04
    image_yscale -= 0.04
    if image_xscale < 0 instance_destroy()
}
