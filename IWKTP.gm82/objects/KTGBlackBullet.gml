#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
spd = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y-2,player)
{
    player.hspeed += hspeed
    if keyboard_check(global.controls[2]) y -= 3
    if keyboard_check(global.controls[3]) y += 3
}
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x+16,y+16,KTGDeadBullet)
instance_destroy()
