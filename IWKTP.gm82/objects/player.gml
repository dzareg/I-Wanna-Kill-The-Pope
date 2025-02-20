#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
frozen = false; //�����֎~���Ă���Ƃ���true�A���ʂ�false
frozen2 = false; //�ړ�����S�ɐ��䂵�����Ƃ��Ɏg��
jump = 8.5; //�P�i�ڂ̃W�����v�̏����x
jump2 = 7; //�Q�i�ڂ̃W�����v�̏����x
djump = true; //�Q�i�ڂ̃W�����v���\�Ȃ�true�A�s�\�Ȃ�false
maxSpeed = 3; //���E�̈ړ����x�ihspeed�j
gravity = 0.4; //�d��
maxVspeed = 9; //�㉺�̍ő呬�x�ivspeed�j
shootcount = 0;
image_speed = 0.2; //�A�j���[�V�����̑��x
mask_index = maskPlayer
vspeed = 0
dotkid = false
ktgbluemode = 1
ktgorangemode = 1
shotdelay = 0

if(global.image_xscale=-1){image_xscale = -1;}

//���[���hObject��������ΐ�������
//���[���hObject�̓Q�[���̃��[�h�⃊�X�^�[�g�𐧌�
if(instance_exists(world) == false) {instance_create(0,0,world)}

//�Z�[�u�f�[�^��������΍쐬
if(file_exists(global.savepath) == false){
  global.death = 0;
  global.time = 0;
  saveGame();
}

//Time��v������
alarm[0] = room_speed;

