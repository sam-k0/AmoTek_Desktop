///updateAppInit()
var targetFile = working_directory+"master_version.txt";
if(file_exists(targetFile))
{
    debug("Delete old version file")
    file_delete(targetFile);
}

debug("Download version file from git")
obj_gui.downloadVersionFile = http_get_file(MASTER_APPVERSION,working_directory+"master_version.txt")



