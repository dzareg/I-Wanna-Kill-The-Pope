number = argument0
if global.achievement[number] == 0
{
    with AchievementPopup instance_destroy()
    with instance_create(0,0,AchievementPopup) number = other.number
    global.achievement[number] = 1
    sound_play(sndAchievement)
    scrSaveAchievements()
}
