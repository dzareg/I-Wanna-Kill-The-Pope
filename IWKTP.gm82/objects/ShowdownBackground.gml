#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(sprShowdownBackground,-1,view_xview,view_yview)
draw_set_font(-1)
draw_set_color(c_black)
draw_set_valign(fa_middle)
draw_text(224,536,"Stage: rShowdown")
draw_text(360,536,"Time: "+string(global.hour)+":"+string(global.minu)+":"+string(global.sec))
draw_text(469,536,"Deaths: "+string(global.death))
draw_set_color(c_white)
