///scrSaveData(filepath, array, arraylength)
var f,ffpath;

switch argument0
{
    case 1: ffpath = working_directory+"/data/IWKTP_achievements" break
    case 2:      ffpath = working_directory+"/data/IWKTP_options"      break
    case 3:     ffpath = working_directory+"/data/IWKTP_controls"     break
}

f = file_bin_open(ffpath,1);
for(i = 0; i < argument2; i += 1)
    file_bin_write_byte(f,argument1[i])
file_bin_close(f)
