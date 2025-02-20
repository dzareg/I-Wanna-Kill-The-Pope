#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 0
image_yscale = 0
image_angle = -200
mode = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    with instance_create(x,y,KTGBoshyBullet)
    {
        speed = 4
        direction = random_range(180,360)
        sound_play(sndKTGBoshyShoot)
    }
}
alarm[0] = 12
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0
{
    if image_xscale < 1
    {
        image_xscale += 0.02
        image_yscale += 0.02
        image_angle += 4
    }
    if image_xscale == 0.98
    {
        vspeed = 6
        bossName("Dark Boshy", "Kill The Guy", KTGDarkBoshy)
    }
    if y >= 700
    {
        x = room_width-128
        vspeed = -12
        mode = 1
    }
    vspeed += 0.2
}
if mode == 1
{
    vspeed += 0.2
    if y <= 464
    {
        image_angle = 0
        vspeed = 0
        mode = 2
    }
}
if mode == 2 && gravity == 0
{
    angle += 4
    y = 464 + lengthdir_y(20, angle)
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if gravity > 0 instance_destroy()
