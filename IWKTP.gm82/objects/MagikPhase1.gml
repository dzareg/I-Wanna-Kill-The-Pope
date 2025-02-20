#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
sound_play(sndMagikMock)
bossHpBar(MagikPhase1)
image_speed = 1/7
alarm[0] = 25
alarm[1] = 60
alarm[2] = 25
alarm[3] = 60
alarm[4] = 5
mode = 0
path_start(MagikPath1,12,false,false)
hp = 15
starthp = hp
shootcounter = 0
firemode = 1
xx = x+60*image_xscale
yy = y-20
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///shoot bullet
if shootcounter < 20 && firemode == 1 && mode == 1
{
    zx = instance_create(xx, yy, MagikBullet);
    zx.direction = point_direction(x+60*image_xscale, y-20, player.x, player.y)
    zx.speed = random_range(8,10);
    sound_play(sndShoot);
    shootcounter += 1
}
if shootcounter >= 20 {firemode = 2; shootcounter = 0}
alarm[0] = 4
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///shoot grenade
if firemode != 3
{
    zx = instance_create(x+60*image_xscale, y-20, MagikGrenade);
    zx.direction = point_direction(x+60*image_xscale, y-20, player.x, player.y)
    zx.speed = 10;
}
alarm[1] = 250
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///bullet ring on start
if mode == 0 {splitobject(10,6,MagikBullet,1,0,xx,yy); sound_play(sndShoot)}
alarm[2] = 10
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///shoot big bullet
if firemode == 2 && mode == 1
{
    zx = instance_create(xx, yy, MagikGiantBullet);
    zx.direction = point_direction(x+60*image_xscale, y-20, random(room_width), -100)
    zx.speed = random_range(6,10)
    sound_play(sndShoot);
    shootcounter += 1
    if shootcounter >= 10 && firemode != 3 {firemode = 3; shootcounter = 0; teleport = true}
}
alarm[3] = 20
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//if firemode == 3
//{
//    zx = instance_create(x+60*image_xscale, y-20, MagikGrenade);
//    zx.direction = point_direction(x+60*image_xscale, y-20, player.x, player.y)
//    zx.speed = 6;
//    sound_play(sndMagikGrenade)
//}
alarm[4] = 50
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
xx = x+40*image_xscale
yy = y
if x >= 736 && mode == 0
{
    sprite_index = sprMagikIdle
    speed = 0
    y = 406
    x = 736
    path_end()
    bossName("The Magik","",MagikPhase1)
    mode = 1
    firemode = 1
}
if firemode == 3
{
    y = 448
    sprite_index = sprMagikSpawn
    image_yscale -= 0.02
    image_alpha = image_yscale
    with BossHPBar visible = false
    if image_yscale < 0
    {
        x = room_width/2 + (room_width/2-64) * image_xscale
        firemode = 4
    }
}
if firemode == 4
{
    image_yscale += 0.02
    image_alpha = image_yscale
    if image_yscale >= 1
    {
        firemode = 1
        sprite_index = sprMagikIdle
        with BossHPBar visible = true
        y = 406
    }
}
if player.x > x && instance_exists(player) image_xscale = 1 else image_xscale = -1
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if hp <= 0
{
    a = instance_create(x,y,Magik1Death)
    a.hspeed *= image_xscale
    instance_destroy()
}
