#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
bossHpBar(BG1KimMame)
sound_play(sndKimSpawn)
y = 448 - 115 - (32 * 32)
vspeed = 16
yy = 0
mode = 0
attack = 1
hp = 6
starthp = hp
dead = false
alarm[0] = 50
alarm[1] = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if dead exit
attack *= -1
a = instance_create(400 + 628*attack,528+32*-attack,BG1KimSpike)
a.hspeed = 8*-attack
a.image_xscale *= -attack
b = instance_create(400 + 628*attack,496+32*-attack,BG1KimSpike)
b.hspeed = 8*-attack
b.image_xscale *= -attack
sound_play(choose(sndKimAttack1,sndKimAttack2,sndKimAttack3))
alarm[0] = 150
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if dead
{
    a = instance_create(random_range(x-sprite_width/2,x+sprite_width/2), random_range(y-sprite_height/2,y+sprite_height/2), Explosion)
    a.killplayer = false
}
alarm[1] = 5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
yy = y + 240
if y >= 340 && mode == 0
{
    bossName("Kim Mame", "Best Guy 1", BG1KimMame)
    vspeed = 0
    mode = 1
    y = 340
}
if dead vspeed += 0.1
if y > 900 instance_destroy()
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if hp <= 0 and !dead
{
    sound_play(sndKimDeath)
    dead = true
}
