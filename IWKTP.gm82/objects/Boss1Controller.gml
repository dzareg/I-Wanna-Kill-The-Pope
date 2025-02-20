#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase = 1
kills = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if phase == 3 && kills >= 2 {event_user(0); kills = 0}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase += 1
switch phase
{
    case 2:
        instance_create(room_width/2, room_height+128, CTBCrazySpike);
        break;
    case 3:
        instance_create(128,-192,HT2GiantRedCherry)
        instance_create(room_width - 128,-192,HT2GiantBlueCherry)
        break;
    case 4:
        instance_create(room_width/2, -64, MagikPhase2)
        instance_create(room_width+48, 256, GuyWilly)
        break;
    case 5:
        instance_create(400,-192,BG1Billy)
        instance_create(752,776,BG1PDSpirit)
        instance_create(64,-228,BG1KimMame)
        break;
    case 6:
        instance_create(752,388,SDSpaceGuy)
        instance_create(48,383,RTGZombieGuy)
        instance_create(400,-160,HT2AngelKid)
        break;
    case 7:
        instance_create(room_width/2,-512,MagikPhase3)
        break;
}
