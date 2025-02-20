draw_sprite_ext(sprAchievementGlow,-1,view_xview+168+(80*achievementx)+32,(room_height*1/4)+(80*achievementy)+32,ascale,ascale,0,c_white,image_alpha)

number = achievementx+achievementy*6

//if global.achievement[achievementx+achievementy*6] == 1
//    number = achievementx+achievementy*6
//else
if global.achievement[achievementx+achievementy*6] == 0
{
    if number == 5 || number > 10 && number < 26 number = 31
    else number = 30
}

draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_sprite_ext(sprAchievementFrame,-1,view_xview+368+32,/*view_yview+608/8*/64,image_alpha,image_alpha,0,c_white,image_alpha)
draw_sprite_ext(sprAchievementIcon,number,view_xview+368+32,/*view_yview+608/8*/64,image_alpha,image_alpha,0,c_white,image_alpha)
draw_set_font(rogbigger)
drawTextOutlined(view_xview+400, /*view_yview+608/8-*/16, global.achievementTitle[number], c_yellow, c_black,2,8,1,image_alpha)
draw_set_font(rog)
drawTextOutlined(view_xview+400, /*view_yview+608/8+*/112, global.achievementDescription[number], c_white, c_black,2,8,1,image_alpha)
drawTextOutlined(view_xview+400, /*view_yview+608/8+*/128, global.achievementComment[number], c_white, c_black,2,8,1,image_alpha)

for(j = 0; j < 5; j += 1)
{
    for(i = 0; i < 6; i += 1)
    {
        if global.achievement[i+j*6] == 1 n = i+j*6 else n = 30
        draw_sprite_ext(sprAchievementIcon,n,view_xview+168+(80*i)+32,(room_height*1/4)+(80*j)+32,1,1,0,c_white,image_alpha)
        draw_sprite_ext(sprAchievementFrame,-1,view_xview+168+(80*i)+32,(room_height*1/4)+(80*j)+32,1,1,0,c_white,image_alpha)
    }
}
