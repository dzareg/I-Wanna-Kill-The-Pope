#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = -12
alarm[0] = 150
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if gravity == 0 instance_create(x,y,TTTRixenonTurret)
alarm[0] = 150
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = lerp(x,xstart-300,0.1)
angle += 10;
image_angle = lengthdir_y(5, angle);
//if x <= xstart-400 && hspeed < 0
//{
//    hspeed = 0
//}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x < room_width && y > room_height instance_destroy()
