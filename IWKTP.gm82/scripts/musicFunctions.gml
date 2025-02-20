switch(room)
{

case rHubRoom: musicPlay(-2,musStageSelect) break

case rCTB:
case rDarkBlue:
case rPDHappy:
case rShowdown:
case rHeavenTrap2:
case rBestGuy1:
case rEdge:
case rReviveTheGuy: musicPlay(1, musStage1); break
case rIvan: if !instance_exists(IvanJustination) musicPlay(1, musStage1) break
case rGuy: musicPlay(8, musGuyTower); break

case rBoss1:
case rBoss2A: musicPlay(11, musBossroom); break

case rBestGuy2:
case rTTT:
case rDestination:
case rFTG:
case rCrimson:
case r2D:
case rSSC:
case rLoveTrap:
case rTestRoom:
case rSSR2: musicPlay(2, musStage2); break
case rKTG: musicPlay(22, musKTG); break
//case rBoss2B:
case rKTGEnd: musicPlay(11, musNull); break
//case rBoss2C: musicPlay(16, musBoss2Phase2); break

case rNoesis:
case rYuuutu: musicPlay(3, musStage3); break

case rVHSGM: musicPlay(4, musStage4); break

case rGRSecret: musicPlay(5, musSecret1); break
case rDotkidSecret: musicPlay(6, musSecret2); break
case rACSecret: musicPlay(24, musSecret3); break
case rATKSecret: musicPlay(25, musSecret4); break
}
