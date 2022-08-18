/// scr_removeMaliciousCharactersFromConfig()

var f = file_text_open_read(working_directory + "config.tek")
var s = file_text_read_string(f)

while (!file_text_eof(f))
{
s += string(file_text_readln(f));
}
file_text_close(f);

show_debug_message(s);
// Loop over string
for(i = 0; i < string_length(s)-1; i++)
{
    if((string_char_at(s, i) == chr(34)) && (string_char_at(s, i+1) == '{'))
    {
        s = string_delete(s,i,1)
    }
    
    if((string_char_at(s, i) == chr(34)) && (string_char_at(s, i-1) == '}'))
    {
        s = string_delete(s,i,1)
    }
}
show_debug_message(s)

file_text_close(f);
f= file_text_open_write(working_directory + "config.tek")
file_text_write_string(f, s);
file_text_close(f);
