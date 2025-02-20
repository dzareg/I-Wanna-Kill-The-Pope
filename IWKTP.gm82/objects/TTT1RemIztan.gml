#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
move_towards_point(player.x,player.y,8)
image_angle = random_range(0,359)
alarm[0] = 20
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//sound_play(sndTTT1Iztan)
for(i = 1; i < 6; i += 1)
{
    h = instance_create(x,y,TTT1RemIztan2)
    h.speed = 5
    h.direction = (360/5 * i)
}
instance_destroy()
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
