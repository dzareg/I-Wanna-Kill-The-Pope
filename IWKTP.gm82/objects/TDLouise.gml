#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
vspeed = 2
bossname = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed += 0.2
if y >= 1000
{
    if !instance_exists(TTTInfluka) instance_destroy()
    vspeed = -12
    x = random_range(128,room_width-128)
    y = room_height
}
if image_speed == 0 && y == room_height
{
    if !bossname
    {
        bossName("Louise", "Go To Two Dimensions", TDLouise)
        bossname = true
    }
    image_speed = 0.2
    image_index = 0
    sound_play(sndTDLouiseAttack)
    repeat 6 instance_create(random(room_width),random_range(room_height*2/3,room_height),TDLouiseTarget)
}
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndTDLouiseExplosion)
scrScreenShake(1,20)
image_speed = 0
image_index = 11
alarm[0] = 100

with TDLouiseTarget
{
    instance_create(x,y,TDLouiseExplosion)
    instance_destroy()
}
