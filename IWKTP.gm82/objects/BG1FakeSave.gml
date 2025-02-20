#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//��Փx�Q�ȏ�ō폜����Z�[�u�|�C���g
image_speed=0;
saveTimer = -1; //�Z�[�u�^�C�}�[
if(global.difficulty > 1){
  instance_destroy();
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
saveTimer -= 1;
#define Collision_bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//�Z�[�u���āA��莞�ԃZ�[�u�s�ɂ���
if(saveTimer < 0 && instance_exists(player) == true){
  saveTimer = 30;
  image_index = 1;
  image_speed = 0.017;
  killPlayer();
  with GAMEOVER {sprite_index = sprBG1Death}
}
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0;
image_index=0;
