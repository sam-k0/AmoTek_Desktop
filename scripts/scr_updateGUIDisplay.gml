with(obj_gui)
{
// audio
hobbl_com_edit_setsel(setAmplitudeMultiLabel, 0,999);
hobbl_com_edit_replaceselection(setAmplitudeMultiLabel, 0, "-> Amplitude multiplier: "+ string(obj_ledcontrol.audioMultiplier));
//brightness
hobbl_com_edit_setsel(setBrightnessLabel, 0,999);
hobbl_com_edit_replaceselection(setBrightnessLabel, 0, "-> Brightness: "+ string(obj_ledcontrol.brightness));
//errstack
hobbl_com_edit_setsel(setErrstackLabel, 0,999);
hobbl_com_edit_replaceselection(setErrstackLabel, 0, "-> Error Stack: "+ string(obj_ledcontrol.maxErrors));


//left rgb
hobbl_com_edit_setsel(setLeftRGBLabel, 0,999);
hobbl_com_edit_replaceselection(setLeftRGBLabel, 0, "-> Left side RGB: ("+string(obj_ledcontrol.leftrgb[0])+ ","+string(obj_ledcontrol.leftrgb[1])+","+string(obj_ledcontrol.leftrgb[2])+")");
 
//right rgb
hobbl_com_edit_setsel(setRightRGBLabel, 0,999);
hobbl_com_edit_replaceselection(setRightRGBLabel, 0, "-> Right side RGB: ("+string(obj_ledcontrol.rightrgb[0])+ ","+string(obj_ledcontrol.rightrgb[1])+","+string(obj_ledcontrol.rightrgb[2])+")");
}
