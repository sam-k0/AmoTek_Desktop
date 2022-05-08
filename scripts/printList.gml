///printList(l)
list = argument0;
str = "[";
for (i=0; i<ds_list_size(list); i+=1)
{
    str += string(ds_list_find_value(list, i)) + ","
};

str += "]"

debug(str)

