//save�t�@�C����ǂݍ���Ŏ��s
//�Z�[�u�f�[�^�Ȃǂ͊�{�I�Ƀo�C�i���`���ŕۑ�����Ă��܂�
var f,roomTo;

if(file_exists(global.savepath) == true){
f = file_bin_open(global.savepath,0);
file_bin_seek(f,10)

global.difficulty = file_bin_read_byte(f);
global.death = file_bin_read_byte(f)*1000000;
global.death += file_bin_read_byte(f)*10000;
global.death += file_bin_read_byte(f)*100;
global.death += file_bin_read_byte(f);
global.time = file_bin_read_byte(f)*1000000;
global.time += file_bin_read_byte(f)*10000;
global.time += file_bin_read_byte(f)*100;
global.time += file_bin_read_byte(f);
global.boss1 = file_bin_read_byte(f);
global.boss2 = file_bin_read_byte(f);
global.boss3 = file_bin_read_byte(f);
global.boss4 = file_bin_read_byte(f);
global.boss5 = file_bin_read_byte(f);
global.boss6 = file_bin_read_byte(f);
global.boss7 = file_bin_read_byte(f);
global.boss8 = file_bin_read_byte(f);
global.clear = file_bin_read_byte(f);

file_bin_close(f);

}
