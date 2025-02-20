#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 0
with Boss2Controller
{
    switch phase
    {
        case 0: other.text = "I'm going, to block, your computers"
                sound_play(sndPozablokuje) break
        case 4: other.text = "You can't be serious."
                sound_play(sndPowazni) break
        case 8: other.text = "You think you're clever, huh?"
                sound_play(sndCwani) break
    }
}
with BonzoTimer
{
    if timer < 600
    {
        switch irandom(3)
        {
            case 0:
                other.text = "And you are haterings, fucking trollers?"
                sound_play(sndBonzoMock1)
                break
            case 1:
                other.text = "You can smell my ass, haters!"
                sound_play(sndBonzoMock2)
                break
            case 2:
                other.text = "Fucking haters, think about what you've done."
                sound_play(sndBonzoMock3)
                break
            case 3:
                other.text = "Fucking pasztet, thinks he's the man."
                sound_play(sndBonzoMock4)
                break
        }
    }
    else
    {
        other.text = "I'm spitting on you, totally"
        sound_play(sndPlujeNaWas)
    }
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = xstart+random_range(-2,2)
y = ystart+random_range(-2,2)
if mode == 0
{
    if scale < 1 scale += 0.1
    if scale == 0.9 alarm[0] = 100
}
if mode == 1
{
    scale -= 0.1
    if scale <= 0 instance_destroy()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(pixelfont)
//draw_set_color(c_red/2)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
//draw_text_transformed(x,y,text,1,scale,0)
draw_set_color(c_red)
draw_text_transformed(x+1,y+1,text,1,scale,0)
