#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
mode = 0
angle = 0
vspeed = 10
alarm[0] = 100
alarm[1] = 150
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,CrimsonLittleShiratama)
sound_play(sndCrimsonLittleShiratamaThrow)
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(random_range(128,room_width-128),-32,CrimsonBatGrenade)
alarm[1] = 40
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed > 0 && mode == 0
{
    vspeed -= 0.1
    if y >= 196
    {
        vspeed = 0
        mode = 1
        bossName("The Bat", "Crimson", CrimsonBat)
    }
}
if mode == 1 && vspeed == 0
{
    angle += 2
    y = 196 + lengthdir_y(10, angle)
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed == -8 instance_destroy()
