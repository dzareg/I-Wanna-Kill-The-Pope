//�W�����v����������i������^����j

if(global.grav=0){
//�n�ʂɐڂ��Ă���@�܂��́@������ɏ���Ă���
if(place_meeting(x,y+1,block) || onPlatform || place_meeting(x,y+1,objwater) || place_meeting(x,y+1,solidblock) || ladderjump=true)
{
    vspeed = -jump;
    sound_play(sndJump);
    djump = true;
    with KTGBlueBlockOn  {alarm[0] = 1}
    with KTGBlueBlockOff {alarm[0] = 1}
    with KTGOrangeBlockOn  {alarm[0] = 1}
    with KTGOrangeBlockOff {alarm[0] = 1}

}
//�󒆂ɕ����Ă��ԂŁA�Q�i�ڂ̃W�����v���c���Ă��鎞
else if(djump == true || place_meeting(x,y+1,objwater2))
{
    vspeed = -jump2;
    sprite_index = sprPlayerJump;
    sound_play(sndDJump);
    djump = false;
    with KTGOrangeBlockOn  {alarm[0] = 1}
    with KTGOrangeBlockOff {alarm[0] = 1}
}

}else{

//�n�ʂɐڂ��Ă���@�܂��́@������ɏ���Ă���
if(place_meeting(x,y-1,block) || onPlatform || place_meeting(x,y-1,objwater) || place_meeting(x,y-1,solidblock) || ladderjump=true){
  vspeed = -jump;
  sound_play(sndJump);
  djump = true;

}
//�󒆂ɕ����Ă��ԂŁA�Q�i�ڂ̃W�����v���c���Ă��鎞
else if(djump == true || place_meeting(x,y-1,objwater2)){
  vspeed = -jump2;
  sound_play(sndDJump);
  djump = false;

}
}
