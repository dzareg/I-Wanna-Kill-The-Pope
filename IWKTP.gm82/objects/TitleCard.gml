#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = 0.6
if room == rGuy || room == rKTG a = 0.2
if room != rBoss2B LightEffect(c_black,a)
if global.options[2] == 0
{
    instance_destroy()
    exit
}
sound_play(sndTitleCard)
image_speed = 0
image_alpha = 0
mode = 0
counter = 0
wait = 100
vel = 10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///set title card sprite
switch room
{
    case rCTB: image_index = 2; break
    case rDarkBlue: image_index = 3; break
    case rPDHappy: image_index = 4; break
    case rShowdown: image_index = 5; break
    case rHeavenTrap2: image_index = 6; break
    case rBestGuy1: image_index = 7; break
    case rIvan: image_index = 8; break
    case rEdge: image_index = 9; break
    case rReviveTheGuy: image_index = 10; break
    case rGuy: image_index = 11; break
    case rBoss1: if BossTrigger.triggered image_index = 12; break
    case rGRSecret: image_index = 13; break
    case rBestGuy2: image_index = 14; break
    case rTTT: image_index = 15; break
    case rDestination: image_index = 16; break
    case rLoveTrap: image_index = 17; break
    case rCrimson: image_index = 18; break
    case r2D: image_index = 19; break
    case rSSC: image_index = 20; break
    case rFTG: image_index = 21; break
    case rSSR2: image_index = 22; break
    case rKTG: image_index = 23; break
    case rBoss2A: if BossTrigger.triggered image_index = 24; break
    case rBoss2B: image_index = 25; break
    case rDotkidSecret: image_index = 26; break
    case rNoesis: image_index = 27; break
    case rACSecret: image_index = 28; break
    case rATKSecret: image_index = 29; break
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mode == 0 && counter > -sprite_width
{
    counter = lerp(counter,-sprite_width,0.1)
    image_alpha = 1//counter/sprite_width
    //counter -= vel;
    //if vel > 0 vel -= 0.2
    if counter <= -196 mode = 1
    //if image_alpha < 1 image_alpha += 0.04
}

if mode == 1
{
    wait -= 1;
    if wait == 1 vel = 0
    if wait <= 0 mode = 2
}

if mode == 2
{
    counter += vel;
    vel += 0.2;
    if counter >= 400 instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
xx = view_xview+view_wview+counter

if instance_exists(player)
{
    if player.x > room_width/2
        xx = view_xview-counter-sprite_width
}
draw_sprite_ext(sprite_index,image_index,xx,view_yview,1,1,0,c_white,image_alpha)
