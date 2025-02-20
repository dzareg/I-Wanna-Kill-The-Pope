#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//alarm[5] = 10
mode = 0
imageindex = 0
objects = 0
objectindex = 0
fadealpha = 0
suckplayer = false
image_speed = 10
xx = x-112
yy = y+63
background_alpha[0] = 0.5
background_alpha[1] = 0.5
bgsquaremode = 1
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mode = 2
bossName("Tiger Bonzo","",Boss2Controller)
instance_create(400,384,BonzoText)
alarm[1] = 100
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with Boss2Controller event_user(0)
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///spawn objects
if objects > 0
{
    if Boss2Controller.phase == 1
    {
        switch objects
        {
            case 10: instance_create(xx,yy,TigerStatic) break
            case 9: instance_create(x,y+175,RainbowShellSpawner) break
                     objectindex = 2
            case 8:  instance_create(xx,yy,TigerStatic) break
            case 7:  instance_create(x,y+175,GreenShellSpawner)
                     objectindex = 1
                     break
            case 6:  instance_create(xx,yy,TigerStatic) break
            case 5:
            case 4:
            case 3:
            case 2:
            case 1:  instance_create(x,y+175,GoombaSpawner)
                     objectindex = 0
                     break
        }
    }
    if Boss2Controller.phase == 2
    {
        switch objects
        {
            case 1:  instance_create(xx,yy,TigerStatic) break
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:  instance_create(x,y+175,GoombaSpawner)
                     objectindex = 0
                     break
            case 8: instance_create(xx,yy,TigerStatic) break
            /*
            case 11: instance_create(x,y+175,GreenShellSpawner)
                     objectindex = 1
                     break*/
            case 9: instance_create(xx,yy,TigerStatic) break
            case 10: instance_create(x,y+175,RainbowShellSpawner)
                     objectindex = 2
                     break
            case 11: with instance_create(x,y+175,HammerGuy) path_position = 0.5
                     objectindex = 3 break
            case 12: instance_create(x,y+175,HammerGuy)
                     break
        }
    }
    if Boss2Controller.phase == 5 || Boss2Controller.phase == 6
    {
       switch objects
       {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5: instance_create(x,y+175,ContraBluePickup)
                    objectindex = 4
                    break
            case 6: instance_create(xx,yy,TigerStatic) break
            case 7:
            case 8: instance_create(x,y+175,ContraSoldierSpawner)
                    objectindex = 5
                    break
       }
    }
    if Boss2Controller.phase == 7
    {
       switch objects
       {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 9: instance_create(x,y+175,ContraBluePickup)
                    objectindex = 4
                    break
       }
    }
    objects -= 1
    if objects == 0 instance_create(xx,yy,TigerStatic)
    instance_create(0,0,GeezerRotate)
    sound_play(sndBonzoSpawn)
}
alarm[2] = 15
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///geezer effect
instance_create(x+random_range(-112, 112), y+175+random_range(-112, 112), GeezerEffect)
alarm[3] = 2;
#define Alarm_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///BG Effect
bgsquaremode *= -1
with instance_create((room_width/2)+(room_width/2+64)*bgsquaremode,random_range(64,room_height-64),GeezerBGEffect)
    hspeed *= other.bgsquaremode
alarm[4] = 25
#define Alarm_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// suck player~
sound_play(sndBoss2Yell)
suckplayer = true
with player frozen = true
instance_create(x,y,BonzoFadeout)
sound_loop(sndBonzoCharge)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
imageindex += 0.2
if imageindex >= 8 imageindex = 0

if suckplayer
{
    with player
    {
        hspeed = 0
        vspeed = 0
        image_angle += 8
        direction = point_direction(x,y,other.x,other.y+175)
        speed = 8
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
if mode == 2
{
    draw_set_blend_mode(bm_add)
    if objects == 0 draw_sprite_ext(sprTigerBonzo,-1,x+random_range(-3,3),y+175+random_range(-3,3),1.2,1.2,0,image_blend,1)
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(sprTigerColor,imageindex,xx,yy,1,1,0,c_white,0.5)
    if objects > 0 && mode == 2 draw_sprite_ext(sprTigerIcon,objectindex,x,y+175,1,1,0,c_white,1)
    if suckplayer draw_sprite_ext(sprTigerIcon,6,x,y+175,1,1,0,c_white,1)
}
