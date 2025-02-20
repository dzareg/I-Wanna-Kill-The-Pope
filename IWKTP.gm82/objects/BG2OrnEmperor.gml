#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
image_alpha = 0
mode = 0
triggered = false
tag = 12
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 2
splitobject(50,10,deliciousFruit,0,0,x,y-250)
alarm[1] = 30
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 1
alarm[0] = 100
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if image_alpha < 1 && triggered && player.y > 700 image_alpha += 1/70
if image_alpha == 69/70 mode = 1
if image_alpha == 1/70
{
    sound_stop_all()
    alarm[0] = 130
    with world musicfadeout = true
    sound_play(sndOrnEmperorTrap)
}
if mode == 1
{
    sprite_index = sprBG2OrnDance
    image_speed = 1
    a = instance_create(x,y-250,deliciousFruit)
    a.speed = 10
    a.direction = random(360)
}
if mode == 2
{
    sprite_index = sprBG2OrnIdle
    image_index = 1
    image_speed = 0
}
