#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_index == 0
{
    repeat 20 instance_create(irandom_range(32,768),irandom_range(32,576),TDTarget)
    sound_play(snd2DCannonPrefire)
}
if image_index == 80
{
    with TDTarget alarm[0] = 1
    scrScreenShake(1,25)
    sound_play(snd2DCannonFire)
}
