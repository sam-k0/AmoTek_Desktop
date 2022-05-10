///getLocalVersion()
// Read local file
var __v = APPVERSION;
if(file_exists(working_directory + "version.txt"))
{
    file = file_text_open_read(working_directory + "version.txt");
    __v = file_text_read_string(file);
    file_text_close(file);
}
return __v;
