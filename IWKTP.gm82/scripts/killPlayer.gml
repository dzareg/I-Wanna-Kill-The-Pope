if !global.godmode
{
    instance_create(view_xview+400,view_yview+300,GAMEOVER);
    if global.options[4] == 1
    {
        switch room
        {
            case rBestGuy1: sound_play(musBG1Death); break;
            case rIvan:
                if instance_exists(IvanJustination) sound_play(musJT2Death)
                else
                {
                    sound_play(sndDeath);
                    with GAMEOVER alarm[1] = 35
                }
                break
            case rTTT: sound_play(musTTTDeath); break;
            case rFTG: sound_play(sndDeath); sound_play(musFTGDeath); break;
            case rKTG: sound_play(musKTGDeath); break
            case rDotkidSecret: sound_play(musDotkidDeath); break
            default: sound_play(sndDeath); with GAMEOVER alarm[1] = 35 break
        }
    }
    else sound_play(sndDeath);
    with player
    {
        instance_create(x,y,bloodEmitter);
        instance_destroy()
    }
    with player2
    {
        instance_create(x,y,bloodEmitter);
        instance_destroy()
    }
    global.death += 1;
    saveDeathTime();
}
