/// scr_listToColor(list)
///scr_listToColor(list)

var list = argument0;

var color = make_colour_rgb(list[|0],list[|1],list[|2]);
ds_list_destroy(list);  
return color;
