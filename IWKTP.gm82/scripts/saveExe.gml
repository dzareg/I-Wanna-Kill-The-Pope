//save�t�@�C����ǂݍ���Ŏ��s
//�Z�[�u�f�[�^�Ȃǂ͊�{�I�Ƀo�C�i���`���ŕۑ�����Ă��܂�
var f,roomTo;

if(file_exists(global.savepath) == true){
f = file_bin_open(global.savepath,0);
roomTo = file_bin_read_byte(f)*10000;
roomTo += file_bin_read_byte(f)*100;
roomTo += file_bin_read_byte(f);

room_goto(roomTo);
 global.image_xscale=0;
if( !instance_exists(player) ) instance_create(0,0,player);

player.x = file_bin_read_byte(f)*10000;
player.x += file_bin_read_byte(f)*100;
player.x += file_bin_read_byte(f);
player.y = file_bin_read_byte(f)*10000;
player.y += file_bin_read_byte(f)*100;
player.y += file_bin_read_byte(f);
global.grav = file_bin_read_byte(f);

global.difficulty = file_bin_read_byte(f);
global.death = file_bin_read_byte(f)*1000000;
global.death += file_bin_read_byte(f)*10000;
global.death += file_bin_read_byte(f)*100;
global.death += file_bin_read_byte(f);
global.time = file_bin_read_byte(f)*1000000;
global.time += file_bin_read_byte(f)*10000;
global.time += file_bin_read_byte(f)*100;
global.time += file_bin_read_byte(f);

global.boss[1] = file_bin_read_byte(f);
global.boss[2] = file_bin_read_byte(f);
global.boss[3] = file_bin_read_byte(f);
global.boss[4] = file_bin_read_byte(f);
global.boss[5] = file_bin_read_byte(f);
global.boss[6] = file_bin_read_byte(f);
global.boss[7] = file_bin_read_byte(f);
global.boss[8] = file_bin_read_byte(f);
global.clear = file_bin_read_byte(f);

global.item[1] = file_bin_read_byte(f);
global.item[2] = file_bin_read_byte(f);
global.item[3] = file_bin_read_byte(f);
global.item[4] = file_bin_read_byte(f);
global.item[5] = file_bin_read_byte(f);
global.item[6] = file_bin_read_byte(f);
global.item[7] = file_bin_read_byte(f);
global.item[8] = file_bin_read_byte(f);
global.music = file_bin_read_byte(f);

//�����ŐV�����ϐ���ǉ��������Ƃ��͂��̉��ɋL�q���Ă�������



file_bin_close(f);

}
