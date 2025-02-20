#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
choice = 1
warning = 6

warningtext[0] = "Are you sure? This will delete your progress."
warningtext[1] = "Are you really sure? Not just progress, your achievements will be gone too."
warningtext[2] = "Are you really, really sure? I wouldn't wanna replay this mess if i was you."
warningtext[3] = "Are you really, really, REALLY sure? This is your final warning!"
warningtext[4] = "Okay, this one is actually the last. I hope you know what you're doing."

if file_exists(working_directory+"/data/IWKTP_save.bmp")
    screenshot = sprite_add(working_directory+"/data/IWKTP_save.bmp",0,0,0,0,0)
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
press = false
#define Alarm_1
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
ss_StopSound(musTitle)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1 && visible image_alpha += 0.01

if keyboard_check_pressed(global.upbutton) {choice = 1; sound_play(sndMenuSwitch)}
if keyboard_check_pressed(global.downbutton){choice = 2; sound_play(sndMenuSwitch)}

if keyboard_check_pressed(global.jumpbutton) && instance_exists(MenuChecker) && visible
{
    if choice == 1 event_user(0)
    if choice == 2 && !press
    {
        warning -= 1
        press = true
        alarm[0] = 50
        if warning == 0
        {
            warning = 6
            choice = 1
            sound_play(sndSaveDeletion)
            file_delete(working_directory+"/data/IWKTP_save.bmp")
            file_delete(working_directory+"/data/IWKTP_save.bk")
            file_delete(working_directory+"/data/IWKTP_save")
        }
    }
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(MenuChecker)
{
    sound_play(sndTitleButton)
    instance_create(0,0,TitleDarkness)
    alarm[1] = 50
    with world ss_StopSound(musTitle)
    with MenuChecker instance_destroy()
    with TitleKid polakous = true
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if file_exists(working_directory+"/data/IWKTP_save.bmp")
    draw_sprite_ext(screenshot,-1,room_width*5/8,room_height*5/8,1/3,1/3,0,c_white,image_alpha)

if warning < 6
{

}
