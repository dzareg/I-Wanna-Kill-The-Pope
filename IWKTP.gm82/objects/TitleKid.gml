#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
alarm[0] = 10
alarm[1] = 70
alarm[4] = 10
LightEffect(c_black,0.2)
vel = 0
mode = 1
triggered = false
polakous = false
polakousalpha = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///shadows
if image_index == 1 instance_create(x,y,TitleKidShadow)
alarm[0] = 3
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///sprite change
instance_create(x,y,TitleKidShadow2)
sound_play(sndIntroElectricNoise)
sound_play(sndIntroLaugh)
LightEffect(c_yellow,0.2)
scrScreenShake(2,15)
triggered = true
image_index = 1
alarm[2] = 100
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///background start moving
with TitleBackground
{
    image_xscale = 15;
    image_yscale = 15;
    triggered = true
}
alarm[3] = 75
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///create logo and title button
instance_create(400,200,Logo)
with TitleButton visible = true
with world musicPlay(0,musTitle)
alarm[5] = 8000
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///particles
if triggered
{
    with instance_create(random_range(view_xview,view_xview+view_wview),616,MenuParticle)
    {
        image_xscale = 2
        image_yscale = 2
        direction = random_range(270,90)
        curving = false
    }
}
alarm[4] = 1
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///audiophile achievement
scrAchievementGet(28)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vel += 0.01 * mode
if vel >= 0.2 || vel <= -0.2 mode *= -1
vspeed = vel
if polakous polakousalpha += 0.07

d += 14
outlinescale = 10+0.06*sin(degtorad(d)) //shoutout to happil 2
if image_index == 2 && outlinescale > 0 outlinescale -= 2
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with world ss_StopSound(curMusic)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprIntroKidOutline,image_index,x,y,outlinescale,outlinescale,0,c_white,image_alpha/10)
draw_sprite_ext(sprite_index,image_index,x,y,10,10,0,c_white,image_alpha)
draw_sprite_ext(sprite_index,2,x,y,10,10,0,c_white,polakousalpha)
