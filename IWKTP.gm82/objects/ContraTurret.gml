#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 150
alarm[1] = 1
vspeed = 2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    with instance_create(x,y,ContraProjectile)
    {
        speed = 7
        direction = point_direction(x,y,player.x,player.y)
        other.image_angle = direction
    }
}
alarm[0] = 75
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player other.image_angle = point_direction(other.x,other.y,x,y)
alarm[1] = 20
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y >= 336
{
    if vspeed != 0 sound_play(sndContraSentryClank)
    vspeed = 0
    y = 336
}
else vspeed += 0.2
if destroy
{
    with instance_create(x,y,Explosion)
    {
        image_xscale = 0.5
        image_yscale = 0.5
        image_speed = 0.5
    }
    instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,image_alpha)
draw_sprite_ext(sprContraSentry,-1,x,y,1,1,image_angle,c_white,image_alpha)
