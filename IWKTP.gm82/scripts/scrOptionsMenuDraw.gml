draw_set_alpha(image_alpha)
draw_set_font(menurog)

for(i = 0; i < 14; i += 1)
{
    draw_set_halign(fa_left)
    drawTextOutlined(view_xview+128,view_yview+64+32*i,optionstext[i],c_white,c_black,2,8,1,1)
    draw_set_halign(fa_middle)
    if i >= 1 && i <= 5
    {
        if global.options[i] == 1
            drawTextOutlined(view_xview+view_wview-128,view_yview+64+32*i,"ON",c_green,c_black,2,8,1,1)
        else
            drawTextOutlined(view_xview+view_wview-128,view_yview+64+32*i,"OFF",c_red,c_black,2,8,1,1)
    }
    draw_set_halign(fa_right)
    if i >= 6
        drawTextOutlined(view_xview+view_wview-96,view_yview+64+32*i,scrGetKeyName(global.controls[i-6]),c_white,c_black,2,8,1,1)
}

draw_set_halign(fa_left)
drawTextOutlined(view_xview+128,view_yview+64+32*menuchoice,optionstext[menuchoice],c_red,c_black,2,8,1,1)

draw_set_halign(fa_middle)
drawTextOutlined(view_xview+view_wview-128,view_yview+64,string(global.options[0]),c_white,c_black,2,8,1,1)
if bindingkey drawTextOutlined(view_xview+view_wview/2,view_yview+view_hview-64,"Press the key for this action!",c_red,c_black,2,8,1,1)
draw_set_alpha(1)
