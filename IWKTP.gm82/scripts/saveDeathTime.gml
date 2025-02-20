//�Q�[����Z�[�u
//�Z�[�u�f�[�^�Ȃǂ͊�{�I�Ƀo�C�i���`���ŕۑ�����Ă��܂�
var f,tem;
f = file_bin_open(global.savepath,1);

file_bin_seek(f,11);
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

file_bin_close(f);
