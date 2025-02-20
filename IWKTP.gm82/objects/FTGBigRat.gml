#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
bossName("Big Rat", "FTG", FTGBigRat)
image_alpha = 0
alarm[0] = 50
alarm[1] = 3
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(LovetrapCherryPapa) || !instance_exists(player) exit
for(i = 0; i < 3; i += 1)
{
    l = instance_create(x,y,deliciousFruit)
    l.sprite_index = sprFTGBigRatRat
    l.direction = point_direction(x,y,player.x,player.y)
    l.speed = 4+i
    l.image_angle = point_direction(x,y,player.x,player.y)
}
sound_play(sndShoot)
alarm[0] = 100
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrBossShadow(FTGBigRat, 0.1)
alarm[1] = 3
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(LovetrapCherryPapa)
{
    a += 2
    x = room_width/2 + lengthdir_y(300,a)
    if x > room_width/2 image_xscale = -1 else image_xscale = 1
}
else hspeed += 0.2*image_xscale
if image_alpha < 1 image_alpha += 0.05
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
