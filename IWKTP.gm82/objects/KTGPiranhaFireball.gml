#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/5
speed = 8
image_xscale = 0
image_yscale = 0
image_blend = c_red
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,GeezerBlock2) && !stop
{
    stop = true
    i = instance_create(x,y,KTGPiranhaFireball2);with i{direction=180;int=-1}
    i = instance_create(x,y,KTGPiranhaFireball2);with i{direction=180}
    i = instance_create(x,y,KTGPiranhaFireball2);with i{int=-1}
    i = instance_create(x,y,KTGPiranhaFireball2);
    instance_destroy()
}
if image_xscale < 4
{
    image_xscale += 0.8
    image_yscale += 0.8
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
