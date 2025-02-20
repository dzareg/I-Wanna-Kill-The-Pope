#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
optionstext[0] = "Music Volume"
optionstext[1] = "Sound Test"
optionstext[2] = "Title Cards"
optionstext[3] = "Boss Nametags"
optionstext[4] = "Game Over Theme"
optionstext[5] = ""
optionstext[6] = "Left"
optionstext[7] = "Right"
optionstext[8] = "Up"
optionstext[9] = "Down"
optionstext[10] = "Jump"
optionstext[11] = "Shoot"
optionstext[12] = "Skip"
optionstext[13] = "Restart"
menuchoice = 0
bindingkey = false
bindingdelay = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrOptionsMenuControl()
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrSaveData("IWKTP_options", global.options, 6)
scrSaveData("IWKTP_controls", global.controls, 8)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrOptionsMenuDraw()
