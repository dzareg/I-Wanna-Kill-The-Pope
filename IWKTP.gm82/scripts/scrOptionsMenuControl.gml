view_xview = lerp(view_xview,-400,0.1)
var v;

if bindingdelay > 0 bindingdelay -= 1

if !bindingkey
{
    if keyboard_check_pressed(global.controls[2]) && menuchoice >= 1
    {
        menuchoice -= 1
        sound_play(sndMenuSwitch)
    }
    if keyboard_check_pressed(global.controls[3]) && menuchoice <= 12
    {
        menuchoice += 1
        sound_play(sndMenuSwitch)
    }
}

if menuchoice == 0
{
    if keyboard_check_direct(global.controls[0]) && global.options[0] != 0
    {
        global.options[0] -= 1
        v = 8000+global.options[0]*20
        if global.options[0] == 0 v = 0
        ss_SetSoundVol(world.curMusic, v)
    }
    if keyboard_check_direct(global.controls[1]) && global.options[0] != 100
    {
        global.options[0] += 1
        v = 8000+global.options[0]*20
        if global.options[0] == 0 v = 0
        ss_SetSoundVol(world.curMusic, v)
    }
}

if menuchoice >= 1 && menuchoice <= 5
{
    if keyboard_check_pressed(global.controls[0]) ||
       keyboard_check_pressed(global.controls[1]) ||
       keyboard_check_pressed(global.controls[4])
       {
            global.options[menuchoice] = !global.options[menuchoice]
            sound_play(sndOption)
       }
}

if menuchoice >= 6
{
    if bindingkey && keyboard_check_pressed(vk_anykey)
    {
        for(i = 0; i < 4 i += 1)
        {
            if keyboard_lastkey == global.bannedcontrols[i]
            {
                sound_play(sndSpierdalaj)
                exit
            }
        }
        global.controls[menuchoice-6] = keyboard_lastkey
        bindingkey = false
        bindingdelay = 25
        sound_play(sndOption)
    }

    if keyboard_check_pressed(global.controls[4]) && !bindingkey && bindingdelay == 0
        bindingkey = true

}
