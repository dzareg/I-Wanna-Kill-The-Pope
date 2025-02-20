#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15
image_xscale = 2
image_yscale = 2
vspeed = random_range(6,8)
alarm[0] = 30
die = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
die = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if die
{
    image_xscale -= 0.1
    image_yscale -= 0.1
}
if image_xscale <= 1 && instance_exists(player)
{
    a = point_direction(x,y,player.x,player.y)
    for(i = a; i <= 360+a; i+= random_range(20,40))
    {
        asdx = instance_create(x,y,DestinationDKGreenCherry)
        asdx.speed = 4
        asdx.direction = i
    }
    var b;
    b = instance_create(x,y,deliciousFruit)
    b.sprite_index = sprCherryGreen
    b.speed = 4
    b.direction = a
    sound_play(sndShoot)
    instance_destroy()
}
