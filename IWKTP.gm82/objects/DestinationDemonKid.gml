#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 8
image_yscale = 8
image_speed = 1/5
vspeed = 6
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed >= 0 instance_create(random_range(64,room_width-64),-128,DestinationDKBurstCherry)
alarm[0] = 75
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y >= 144 && vspeed > 0
{
    vspeed = 0
    alarm[0] = 50
    bossName("Demon Kid", "Destination", DestinationDemonKid)
    bossName("Rukito", "SSR 2", SSR2Rukito)
}
if vspeed == 0
{
    angle += 4
    y = 196 + lengthdir_y(20, angle)
}
with player
{
    if x < other.x other.image_xscale = -8
              else other.image_xscale =  8
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed < 0 instance_destroy()
