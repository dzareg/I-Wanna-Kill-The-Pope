//save�t�@�C����ǂݍ���Ŏ��s
//�Z�[�u�f�[�^�Ȃǂ͊�{�I�Ƀo�C�i���`���ŕۑ�����Ă��܂�
var f,fpath;

fpath = working_directory+"/data/IWKTP_options"

if file_exists(fpath)
{
    f = file_bin_open(fpath,1);
    for(i = 0; i < 30; i += 1)
        file_bin_write_byte(f,global.options[i])
    file_bin_close(f)
}
