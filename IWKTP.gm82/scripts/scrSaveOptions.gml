var f;
f = file_bin_open(working_directory+"/data/IWKTP_options",1);
for(i = 0; i < 7; i += 1)
    file_bin_write_byte(f,global.options[i])
file_bin_close(f)

f = file_bin_open(working_directory+"/data/IWKTP_controls",1);
for(i = 0; i < 8; i += 1)
    file_bin_write_byte(f,global.controls[i])
file_bin_close(f)
