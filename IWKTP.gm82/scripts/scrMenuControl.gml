view_xview = lerp(view_xview, 0, 0.1)
if menu == 0
{
    if keyboard_check_pressed(global.controls[6]) && !visible event_user(0)

    if menuoption == 1 chosen[0] = c_red else chosen[0] = c_white
    if menuoption == 2 chosen[1] = c_red else chosen[1] = c_white
    if menuoption == 3 chosen[2] = c_red else chosen[2] = c_white
    if menuoption == 4 chosen[3] = c_red else chosen[3] = c_white

    if keyboard_check_pressed(global.controls[2]) && menuoption != 1 {menuoption -= 1; sound_play(sndMenuSwitch)}
    if keyboard_check_pressed(global.controls[3]) && menuoption != 4 {menuoption += 1; sound_play(sndMenuSwitch)}

    if keyboard_check_pressed(global.controls[4]) && visible && !buttonpressed
    {
        buttonpressed = true
        if menuoption == 1 event_user(0)
        if menuoption == 2 futuremenu =  1
        if menuoption == 3 futuremenu = -1
        if menuoption == 4
        {
            file_delete("temp");
            game_end();
            ss_FreeSound(curMusic)
        }
    }
}
