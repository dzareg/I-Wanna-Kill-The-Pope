#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
image_xscale = -1
hp = 10
starthp = hp
mode = 0
shoot = -1
xx = x+40*image_xscale
yy = y-40
alarm[0] = 100
alarm[1] = 5
alarm[2] = 5
image_speed = 1/5
vspeed = 8
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode != 2
{
    image_xscale *= -1
    with instance_create(xx,yy,MagikGiantBullet)
    {
        direction = 90+90*other.image_xscale+random_range(-30,30)
        speed = 1
        //image_xscale *= 3
        //image_yscale *= 3
    }
    sound_play(sndShoot)
}
alarm[0] = 100
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if hp < starthp * 2/3 && mode != 2
{
    scrScreenShake(2,10)
    sound_play(sndBreak)
    repeat 4
    {
        with instance_create(irandom_range(1,23)*32,-32,spikeRight)
        {
            sprite_index = sprBG1BillySpike
            vspeed = 5
            depth = -10
        }
    }
}
alarm[1] = 125
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player) && mode == 2
{
    var a;
    a = instance_create(xx,yy,MagikBullet)
    a.direction = random_range(180,360)
    a.speed = random_range(3,5)
    a.lol = true
    sound_play(sndShoot)
}
alarm[2] = 5
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 3
hp = 15
starthp = hp
bossHpBar(MagikPhase3)
shield = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
xx = x+40*image_xscale
yy = y-40

if mode == 0 && y >= 256
{
    bossHpBar(MagikPhase3)
    sound_play(sndJestemBogiem)
    vspeed = 0
    mode = 1
}
if mode != 0
{
    angle += 4
    y = 256 + lengthdir_y(10, angle)
}

with spikeRight {if vspeed != 0 {image_angle += 18}}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
/*
if hp <= starthp * 1/3 && !instance_exists(BG1Van)
{
    with instance_create(view_xview[0]+800,view_yview[0],Polakous)
    {
        sprite_index = sprVanWarning
        image_alpha = 0.5
    }
    sound_play(sndDeepDarkFantasies)
    instance_create(256,0,BG1Van)
    instance_create(544,0,BG1Van)
}*/
if hp <= 0
{
    if mode == 1
    {
        sound_play(sndBG2RakhrisBreak)
        scrScreenShake(2,10)
        scrVisualEffect(x,y-40,sprBG2RakhrisBreak,1/5,1,1,-10,c_white)
        with BossHPBar instance_destroy()
        with player
        {
            if x < room_width/2
                instance_create(36,448,BG1VanLaser)
            else
                instance_create(room_width-36,448,BG1VanLaser)
        }
        shield = true
        alarm[3] = 300
        mode = 2
    }
    if mode == 3
    {
        repeat 3 instance_create(x,y,bloodEmitter)
        scrScreenShake(1,10)
        with BG1VanSpike instance_destroy()
        with MagikBullet instance_destroy()
        with DimLights instance_destroy()
        with spikeRight if vspeed != 0 instance_destroy()
        sound_play(sndMagikDie2)
        with world musicfadeout = true
        instance_destroy()
        instance_create(room_width/2,-200,MagikDeathGun)
        LightEffect(c_white,0.5)
    }
}
