#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity = 0.2
vspeed = 2
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_angle > -30 image_angle -= 1
if y >= 425 && vspeed > 0
{
    vspeed = 0
    gravity = 0
    instance_create(x,y,StageClear)
    sound_play(sndTVBreak)
    scrScreenShake(2,20)
    instance_create(0,0,FullscreenStatic)
    background_visible[0] = false
    background_visible[1] = false
    background_visible[2] = true
    with spikeUp sprite_index = sprSpikeUp
    with GeezerBGEffect instance_destroy()
    with GeezerBlock
    {
        sprite_index = sprGhostTile1
        image_alpha = 1
    }
    with GeezerBlock2
    {
        sprite_index = sprGhostTile2
        image_alpha = 1
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprTigerTV,-1,x,y,1,1,image_angle,c_white,1)
draw_sprite_ext(sprDeadTigerStatic,image_index,x,y,1,1,image_angle,c_white,1)
if vspeed == 0 draw_sprite_ext(sprBonzoGlassCrack,-1,x,y,1,1,image_angle,c_white,1)
