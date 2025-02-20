#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//sound_play(sndGameOver)
image_alpha = 0
alarm[0] = 50
if !instance_exists(GameOverTint)
    instance_create(view_xview,view_yview,GameOverTint)
fadein = false
if global.options[3] == 1 with world musicfadeout = true
with world
{
    ss_StopSound(musJustination)
    ss_StopSound(musWorldPeace)
    ss_StopSound(musSatan)
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fadein = true
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.options[3] == 1 with world ss_PlaySound(musGameOver)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1 && fadein image_alpha += 0.01
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with world
{
    musicfadeout = false
    ss_StopSound(musGameOver)
    ss_SetSoundVol(curMusic,vol)
}
