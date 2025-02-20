#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle = random_range(0,359)
image_xscale = 0
image_yscale = 0
move_towards_point(player.x,player.y,6)
shake = 0
go = 1
alarm[0] = 5
alarm[1] = 20
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if go == 1
{
    instance_create(x,y,TTT1RobokBall2)
    alarm[0] = 5
}
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
go = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += 8
if image_xscale < 1
{
    image_xscale += 0.1
    image_yscale += 0.1
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
