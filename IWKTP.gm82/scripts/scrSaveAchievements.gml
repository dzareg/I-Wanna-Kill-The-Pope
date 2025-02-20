var f;
f = file_bin_open(working_directory+"/data/IWKTP_achievements",1);
for(i = 0; i < 30; i += 1)
    file_bin_write_byte(f,global.achievement[i])
file_bin_close(f)
