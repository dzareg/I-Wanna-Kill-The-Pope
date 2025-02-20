#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
entering = false
textscale = 0
image_speed = 1/2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
entering = false
if xx != 0 && yy != 0
{
    if instance_exists(player)
    {
        with KTGDoorDarkness getreal = false
        player.frozen = false
        player.visible = true
        player.x = xx
        player.y = yy
    }
}
else
{
    with player instance_destroy()
    if roomTo == rBoss2A scrAchievementGet(6)
    room_goto(roomTo)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if entering && instance_exists(player)
{
    player.frozen = true
    player.x = x
    player.y = y
    player.visible = false
}
if !place_meeting(x,y,player) && textscale > 0 textscale -= 0.1
if  place_meeting(x,y,player) && !entering && textscale < 1 textscale += 0.1
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    if keyboard_check_pressed(global.controls[2]) && !locked && !entering && player.vspeed = 0
    {
        with KTGDoorDarkness getreal = true
        entering = true
        alarm[0] = 50
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !locked draw_sprite(sprite_index,0,x,y)
else draw_sprite(sprite_index,1,x,y)
