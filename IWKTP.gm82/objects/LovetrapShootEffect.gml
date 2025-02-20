#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_blend = c_red
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i = 1; i < 6; i += 1)
{
    k = instance_create(x,y,CherryBounce)
    k.speed = 6
    k.direction = random(90) + i*360/6
}
sound_play(sndShootEffect)
instance_destroy()
