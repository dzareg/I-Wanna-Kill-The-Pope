var f;
if file_exists(working_directory+"/data/IWKTP_achievements")
{
    f = file_bin_open(working_directory+"/data/IWKTP_achievements",0);
    for(i = 0; i < 30; i += 1)
        global.achievement[i] = file_bin_read_byte(f)
    file_bin_close(f)
}
