//�A�C�e���֘A�̓�e�̃Z�[�u
var f,tem;
f = file_bin_open(global.savepath,1);
file_bin_seek(f,10)

file_bin_write_byte(f,global.difficulty);
tem = global.death;
file_bin_write_byte(f,floor(tem/1000000));
tem -= floor(tem/1000000)*1000000;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);
tem = global.time;
file_bin_write_byte(f,floor(tem/1000000));
tem -= floor(tem/1000000)*1000000;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);


file_bin_write_byte(f,global.boss[1]);
file_bin_write_byte(f,global.boss[2]);
file_bin_write_byte(f,global.boss[3]);
file_bin_write_byte(f,global.boss[4]);
file_bin_write_byte(f,global.boss[5]);
file_bin_write_byte(f,global.boss[6]);
file_bin_write_byte(f,global.boss[7]);
file_bin_write_byte(f,global.boss[8]);
file_bin_write_byte(f,global.clear);
file_bin_write_byte(f,global.item[1]);
file_bin_write_byte(f,global.item[2]);
file_bin_write_byte(f,global.item[3]);
file_bin_write_byte(f,global.item[4]);
file_bin_write_byte(f,global.item[5]);
file_bin_write_byte(f,global.item[6]);
file_bin_write_byte(f,global.item[7]);
file_bin_write_byte(f,global.item[8]);
file_bin_write_byte(f,global.music);

//�����ŐV�����ϐ���ǉ��������Ƃ��͂��̉��ɋL�q���Ă�������



file_bin_close(f);
