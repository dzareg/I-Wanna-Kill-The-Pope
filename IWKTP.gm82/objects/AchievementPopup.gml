#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0
mode = 0
alarm[0] = 250
alarm[1] = 100
soundplayed = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 1
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
soundplayed = true
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_alpha < 1 && mode == 0
    image_alpha += 0.05
if mode == 1
{
    image_alpha -= 0.05
    if image_alpha <= 0 instance_destroy()
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !soundplayed && !sound_isplaying(sndAchievement) sound_play(sndAchievement)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_sprite_ext(sprAchievementFrame,-1,view_xview+368+32,view_yview+608/8+32,image_alpha,image_alpha,0,c_white,image_alpha)
draw_sprite_ext(sprAchievementIcon,number,view_xview+368+32,view_yview+608/8+32,image_alpha,image_alpha,0,c_white,image_alpha)
draw_set_font(rogbigger)
drawTextOutlined(view_xview+400, view_yview+608/8-16, global.achievementTitle[number], c_yellow, c_black,2,8,1,image_alpha)
draw_set_font(rog)
drawTextOutlined(view_xview+400, view_yview+608/8+80, global.achievementDescription[number], c_white, c_black,2,8,1,image_alpha)
drawTextOutlined(view_xview+400, view_yview+608/8+96, global.achievementComment[number], c_white, c_black,2,8,1,image_alpha)
