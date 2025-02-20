///musicPlay(filePlaying, curMusic)
if filePlaying != argument0
{
    ss_StopSound(curMusic);
    filePlaying = argument0;
    curMusic = argument1;
    if room == rBoss2B ss_PlaySound(curMusic) else ss_LoopSound(curMusic);
    ss_SetSoundVol(world.curMusic,vol)
}
