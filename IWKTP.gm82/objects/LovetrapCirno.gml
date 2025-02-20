#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 0
alarm[1] = 300
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///path start
path_start(PathCirnoDango,5,true,false)
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///fire
if mode == 3 exit
path_speed = 0
for (i=0; i<7; i+=1)
{
    if i == 3 i += 1

    a = instance_create(x,y,LovetrapCirnoChild)
    a.vspeed = (i-4) * 0.4;
    a.hspeed = 0;
    a.spd = 5;
    a.alarm[0] = 96;

}
alarm[2] = 96
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///continue
path_speed = 5;
alarm[1] = 150 + irandom(150);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0
{
    x += 4
    if x >= 48
    {
        x = 48
        mode = 1
    }
}
if mode == 1
{
    bossName("Cirno", "LoveTrap", LovetrapCirno)
    alarm[0] = 50
    mode = 2
}
if !instance_exists(ContraTurret)
{
    path_end()
    vspeed = 0
    hspeed = -4
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 3 instance_destroy()
