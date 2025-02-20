#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//centerY = 66 -> 132
event_inherited()
y += 66
hp = 12
starthp = hp
image_speed = 1/5
image_alpha = 0
image_yscale = 0
alarm[0] = 100
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    with instance_create(x+54,y,RTGZombieGuyBullet)
    {
        direction = point_direction(x,y,room_width/2+random_range(-150,150),0)
        speed = 6
        sound_play(sndShoot)
    }
}
alarm[0] = 75
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if image_yscale < 1
    image_yscale += 0.02
if image_yscale == 0.98
{
    bossHpBar(RTGZombieGuy)
    bossName("Zombie Guy", "Revive The Guy", RTGZombieGuy)
    sprite_index = sprRTGZombieGuy
    y = ystart
}
image_alpha = image_yscale
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if hp <= 0
{
    repeat 2 instance_create(x+random_range(-20,20),y+random_range(-20,20),bloodEmitter)
    with SDSpaceGuy shield = false
    bossHpBar(SDSpaceGuy)
    sound_play(sndDeath)
    scrScreenShake(1,10)
    instance_destroy()
}
