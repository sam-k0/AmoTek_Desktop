///updateApp
var targetFile = working_directory+"/master_version.txt";
if(file_exists(targetFile))
{
    file_delete(targetFile);
}

obj_gui.downloadFile = http_get_file("https://github.com/sam-k0/AmoTek_Desktop/blob/master/datafiles/version.txt",working_directory+"/master_version.txt")


