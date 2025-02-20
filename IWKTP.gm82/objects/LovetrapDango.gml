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
///stop
path_speed = 0
alarm[2] = 96
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///fire
if mode == 3 exit
for (i=0; i<10; i+=1)
{
    cld = instance_create(x,y,LovetrapDangoChild);
    cld.dth = (i-4.5) * pi/12;
}
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
    x -= 4
    if x <= room_width-48
    {
        x = room_width-48
        mode = 1
    }
}
if mode == 1
{
    bossName("Dango", "LoveTrap", LovetrapDango)
    alarm[0] = 50
    mode = 2
}
if !instance_exists(ContraTurret)
{
    path_end()
    vspeed = 0
    hspeed = 4
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 3 instance_destroy()
