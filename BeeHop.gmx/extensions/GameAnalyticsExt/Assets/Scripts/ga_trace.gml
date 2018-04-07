///ga_trace(...)

var r = "GameAnalytics: " + string(argument[0]), i;
for (i = 1; i < argument_count; i++) 
{
    r += ", " + string(argument[i])
}

file_text_write_string(global.logfile, r)
file_text_writeln(global.logfile)
show_debug_message(r)
