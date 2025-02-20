#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scrInitSaveTexts()
image_speed = 0
sprite_index = sprSaveCenter
x += 16
y += 16
savetext = "no nie dziala to gowno"
stext = 1
textangle = 10
textscale = 1
giveuptextscale = 0
saveTimer = -1
scale = 1
mode = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
saveTimer -= 1;

if place_meeting(x,y,player)
    {if giveuptextscale < 1 giveuptextscale += 0.1}
else
    {if giveuptextscale > 0 giveuptextscale -= 0.1}

if saveTimer > 0 sprite_index = sprSave else sprite_index = sprSaveCenter

if mode == 1
{
    scale -= 0.25
    if scale <= 0 mode = 2
}
if mode == 2
{
    scale += 0.25
    if scale >= 1.6 mode = 3
}
if mode == 3 && scale > 1 scale -= 0.25

if place_meeting(x,y,player)
{
    if keyboard_check_pressed(global.controls[5]) event_user(0)
    if keyboard_check_pressed(global.controls[6])
    {
        switch room
        {
            case rGRSecret: with player instance_destroy(); room_goto(rEdge); break;
            case rDotkidSecret: with player instance_destroy(); room_goto(rCrimson);  break;
        }
    }
}
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !other.noclip event_user(0)
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0;
image_index=0;
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///save da game
if saveTimer < 75 && instance_exists(player) && image_alpha = 1
{
    saveTimer = 125;
    sound_play(sndConfetti)
    repeat 40 instance_create(x,y,Confetti)
    saveGame();
    with savePointText instance_destroy()
    var a;
    a = instance_create(x,y-32,savePointText)
    a.savetext = stext[irandom(64)]
    mode = 1
    if irandom(100) == 0
    {
        a.savetext = "a little bit of onana, by their goalie"
        sound_play(sndGoalie)
    }

}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(rog)
draw_set_halign(fa_center)
if x < view_xview + 100 draw_set_halign(fa_left)
if x > view_xview + 700 draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_sprite_ext(sprite_index,-1,x,y,scale,scale,0,c_white,image_alpha)
if image_alpha == 1 && instance_exists(SecretItem)
    drawTextOutlined(x,y-48,"Press S to give up",c_red,c_black,2,8,1,giveuptextscale)
