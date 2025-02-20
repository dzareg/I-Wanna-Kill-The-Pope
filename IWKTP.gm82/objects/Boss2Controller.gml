#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase = 0
kills = 0
rkills = 10
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if phase == 3 || phase == 4 || phase >= 6 event_user(0)
else instance_create(0,192,BG2RedLaser)
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if kills >= rkills
{
    with instance_create(TigerBonzo.x+random_range(-48,48),TigerBonzo.y+random(128),Explosion)
    {
        killplayer = false
        shakescreen = true
        image_xscale = 3
        image_yscale = 3
    }
    alarm[0] = 50
    kills = 0
}
if !instance_exists(BossTrigger) background_alpha[6] -= 0.02
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !instance_exists(player) exit
phase += 1
switch phase
{
    case 1:
        rkills = 5
        with TigerBonzo objects = 10
        background_visible[5] = true
        background_visible[7] = false
        instance_create(0,0,FullscreenStatic)
        scrBoss2TileChange()
        break
    case 2:
        rkills = 6
        with TigerBonzo objects = 12
        break
    case 3:
        scrBoss2TileChange()
        background_visible[5] = false
        background_visible[7] = false
        instance_create(0,0,FullscreenStatic)
        with GeezerBlock sprite_index = sprGeezerBlock
        instance_create(128,736,TDLouise)
        instance_create(640,736,TTTInfluka)
        break
    case 4:
        instance_create(-260,384,CrimsonRed)
        instance_create(-128,384,CrimsonYellow)
        instance_create(1060,384,FTGMetal)
        instance_create(928,384,FTGBlue)
        instance_create(400,-96,DestinationShiratama)
        instance_create(800,544,DestinationSpike)
        break
    case 5:
        instance_create(0,0,FullscreenStatic)
        background_visible[3] = true
        background_visible[4] = true
        with TigerBonzo objects = 8
        rkills = 5
        scrBoss2TileChange()
        break
    case 6:
        instance_create(16,-16,ContraTurret)
        instance_create(784,-16,ContraTurret)
        with TigerBonzo objects = 5
        rkills = 5
        break
    case 7:
        instance_create(-16,416,LovetrapCirno)
        instance_create(816,416,LovetrapDango)
        with TigerBonzo objects = 9
        rkills = 8
        break
    case 8:
        instance_create(0,0,FullscreenStatic)
        background_visible[3] = false
        background_visible[4] = false
        with TigerBonzo alarm[5] = 200
        instance_create(400,384,BonzoText)
        with ContraTurret destroy = true
        scrBoss2TileChange()
        break
}
