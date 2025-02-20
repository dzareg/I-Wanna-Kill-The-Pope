#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dx = player.x - x;
dy = player.y - y;
agl = arctan2(dy,dx) + dth;

spd = 5;
hspeed = spd * cos(agl);
vspeed = spd * sin(agl);
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
