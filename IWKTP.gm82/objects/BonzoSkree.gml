#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/8
vspeed = 2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/3
vspeed = 8
if player.x > self.x
    hspeed = 2
else
    hspeed = -2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player) && vspeed > 2
{
    if player.x > x
        hspeed = 2
    else
        hspeed = -2
}

if y >= sprite_height && vspeed == 2
{
    alarm[0] = 50
    vspeed = 0
    image_speed = 0
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y > room_height && direction != 0 instance_destroy()
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(player) exit
direction = point_direction(x,y,player.x,player.y)
image_angle = direction
speed = 8
