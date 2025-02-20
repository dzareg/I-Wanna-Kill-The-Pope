view_xview = lerp(view_xview,400,0.1)

for(i = 0; i < 4; i += 1)
{
    if keyboard_check_pressed(global.controls[i])
    {
        ascale = 0.7
        sound_play(sndMenuSwitch)
    }
}
ascale = lerp(ascale, 1, 0.1)

if keyboard_check_pressed(global.controls[0]) && achievementx >= 1
    achievementx -= 1
if keyboard_check_pressed(global.controls[1]) && achievementx != 5
    achievementx += 1
if keyboard_check_pressed(global.controls[2]) && achievementy >= 1
    achievementy -= 1
if keyboard_check_pressed(global.controls[3]) && achievementy != 4
    achievementy += 1

var a;
a = 0
for(i = 0; i < 30; i += 1)
{
    if global.achievement[i] == 1 a += 1
}
if a >= 13 scrAchievementGet(29)
