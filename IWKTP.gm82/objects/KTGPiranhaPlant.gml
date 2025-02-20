#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/20
mode = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x,y+256,KTGPiranhaFireball)
    direction = 270
sound_play(sndKTGExorFireball)
alarm[0] = 125
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0
    y = lerp(y,128,0.05)
if y >= 100 && mode == 0
{
    alarm[0] = 50
    mode = 1
    bossName("Piranha Plant", "Kill The Guy", KTGPiranhaPlant)
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if vspeed < 0 instance_destroy()
