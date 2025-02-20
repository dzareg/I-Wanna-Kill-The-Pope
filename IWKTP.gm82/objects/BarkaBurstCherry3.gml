#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
fire = false
mode = 1
image_xscale = 3
image_yscale = 3
alarm[0] = 3
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if fire
{
    with instance_create(x,y,BarkaRainbowCherry)
    {
        direction = random(360)
        speed = random_range(4,6)
    }
}
alarm[0] = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 1
{
    if x < 128
        hspeed += 0.1
    else
    {
        hspeed = 0
        x = 128
    }
}
if mode == -1
{
    if x > room_width-128
        hspeed -= 0.1
    else
    {
        hspeed = 0
        x = room_width-128
    }
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
splitobject(10,5,BarkaRainbowCherry,1,0,x,y)
