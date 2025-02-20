var f;
if file_exists(working_directory+"/data/IWKTP_options")
{
    f = file_bin_open(working_directory+"/data/IWKTP_options",0);
    for(i = 0; i < 7; i += 1)
        global.options[i] = file_bin_read_byte(f)
    file_bin_close(f)
}

if file_exists(working_directory+"/data/IWKTP_controls")
{
    f = file_bin_open(working_directory+"/data/IWKTP_controls",0);
    for(i = 0; i < 8; i += 1)
        global.controls[i] = file_bin_read_byte(f)
    file_bin_close(f)
}
