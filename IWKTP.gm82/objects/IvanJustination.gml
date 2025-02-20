#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,IvanJustinationInvertColor)
intensity = 8
image_speed = 0
image_index = 1
image_alpha = 0
alarm[0] = 2
alarm[1] = 2
hp = 10
tag = 10
with world
{
    musicfadeout = true
    ss_LoopSound(musJustination)
    ss_SetSoundVol(musJustination,vol)
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha >= 1
{
if IvanButton3.triggered
{
    zx = instance_create(0, 0, deliciousFruit);
    zx.direction = random_range(-90,0);
    zx.speed = random_range(3,5);
    zx.sprite_index = choose(sprCherry, sprIvanWhiteCherry, sprIvanCyanCherry);
    zx.a = random_range(1/2, -1/2);
    zx.image_xscale = 1/2;
    zx.image_yscale = 1/2;
    zx.depth = -101;
    zx.image_speed = 0

    zx = instance_create(room_width, 0, deliciousFruit);
    zx.direction = random_range(180,270);
    zx.speed = random_range(3,5);
    zx.sprite_index = choose(sprCherry, sprIvanWhiteCherry, sprIvanCyanCherry);
    zx.a = random_range(1/2, -1/2);
    zx.image_xscale = 1/2;
    zx.image_yscale = 1/2;
    zx.depth = -101;
    zx.image_speed = 0
}
else
{
    zx = instance_create(x, y, deliciousFruit);
    zx.direction = random_range(360,180);
    zx.speed = random_range(6 - intensity/2, 7 - intensity/2);
    zx.sprite_index = choose(sprCherry, sprIvanWhiteCherry, sprIvanCyanCherry);
    zx.a = random_range(1/2, -1/2);
    zx.image_xscale = 1/2;
    zx.image_yscale = 1/2;
    zx.depth = -101;
    zx.image_speed = 0
}
}
a = intensity
if IvanButton3.triggered a = 8
alarm[0] = a
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//with IvanJustinationShadow instance_destroy()
if !die
{repeat 2 instance_create(x,y,IvanJustinationShadow)}
alarm[1] = intensity / 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
TagCheck()
if image_alpha < 1
{
    image_alpha += 0.04
    if image_alpha == 0.96 bossName("Justination","Just Trap 2 Remake",0)
}
if triggered && intensity != 6
{
    intensity = 6;
    sound_play(sndBlockChange)
}
IFrameControl()
if die
{
    image_alpha -= 0.1
    with IvanJustinationShadow instance_destroy()
    if image_alpha < 0 instance_destroy()
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if other.noclip BulletCollision()
if hp <= 0 && !die
{
    scrAchievementGet(2)
    sound_stop_all()
    sound_play(sndJustinationDeath)
    die = true
    with world ss_StopSound(musJustination)
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with world
{
    ss_StopSound(musJustination)
    ss_SetSoundVol(curMusic,8000+global.options[0]*20)
}
