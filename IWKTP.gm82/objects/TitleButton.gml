#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///uhhhhhhhhhh
if(global.Lite_Mode=0){

    for(i = 1; i <= 3; i += 1){
        global.savenum = i;
        if(file_exists(global.savepath) == true){
            saveExeItem()

            global.difficulty[i] = global.difficulty;
            global.death[i] = global.death;
            global.time[i] = global.time;
            global.boss1[i] = global.boss1;
            global.boss2[i] = global.boss2;
            global.boss3[i] = global.boss3;
            global.boss4[i] = global.boss4;
            global.boss5[i] = global.boss5;
            global.boss6[i] = global.boss6;
            global.boss7[i] = global.boss7;
            global.boss8[i] = global.boss8;
            global.clear[i] = global.clear;

        }else{

            global.difficulty[i] = 0;
            global.death[i] = 0;
            global.time[i] = 0;
            global.boss1[i] = 0;
            global.boss2[i] = 0;
            global.boss3[i] = 0;
            global.boss4[i] = 0;
            global.boss5[i] = 0;
            global.boss6[i] = 0;
            global.boss7[i] = 0;
            global.boss8[i] = 0;
            global.clear[i] = 0;

        }

    }
    global.savenum = 0;
    global.difficulty = 0;
    global.death = 0;
    global.time = 0;
    global.boss1 = 0;
    global.boss2 = 0;
    global.boss3 = 0;
    global.boss4 = 0;
    global.boss5 = 0;
    global.boss6 = 0;
    global.boss7 = 0;
    global.boss8 = 0;
    global.clear = 0;

}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///arrays
chosen[0] = -1
chosen[1] = -1
chosen[2] = -1
chosen[3] = -1

text[0] = "Begin this madness"
text[1] = "Achievements"
text[2] = "Options"
text[3] = "Exit"

optionstext[0] = "Music Volume"
optionstext[1] = "Sound Test"
optionstext[2] = "Title Cards"
optionstext[3] = "Boss Nametags"
optionstext[4] = "Game Over Theme"
optionstext[5] = "Screen Effects"
optionstext[6] = "Left"
optionstext[7] = "Right"
optionstext[8] = "Up"
optionstext[9] = "Down"
optionstext[10] = "Jump"
optionstext[11] = "Shoot"
optionstext[12] = "Skip"
optionstext[13] = "Restart"
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///actual variables

futuremenu = 0
menu = 0 //0 = main menu, 1 = achievements, -1 = options, 2 = save select
menuoption = 1
menuchoice = 0
bindingdelay = 0
bindingkey = false
buttonpressed = false

achievementx = 0
achievementy = 0
ascale = 1

image_alpha = 0
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if file_exists(global.savepath) loadGame()
else
{
    room_goto(rCTB)
    global.difficulty = 1
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if buttonpressed
{
    image_alpha -= 0.02
    if image_alpha <= 0
    {
        buttonpressed = false
        menu = futuremenu
    }
}
else
{
    if image_alpha < 1 && visible image_alpha += 0.02
    switch menu
    {
        case  0: scrMenuControl()            break
        case -1: scrOptionsMenuControl()     break
        case  1: scrAchievementMenuControl() break
    }
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///start game
if !instance_exists(TitleDarkness)
{
    sound_play(sndTitleButton)
    instance_create(0,0,TitleDarkness)
    alarm[0] = 50
    with world ss_StopSound(curMusic)
    with TitleKid polakous = true
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(image_alpha)
if menu == 0
{
    draw_set_font(menurog)
    draw_set_halign(fa_center)
    for(i = 0; i < 4; i += 1)
        drawTextOutlined(x,y+60*i,text[i],chosen[i],c_black,2,8,1,1)
}
if menu == -1 scrOptionsMenuDraw()
if menu ==  1 scrAchievementMenuDraw()
draw_set_alpha(1)