if global.polakous == 1
{
    with Polakous instance_destroy()
    with WarningBar instance_destroy()
    instance_create(view_xview[0]+800,view_yview[0],Polakous)
    global.polakous = 0
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//Time�̌v��
if room != rInit && room != rTitle {global.time += 1}
alarm[0] = room_speed;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///window caption
room_caption = global.room_caption_def + " - Deaths: "+string(global.death);

global.hour=global.time div 3600;
global.atime=global.time mod 3600;
global.minu=global.atime div 60;
global.sec=global.atime mod 60;

room_caption += " - Time: "+string(global.hour)+":";
if(global.minu < 10)room_caption += "0"+string(global.minu)+":";
else room_caption += string(global.minu)+":";
if(global.sec < 10)room_caption += "0"+string(global.sec);
else room_caption += string(global.sec);

//room_caption += " - Items: "+string(global.item[1])+","+string(global.item[2])+","+string(global.item[3])+","+string(global.item[4])
if global.godmode room_caption += " - Godmode"
if global.infjump room_caption += " - Inf Jump"
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///keypress checks
if(frozen2=0){

var L,R,h;

//���E�̃L�[���͂̃`�F�b�N
L = keyboard_check_direct(global.controls[0]);
R = keyboard_check_direct(global.controls[1]);

//�E�{�^��������Ă���ΉE
//�E�{�^��������Ă��Ȃ���Ԃō��{�^��������Ă���΍�
h = R;
if h == 0 h = -L;
if frozen h = 0

if h != 0
{
if(distance_to_object(WalljumpR) != 1 && distance_to_object(WalljumpL) > 1){

if(global.Slide_Move && keyboard_check(global.Slide_Move_Key)){
}else{
image_xscale = h;
}

}
  if((h=-1 && distance_to_object(WalljumpR) != 1) || (h=1 && distance_to_object(WalljumpL) > 1)){
  //�����Ă����Ԃɂ���
  if(!place_meeting(x,y+4,slipblock)){
  hspeed = maxSpeed*h;
  }else{
  if((h=1 && hspeed<maxSpeed) || (h=-1 && hspeed>-maxSpeed))hspeed +=(instance_place(x,y+10,slipblock).slip)*h
  }
  //�����Ă���摜�ɕύX
  sprite_index = sprPlayerRunning;
  image_speed = 0.3;
  }
}else{
  if(!place_meeting(x,y+4,slipblock)){
  //������Ԃɂ���
  hspeed = 0;
  }else{
  if(hspeed!=0)hspeed-=(instance_place(x,y+10,slipblock).slip)*sign(hspeed)
  }
  //�����摜�ɕύX
  sprite_index = sprPlayerIdle;
  image_speed = 0.15;
}

//������ɏ���Ă��Ȃ���
if (onPlatform == false){
  //�W�����v�E�����摜�ɕύX
  if(vspeed < -0.05){
    sprite_index = sprPlayerJump;
  }
  if(vspeed > 0.05){
    sprite_index = sprPlayerFall;
  }
}
//������ɏ���Ă��Ԃ��������ꂽ�u��
else
    {
    if !place_meeting(x,y+4,platform)
        onPlatform = 0
    }
}

//vspeed���ő�l�𒴂�����A�ő�l�ɌŒ�
if abs(vspeed) > maxVspeed
    vspeed = sign(vspeed)*maxVspeed


if !frozen
{
    if keyboard_check_pressed(global.controls[5]) && !dotkid playerShoot()
    if keyboard_check_pressed(global.controls[4]) playerJump()
    if keyboard_check_released(global.controls[4]) playerVJump()
    if keyboard_check(global.controls[5]) && global.item[2] == 1 && shotdelay == 0 && !dotkid playerShoot()
}



if(global.Dot_Adjust)
{
    if(place_meeting(x,y+1,block) || place_meeting(x,y+1,solidblock))
    {
        if(keyboard_check_pressed(global.Dot_Adjust_Lkey)) hspeed-=1;
        if(keyboard_check_pressed(global.Dot_Adjust_Rkey)) hspeed+=1;
    }
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///walljumps

//�ǃW�����v�̏���
if distance_to_object(WalljumpL) < 2 && place_free(x,y+1) {

vspeed=2;
maxFallSpeed=2;
sprite_index=sprPlayerSliding;
image_xscale=1
image_speed=1/2;


    if keyboard_check_pressed(global.controls[1]) && keyboard_check(global.controls[4]) {
    sprite_index=sprPlayerJump;
    maxFallSpeed=8
    vspeed = -9;
    hspeed = 15;
    sound_play(snd_wallum);

    }

    if keyboard_check_pressed(global.controls[1]) && !keyboard_check(global.controls[4]) {
    hspeed=3
    maxFallSpeed=8
    sprite_index=sprPlayerFall;
    }

}

if distance_to_object(WalljumpL) > 1 && place_free(x,y+1) {
maxFallSpeed=8
}


if distance_to_object(WalljumpR) = 1 && place_free(x,y+1) {

vspeed=2;
maxFallSpeed=2;
sprite_index=sprPlayerSliding;
image_xscale=-1
image_speed=1/2;

    if keyboard_check_pressed(global.controls[0]) && keyboard_check(global.controls[4]) {
    sprite_index=sprPlayerJump;
    maxFallSpeed=8
    vspeed = -9;
    hspeed = -15;
    sound_play(snd_wallum);
    }

    if keyboard_check_pressed(global.controls[0]) && !keyboard_check(global.controls[4]) {
    hspeed=-3
    maxFallSpeed=8
    sprite_index=sprPlayerFall;
    }

}

if distance_to_object(WalljumpR) > 1 && place_free(x,y+1) {
maxFallSpeed=8
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///gravity change
if(global.grav=1){
global.image_xscale=image_xscale
instance_create(x,y-4,player2)
instance_destroy()
}

if global.godmode image_alpha = 1/2 else image_alpha = 1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///dotkid check
if shotdelay > 0 shotdelay -= 1
if global.infjump djump = 1
if dotkid
{
    player.sprite_index = sprDotkid
    object_set_mask(player, sprDotkid)
}
if room == rHubRoom
{
    djump = true
    maxSpeed = 6
}
if y > 632 && room == rBestGuy1
{
    vspeed *= 2
    djump = false
}
if instance_exists(DotkidCircle)
{
    sprite_index = sprDotkid
    mask_index = sprDotkid
    dotkid = true
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ladderjump=false

if(ladder=1){
sprite_index=sprPlayerBack;
image_speed=0.1
}
if(ladderud=1){
sprite_index=sprPlayerLadderUpDown;
image_speed=0.2
}
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if other.solid
{
    //�ǂƂ̏Փ˔���

    //�O��ɕǂ����鎞
    if(place_free(x+hspeed,y) == false){
      if(hspeed <= 0){//��
        move_contact_solid(180,abs(hspeed));
      }
      if(hspeed > 0){//�E
        move_contact_solid(0,abs(hspeed));
      }
      hspeed = 0;
    }

    //�㉺�ɕǂ����鎞
    if(place_free(x,y+vspeed) == false){
      if(vspeed <= 0){//��
        move_contact_solid(90,abs(vspeed));
        with KTGBarrel {if active {active = false; player.djump = true}}
      }
      if(vspeed > 0){//��
        move_contact_solid(270,abs(vspeed));
        djump=1;
      }
      vspeed = 0;

    }

    //�΂߂̈ʒu�ɕǂ����鎞
    if (place_free(x+hspeed,y+vspeed) == false){
      hspeed=0;
    }
}
#define Collision_playerKiller
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//���S�iKillPlayer����s�j
killPlayer();
#define Collision_platform
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//������Ƃ̏Փ˔���
//������̏�ɋ�����A������ɂ��������ۂ�����
if(y-vspeed/2 <= other.y){
  if(other.vspeed >= 0){
    y = other.y-9;
    vspeed = other.vspeed;
    djump = true;
  }
  onPlatform = 1;
  djump = true;
}
#define Collision_solidblock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if other.solid
{
//�ǂƂ̏Փ˔���

//�O��ɕǂ����鎞
if(place_free(x+hspeed,y) == false){
  if(hspeed <= 0){//��
    move_contact_solid(180,abs(hspeed));
  }
  if(hspeed > 0){//�E
    move_contact_solid(0,abs(hspeed));
  }
  hspeed = 0;
}

//�㉺�ɕǂ����鎞
if(place_free(x,y+vspeed) == false){
  if(vspeed <= 0){//��
    move_contact_solid(90,abs(vspeed));
  }
  if(vspeed > 0){//��
    move_contact_solid(270,abs(vspeed));
    djump=1;
  }
  vspeed = 0;
  gravity=0
}

//�΂߂̈ʒu�ɕǂ����鎞
if (place_free(x+hspeed,y+vspeed) == false){
  hspeed=0;
}
}
#define Other_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//��ʂ̊O�ɏo���Ƃ��̔���
var changeRoom,tempwarp;

//���[���̊O�ɋ��邩�ǂ����̃`�F�b�N
changeRoom = outsideRoom();


if(changeRoom == true){
  //�߂���roomChanger���L��΁A����roomTo�̃��[���Ɉړ��B������Ύ��S
  if(place_meeting(x,y,outsideroomChanger) == false){
  if(global.looproom=0) killPlayer();

  }else{
    tempwarp=instance_place(x,y,outsideroomChanger)
    with(tempwarp){
      room_goto(roomTo);
        if(warpX=0 && warpY=0){
            with(player)instance_destroy();
            with(bow)instance_destroy();
        }else{
            player.x=warpX
            player.y=warpY
        }
    }
  }
}
  //���W���킹�i���[���̃T�C�Y�������łȂ��Ƌ������ςɂȂ�܂��j
  if(x < 0){
    x = room_width-16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(x > room_width){
    x = 16;
    y -= vspeed;
    changeRoom = true;
  }
  else if(y < 0){
    y = room_height-16;
    x = xprevious;
    changeRoom = true;
  }
  else if(y > room_height){
    y = 16;
    x = xprevious;
    changeRoom = true;
  }
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if sprite_index = sprPlayerJump image_index = 2
#define KeyPress_119
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.debug == 1 {for(i = 0; i < 30; i += 1 ) global.achievement[i] = 0}
