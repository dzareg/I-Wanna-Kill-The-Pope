#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
bossName("Van Darkholme", "Best Guy 1", BG1Van)
alarm[0] = 100
mode = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,BG1VanSpike)
alarm[0] = 100
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player) && instance_exists(MagikPhase3)
{
    if player.x > x image_xscale = -1 else image_xscale = 1
}
else
    hspeed += 0.1*image_xscale
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
