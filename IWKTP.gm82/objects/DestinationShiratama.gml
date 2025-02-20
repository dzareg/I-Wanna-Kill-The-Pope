#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
vspeed = 5
alarm[1] = 10
image_alpha = 0
hp = 12
starthp = hp
shield = true
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with instance_create(x,y,deliciousFruit)
{
    sprite_index = choose(sprCherry,sprCherryPink,sprCherryOrange,sprCherryViolet,sprCherryCyan,sprCherryYellow,sprCherryWhite)
    direction = random_range(225,315)
    speed = random_range(2,4)
    image_xscale = 0.7
    image_yscale = 0.7
}
if !instance_exists(CrimsonRed) &&
   !instance_exists(CrimsonYellow) &&
   !instance_exists(FTGBlue) &&
   !instance_exists(FTGMetal)
{
    if shield
    {
        instance_create(room_width/2,room_height*2,BG2Rot)
        instance_create(x,y,PowerEffect)
        shield = false
    }
    alarm[0] = 10
    exit
}
alarm[0] = 20
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if hp <= 0
{
    a = instance_create(x+random_range(-40,40), y+random(40), Explosion)
    a.image_xscale = 0.5
    a.image_yscale = 0.5
    a.killplayer = false
}
alarm[1] = 10
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
if vspeed > 0 vspeed -= 0.05
if image_alpha < 1 image_alpha += 0.02
if image_alpha == 0.9
{
    bossHpBar(DestinationShiratama)
    bossName("Prince Shiratama", "Destination", DestinationShiratama)
    alarm[0] = 5
}
if hp <= 0 && gravity == 0
{
    with BG2Rot mode = 2
    sound_play(sndShiratamaDeath)
    image_angle += 4
    gravity = 0.5
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if hp <= 0
{
    instance_create(400,384,BonzoText)
    with Boss2Controller alarm[0] = 150
    instance_destroy()
}
