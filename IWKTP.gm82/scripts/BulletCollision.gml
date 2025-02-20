if iframes == 0
{
    if !shield
    {
        iframes = iframecount
        sound_play(choose(sndBossHit1,sndBossHit2,sndBossHit3))
        scrBossIframe(self)
        repeat 5
        {
            var a;
            a = instance_create(other.x,other.y,blood)
            a.speed = random(4)
            a.direction = random(360)
        }
        hp -= other.dmg
    }
    else instance_create(x,y,BossShield)
}
with other instance_destroy()
