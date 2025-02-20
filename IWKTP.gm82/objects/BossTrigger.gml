#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
saveTimer = -1;
triggered = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
saveTimer -= 1;
if triggered
{
    image_index = 1;
    image_xscale += 0.2;
    image_yscale += 0.2
    image_alpha -= 0.05
}
if image_alpha < 0 instance_destroy()
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//�Z�[�u���āA��莞�ԃZ�[�u�s�ɂ���
if saveTimer < 0 && instance_exists(player) && !triggered
{
    triggered = true
    if room != rBoss1 with DimLights instance_destroy()
    with TitleCard instance_destroy()
    if global.options[2] == 1 instance_create(room_width, 0, TitleCard)
    saveGame()
    if room == rBoss1
    {
        instance_create(room_width/2, -128, MagikPhase1)
        with world musicPlay(14,musBoss1)
    }
    if room == rBoss2A
    {
        with TigerBonzo
        {
            mode = 1
            alarm[0] = 20
            alarm[2] = 150
            alarm[3] = 2
            alarm[4] = 90
            instance_create(xx,yy,TigerStatic)
        }
        with world musicPlay(16,musBoss2Phase1)
    }
}
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
image_index = 0
