#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
image_speed = 1/5
hp = 6
starthp = hp
y = 448 - 40 - (32 * 32)
vspeed = 16
alarm[0] = 80
sound_play(sndPDSpawn)
bossHpBar(BG1PDSpirit)
bossName("PD Great Spirit", "Best Guy 1",BG1PDSpirit)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndPDAttack)
sprite_index = sprBG1PDAttack
alarm[0] = 150
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if y >= 375
{
    y = 375
    vspeed = 0
}
if image_index >= 6
{
    sprite_index = sprBG1PDIdle;
    repeat 5 instance_create(random(room_width), random_range(-256,-16), BG1PDBall)
    sound_play(sndExplosion)
    scrScreenShake(2,10)
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if hp <= 0
{
    instance_create(x,448,BG1PDCorpse);
    a = instance_create(x,y,Explosion)
    a.image_xscale *= 4
    a.image_yscale *= 4
    a.killplayer = false
    sound_play(sndPDDie);
    instance_destroy()
}
