#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
background_alpha[0] = 0.35
background_alpha[1] = 0.5
background_alpha[2] = 0.5
alarm[0] = 50
bgsquaremode = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///BG Effect
bgsquaremode *= -1
with instance_create((room_width/2)+(room_width/2+64)*bgsquaremode,random_range(64,room_height-64),GeezerBGEffect)
    hspeed *= other.bgsquaremode
alarm[0] = 25
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///avoidance
if instance_exists(player) step += 1
if !instance_exists(player) && !instance_exists(FullscreenStatic)
{
    with instance_create(0,0,FullscreenStatic) {infinite = true; depth = -20}
    //with world ss_StopSound(curMusic)
}

//o panie o ty na mnie spojrzales
if step == 30
{
    for(i=0; i < 3; i+=1)
    {
        a = instance_create(x,y,BarkaBurstCherry1)
        a.direction = 180 + (45*i)
        a.speed = 8
    }
}
if step == 55
{
    bossName("Miku", "Device", DeviceMiku)
    instance_create(room_width,0,TitleCard)
    with BarkaBurstCherry1 event_user(0)
}

if step >= 190 && step <= 219
{
    repeat 2
    {
        a = instance_create(x,y,BarkaRainbowCherry)
        a.direction = random_range(180,270)
        a.speed = random_range(8,14)
    }
}
if step == 220
    with BarkaRainbowCherry speed = 0
if step == 235
{
    with BarkaRainbowCherry
    {
        direction = point_direction(x,y,player.x,player.y)
        speed = 16
    }
}

//twoje usta dzis wyrzekly me imie
if step == 280
{
    //instance_create(room_width+128,room_height/2,BarkaBurstCherry2)
}
if step == 350
    with instance_create(room_width*1/8,-64,BarkaBurstCherry2) {vspeed = 12; mode = 1}
if step == 365
    with instance_create(room_width*3/8,room_height+64,BarkaBurstCherry2) {vspeed = -12; mode = -1}
if step == 380
    with instance_create(room_width*5/8,-64,BarkaBurstCherry2) {vspeed = 12; mode = 1}
if step == 395
    with instance_create(room_width*7/8,room_height+64,BarkaBurstCherry2) {vspeed = -12; mode = -1}
if step == 435
    with BarkaBurstCherry2 fire = true
if step == 490
     with BarkaBurstCherry2 die = true

//swoja barke dzis pozostawiam na brzegu
if step == 550
    instance_create(832,544,BarkaSpike)

if step == 600 || step == 630
    splitobject(20,12,BarkaRainbowCherry,1,0,x,y)
if step == 615 || step == 645
    splitobject(20,12,BarkaRainbowCherry,1,0,x,y)

if step >= 720 && step < 750
{
    with instance_create(-32,room_height+32,BarkaRainbowCherry)
    {
        direction = random_range(-45,90)
        speed = random_range(10,12)
    }
    with instance_create(room_width+32,room_height+32,BarkaRainbowCherry)
    {
        direction = random_range(90,225)
        speed = random_range(10,12)
    }
}
if step == 750
    with BarkaRainbowCherry speed = 0
if step == 770
    with BarkaRainbowCherry vspeed = -10

//i dzis z toba, dzis wyruszam na low
if step == 810
{
    with instance_create(-128,room_height*2/8,BarkaBurstCherry3) {hspeed = 10; mode = 1}
    with instance_create(-128,room_height*6/8,BarkaBurstCherry3) {hspeed = 10; mode = 1}
    with instance_create(room_width+128,room_height*2/8,BarkaBurstCherry3) {hspeed = -10; mode = -1}
    with instance_create(room_width+128,room_height*6/8,BarkaBurstCherry3) {hspeed = -10; mode = -1}
}
if step == 880
    with BarkaBurstCherry3 event_user(0)
if step == 975
    with BarkaBurstCherry3 fire = true
if step == 1060
{
    with BarkaBurstCherry3
    {
        direction = point_direction(x,y,player.x,player.y) + 180
        speed = 16
        fire = false
        mode = 2
    }
    with BarkaRainbowCherry
    {
        direction = point_direction(x,y,player.x,player.y) + 180;
        speed = 16
    }
}
if step == 1090
    with BarkaBurstCherry3 instance_destroy()
if step == 1100
    instance_create(0,0,BarkaFadeout)
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with world
{
    filePlaying = -1
    ss_StopSound(curMusic)
    musicPlay(18, musBarkaRap)
}
