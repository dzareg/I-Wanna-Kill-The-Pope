#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//�{�X��|�������Ɍ����A�C�e���ł�
//�{�X��|���܂ł͌����Ȃ��̂ōD���ȏꏊ�ɒu���Ă�������
//�����sprite�ɂ͍D����sprite��w�肵�Ă�������
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//instance_exsists()��()�̒��Ƀ{�X�̃I�u�W�F�N�g����w�肵�Ă�������
//���̃{�X�������ɑ��݂��Ȃ��Ȃ��������̃A�C�e��������܂�
//�܂��A���łɃ{�X���|����Ă�����A�C�e���͏o�Ă��܂���

if(instance_exists(xxx)=0){
visible=1
}

if(global.boss[5]=1){
instance_destroy();
}
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//���̃A�C�e����Ƃ�ƁA�{�X5��|�������Ƃ��L�^����܂�(�Z�[�u�͂���܂���)
//�����Ƀ��[�����bossblock5���j�󂳂�܂�
if(visible=1){
global.boss[5]=1;
sound_play(sndBlockChange);
instance_destroy();
}
