#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
vspeed = 10
redalpha = 0
mode = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 3
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0
{
    if image_alpha < 1 image_alpha += 0.05
    if vspeed > 0 vspeed -= 0.2
    else
    {
        //.instance_create(x,y,KTGExorLighting)
        mode = 1
    }
}
if mode == 1
{
    redalpha += 0.04
    if redalpha >= 1
    {
        instance_create(x,y,KTGExorLighting)
        redalpha = 0
        mode = 2
        alarm[0] = 30
    }
}
if mode == 3
{
    vspeed -= 0.1
    //redalpha -= 0.04
    image_alpha -= 0.02
    if image_alpha <= 0 instance_destroy()
}

/*if a == 0
{
    if speed = 0
    {
        a = 1
        instance_create(x,y,KTGExorLighting)
        alarm[1] = 10
        exit;
    }
    else
    {
        redalpha += add
        speed -= 0.1
    }
}
if a == 1 && vspeed < 0
{
    redalpha -= 0.02
    image_alpha -= 0.02
    if image_alpha <= 0 instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,redalpha)
