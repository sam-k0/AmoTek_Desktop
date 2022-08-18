/// scr_saveCurrentConfigToStartup()

if(instance_exists(obj_ledcontrol))
{
    var colsLeft = ds_list_create();
    var colsRight = ds_list_create();
    
    //ds_list_add(colsLeft, obj_ledcontrol.leftrgb[0],obj_ledcontrol.leftrgb[1],obj_ledcontrol.leftrgb[2] );
    //ds_list_add(colsRight, obj_ledcontrol.rightrgb[0],obj_ledcontrol.rightrgb[1],obj_ledcontrol.rightrgb[2] );
    
    var map = ds_map_create();
    ds_map_add(map, "l", obj_ledcontrol.leftrgb);
    ds_map_add(map, "r", obj_ledcontrol.rightrgb);
    
    var jstring = json_encode(map);
    
    ds_list_destroy(colsLeft);
    ds_list_destroy(colsRight);
    ds_map_destroy(map);
    
    ini_open(working_directory + "config.tek");
    ini_write_string("startup_config", "colors", jstring);
    ini_write_real("startup_config", "brightness", obj_ledcontrol.brightness);
    ini_write_real("startup_config", "audioscale", obj_ledcontrol.audioMultiplier);
    ini_write_real("startup_config", "errstack", obj_ledcontrol.maxErrors);
    ini_close();
    
    scr_removeMaliciousCharactersFromConfig()
    
}
