#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = 8
image_speed = 1/4
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    with instance_create(x,y,TTTMissingnoIce)
    {
        speed = 5
        direction = point_direction(x,y,player.x,player.y)
    }
    scrVisualEffect(x,y,sprTTT1MissingnoIceEffect,1/2,1,1,depth-1,c_white)
    sound_play(sndTTTMissingnoIce)
}
alarm[0] = 75
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y >= 176 && vspeed == 8
{
    vspeed = 0
    alarm[0] = 75
    bossName("MissingNo","TTT",TTTMissingno)
    bossName("Rixenon","TTT",TTTRixenon)
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if x < 0 instance_destroy()
