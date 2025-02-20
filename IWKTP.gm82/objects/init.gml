#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
SetGlobalOption()
scrAchievementInit()

for(i = 0; i < 30; i += 1)
    global.achievement[i] = 0

global.options[0] = 100
for(i = 1; i < 6; i += 1)
    global.options[i] = 1

global.controls[0] = vk_left
global.controls[1] = vk_right
global.controls[2] = vk_up
global.controls[3] = vk_down
global.controls[4] = vk_shift
global.controls[5] = ord('Z')
global.controls[6] = ord('S')
global.controls[7] = ord('R')

scrLoadAchievements()
scrLoadOptions()

if file_exists(working_directory+"/IWKTP.gm82") || file_exists(working_directory+"/IWKTP.gm81")
    scrAchievementGet(27)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//if file_exists("temp")
//    tempExe();
//else
//{
    if global.options[1] == 0
        room_goto(rTitle)
    else
        room_goto_next()
//}
