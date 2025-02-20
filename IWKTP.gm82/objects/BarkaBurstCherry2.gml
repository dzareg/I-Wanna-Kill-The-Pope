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
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
splitobject(10,5,BarkaRainbowCherry,1,0,x,y)
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
alarm[0] = 4
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 1
{
    if y < room_height/2
        vspeed += 0.1
    else
    {
        vspeed = 0
        y = room_height/2
    }
}
if mode == -1
{
    if y > room_height/2
        vspeed -= 0.1
    else
    {
        vspeed = 0
        y = room_height/2
    }
}
if die
{
    image_xscale -= 0.2
    image_yscale -= 0.2
    if image_xscale <= 0 instance_destroy()
}
