///ga_addResourceEvent(flowType:double, currency:string, amount:double, itemType:string, itemId:string)

if(os_type == os_macosx || os_type == os_linux || os_type == os_uwp || os_type == os_windows)
{
    	addResourceEventJson(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
}
else
{
    	addResourceEvent(argument[0], argument[1], argument[2], argument[3], argument[4]);
}

