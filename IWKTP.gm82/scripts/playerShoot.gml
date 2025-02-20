//�v���C���[�̍U���i�ő�S�j
if instance_number(bullet) < 4
{
    player.shotdelay = 10
    player.shootcount += global.item[1]
    a = instance_create(x,y-2,bullet);
    if irandom_range(4,6) == 5 && player.shootcount >= 4 {a.crit = true; player.shootcount = 0}
    sound_play(sndShoot);
}
