#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
hp = 8
starthp = hp
bossHpBar(DBCandleJoy)
image_xscale = 0
image_yscale = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if image_xscale < 1 image_xscale += 0.1
image_yscale = image_xscale
if instance_exists(player)
    move_towards_point(player.x,player.y,2.5)
else
    vspeed += 0.1
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if hp <= 0
{
    instance_create(x,y,bloodEmitter)
    sound_play(sndDeath)
    scrScreenShake(2,10)
    instance_destroy()
}
