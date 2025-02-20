#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
bossName("Willy", "Guy", GuyWilly)
image_xscale = 3
image_yscale = 3
path_start(WillyPath,4,3,true)
alarm[0] = 300
turn = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(MagikPhase2)
{
    instance_create(x,y,WillyFireball)
    sound_play(sndWillyFireball)
}
alarm[0] = 200
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
turn = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
index += 0.2
if index >= 4 index = 0
if path_position <= 0.01 || path_position >= 0.99
{
    if !turn
    {
        image_xscale *= -1
        turn = true
        alarm[1] = 30
    }
}
if !instance_exists(MagikPhase2)
{
    path_end()
    vspeed -= 0.2
    if y < -128 instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,3,image_angle,c_white,1)
draw_sprite_ext(sprWilly,index,x,y-1,image_xscale,3,image_angle,c_white,1)
draw_sprite_ext(sprWillyRocket,index/2,x,y+56*3,image_xscale,3,image_angle,c_white,1)
