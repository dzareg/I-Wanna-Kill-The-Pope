#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = 32
mode = 0
bossName("Exor", "Kill The Guy", KTGExor)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 2
vspeed = -16
alarm[1] = 100
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    x = player.x
    vspeed = 32
    mode = 0
    y = -room_height/2
    sound_play(sndSpikeTrap)
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if y >= room_height+32 && mode == 0
{
    repeat 3 instance_create(random_range(64,room_width-64),-64,KTGExorCloud)
    vspeed = 0
    alarm[0] = 50
    sound_play(sndBreak)
    scrScreenShake(1,5)
    mode = 1
}
d += 6*sign(3)
image_angle = 15*sin(degtorad(d))
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(KTGPiranhaPlant) instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index,-1,x,y,4,4,0,c_white,image_alpha)
draw_sprite_ext(sprKTGExorEye,-1,x-45,y-399, 3,3,image_angle,c_white,image_alpha)
draw_sprite_ext(sprKTGExorEye,-1,x+45,y-399,-3,3,image_angle,c_white,image_alpha)
