///scrLoadData(filepath, array, arraylength)
var f,fpath;

switch argument0
{
    case 1: fpath = working_directory+"/data/IWKTP_achievements" break
    case 2: fpath = working_directory+"/data/IWKTP_options"      break
    case 3: fpath = working_directory+"/data/IWKTP_controls"     break
}

f = file_bin_open(fpath,0);
for(i = 0; i < argument2; i += 1)
    argument1[i] = file_bin_read_byte(f)
file_bin_close(f)
