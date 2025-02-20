#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if warning == 1 global.polakous = 1

switch roomTo
{
    case rBoss1: scrAchievementGet(0) break
    case rBoss2A: scrAchievementGet(6) break
}

with player instance_destroy()
room_goto(roomTo);
#define Collision_player2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if warning == 1 global.polakous = 1

switch roomTo
{
    case rBoss1: scrAchievementGet(0) break
    case rBoss2A: scrAchievementGet(6) break
}

with player2 instance_destroy()
room_goto(roomTo);
