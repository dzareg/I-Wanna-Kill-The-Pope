#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
timer = 0
spawnenemy = false
spikesattack = false
// Start = 420
// Rikenon + Missingno = 1280
// Rukito + Demon Kid = 1705
// Crimson Bat + Boshy = 2145
// Game Terminators = 2570
// Cherry Papa + Big Rat = 3000
// Rot + Exor = 3460
// Rakhris + Baldis = 3910
// Gustav = 4470
// Big Kid = 4885
// End = 5750
image_alpha = 0
alarm[1] = 50
alarm[2] = 50
alarm[3] = 50
alarm[4] = 50
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = random_range(96,room_width-96)
y = random_range(406,room_height-96)
if timer >= 5300 instance_create(x,y,BonzoTimerShadow)
alarm[0] = 50
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///skree
if spawnenemy instance_create(random_range(64,room_width-64),0,BonzoSkree)
alarm[1] = 50
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///waver
if spawnenemy instance_create(784,random_range(400,496),BonzoWaver)
alarm[2] = 100
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///spikes
if spikesattack
{
    repeat 2
    {
        var a;
        a = instance_create(random_range(-48,room_width-48),-64,spikeDown)
        a.sprite_index = sprBG1BillySpike
        a.gravity = 0.1
        a.speed = 2
        a.direction = 270+choose(-15,15)
        a.image_angle = a.direction
        a.gravity_direction = a.direction
    }
    scrScreenShake(1,5)
    sound_play(sndBreak)
}
alarm[3] = 50
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Cherries
if instance_exists(LovetrapBigKidSpawner)
{
    var a;
    a = instance_create(choose(-32,room_width+32),random_range(352,room_height-64),deliciousFruit)
    a.depth = -5
    if a.x > room_width/2 a.hspeed = -3
    else a.hspeed = 3
}
alarm[4] = 40
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player)
{
    timer += 1
    if image_alpha < 1 && timer >= 420 image_alpha += 1/30
    if (5750-timer)/50 == round((5750-timer)/50)
    {
        x = random_range(96,room_width-96)
        y = random_range(406,room_height-96)
        if timer >= 5300 instance_create(x,y,BonzoTimerShadow)
    }
}
else
    image_alpha -= 0.02
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///spawn stuff
switch timer
{
    case 215:
        instance_create(400,384,BonzoText)
        break

    case 425:
        spawnenemy = true
        break
    case 850:
        spikesattack = true
        break

    case 1200:
        spikesattack = false
        spawnenemy = false
        break

    case 1280:
        scrBoss2P2TileChange(1)
        instance_create(128,-256,TTTMissingno)
        instance_create(1008,416,TTTRixenon)
        break
    case 1660:
        with TTTRixenon gravity = 1
        with TTTMissingno hspeed = -8
        break

    case 1705:
        scrBoss2P2TileChange(2)
        instance_create(400,-144,DestinationDemonKid)
        instance_create(672,576,SSR2Rukito)
        break
    case 2095:
        with DestinationDemonKid vspeed = -8
        with SSR2Rukito die = true
        break

    case 2145:
        scrBoss2P2TileChange(3)
        instance_create(400,-128,CrimsonBat)
        instance_create(144,464,KTGDarkBoshyPortal)
        break
    case 2530:
        with CrimsonBat vspeed = -8
        with KTGDarkBoshy gravity = 1
        with KTGDarkBoshyPortal die = true
        break

    case 2570:
        scrBoss2P2TileChange(4)
        instance_create(864,256,TTT1Robok)
        break
    case 2640:
        instance_create(864,256,TTT1PDSpirit)
        break
    case 2690:
        instance_create(864,256,TTT1DJBanana)
        break
    case 2740:
        instance_create(864,256,TTT1Rem)
        break
    case 2790:
        instance_create(864,256,TTT1Vuilang)
        break

    case 3000:
        scrBoss2P2TileChange(5)
        instance_create(400,-128,LovetrapCherryPapa)
        instance_create(400,304,FTGBigRat)
        break

    case 3230:
        with LovetrapCherryPapa event_user(0)
        break

    case 3460:
        scrBoss2P2TileChange(6)
        instance_create(400,-196,KTGExor)
        instance_create(400,-384,KTGPiranhaPlant)
        break
    case 3850:
        with KTGPiranhaPlant
        {
            vspeed = -2
            gravity = 0.2
            gravity_direction = 90
        }
        break

    case 3910:
        scrBoss2P2TileChange(7)
        instance_create(608,536,BG2Rakhris)
        instance_create(400,-48,BG2Baldis)
        break


    case 4434:
        instance_create(608,-32,BG2Gustav)
        break

    case 4680:
        with BG2Gustav event_user(1)
        break

    case 4885:
        scrBoss2P2TileChange(8)
        with BG2Gustav event_user(0)
        instance_create(0,0,LovetrapBigKidSpawner)
        break
    case 5300:
        var h;
        h = instance_create(view_xview,view_yview,GameOverTint)
        h.spd = 1/800
        spikesattack = true
        instance_create(400,384,BonzoText)
        break

    case 5750:
        with LovetrapBigKidSpawner instance_destroy()
        with LovetrapBigKidBullet instance_destroy()
        with LovetrapBigKidWaterBullet instance_destroy()
        with playerKiller if speed != 0 instance_destroy()
        with BonzoTimerShadow instance_destroy()
        with TigerBonzoPhase2 alarm[0] = 200
        with GameOverTint instance_destroy()
        LightEffect(c_white, 0.1)
        scrBoss2P2TileChange(9)
        instance_destroy()
        break
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(pixeltimerfont)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_alpha(image_alpha)
shake = timer/530
var color;
color = c_white
if timer >= 5300 color = c_red//draw_set_color(c_red)
drawTextOutlined(x+random_range(-shake,shake),y+random_range(-shake,shake),string( floor((5750-timer)/50) ),color,c_black,1,8,1,1)
//draw_text(x+random_range(-shake,shake),y+random_range(-shake,shake),string( floor((5750-timer)/50) ))
draw_set_alpha(1)
draw_set_color(c_white)
