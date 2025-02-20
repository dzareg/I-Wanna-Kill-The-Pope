#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 100
alarm[1] = 50
image_yscale = 0
image_alpha = 0
die = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,SSR2RukitoArrow)
alarm[0] = 20
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(48,room_height-64,SSR2RukitoLaunchArrow)
with instance_create(room_width-48,room_height-64,SSR2RukitoLaunchArrow) direction = 180
alarm[1] = 200
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1 && !die
{
    image_alpha += 0.02
    image_yscale += 0.02
    if image_alpha == 0.98
    {
        sprite_index = sprSSR2Rukito
        y = ystart-120
    }
}
if die
{
    sprite_index = sprSSR2RukitoSpawn
    y = ystart
    image_yscale -= 0.02
    image_alpha -= 0.02
    if image_alpha < 0 instance_destroy()
}
