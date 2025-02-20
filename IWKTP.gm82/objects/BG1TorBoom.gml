#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndTorStart)
instance_create(48,384,BG2Arrow)
instance_create(752,384,BG2Arrow)
instance_create(0,224,RedTint)
alarm[0] = 5
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndTorBoom)
sound_stop(sndTorCharge)
with BG2Arrow instance_destroy()
with BG1PDCorpse instance_destroy()
with BG1PDSpirit
{
    sound_play(sndPDDie)
    instance_destroy()
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play(sndTorCharge)
alarm[0] = 15
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale += 0.05
image_yscale += 0.05
if image_xscale >= 10
{
    LightEffect(c_white,0.1)
    instance_create(0,224,BG1TorBoomKiller);
    instance_destroy();
    with RedTint instance_destroy()
    sound_play(sndExplosion)
    with Boss1Controller event_user(0)
}
