#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
yy = 0
sound_play(sndIntroElectricNoise)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
yy += 32
for(i=0; i < 23; i+=1)
    instance_create(48+32*i,room_height-yy,BG2Explosion)
if yy >= 96
{
    with Boss2Controller alarm[1] = 50
    with TigerBonzo alarm[2] = 70
    instance_destroy()
}
sound_play(sndBG2Explosion)
scrScreenShake(1,10)
alarm[0] = 2
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 30
image_speed = 0
image_alpha = 0
