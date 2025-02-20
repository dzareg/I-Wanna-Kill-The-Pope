#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 250
image_alpha = 0
endalpha = 1
stageclear_alpha = 0
sc_alphaspeed = 0.1
darkness = false
stageclear = false

textalpha[0] = 0
textalpha[1] = 0
textalpha[2] = 0
textalpha[3] = 0

currenttext = 0

switch room
{
    case rBoss1:  stage = 1 break
    case rBoss2C: stage = 2 break
    //default: stage = 0
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
darkness = true
with player frozen = true
sound_stop_all()
sound_play(sndStageClear)
alarm[1] = 400
alarm[2] = 150
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///stage clear = true
stageclear = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if darkness t += 1
if t == 1 || t == 30 || t == 55 || t == 80
    image_alpha += 0.25

if t == 100
    stageclear = true

if t == 160 || t == 190 || t == 220
    currenttext += 1
if t == 220 LightEffect(c_white,0.05)

if stageclear
{
    if textalpha[currenttext] < 1 textalpha[currenttext] += 0.1
    stageclear_alpha = lerp(stageclear_alpha,2.5,0.1)
}

if !instance_exists(player)
{
    sound_stop(sndStageClear)
    instance_destroy()
}

if t >= 436 endalpha -= 0.01

if t >= 536
{
    with player instance_destroy()
    switch room
    {
        case rBoss1:
            scrAchievementGet(3)
            global.polakous = 1
            room_goto(rBestGuy2)
            break
        case rBoss2C:
            scrAchievementGet(9)
            room_goto(rNoesis)
            break
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_black)
draw_set_alpha(image_alpha)
draw_rectangle(-32,-32,room_width+32,room_height+32,false)

draw_sprite_ext(sprStageClearBar,-1,view_xview+view_wview/2,view_yview+view_hview/2,1,stageclear_alpha,0,c_white,0.8*endalpha)
for(i = 1; i < 4; i += 1)
{
    switch i
    {
        case 1: a = 0 break
        case 2: a = stage break
        case 3: a = 5 break
    }
    draw_sprite_ext(sprStageClear,a,view_xview+150+125*i,view_yview+view_hview/2,2-textalpha[i],2-textalpha[i],0,c_white,textalpha[i]*endalpha)
}
