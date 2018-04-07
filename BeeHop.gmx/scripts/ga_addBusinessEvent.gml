///ga_addBusinessEvent(...)

if (argument_count == 5)
{
    if(os_type == os_macosx || os_type == os_linux || os_type == os_uwp || os_type == os_windows)
	   {
        addBusinessEventJson(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
	   }
	   else
	   {
		      addBusinessEvent(argument[0], argument[1], argument[2], argument[3], argument[4]);
	   }
}
else if (argument_count == 6 && os_type == os_ios)
{
    if(is_string(argument[5]))
    {
        addBusinessEventWithReceiptIOS(argument0, argument1, argument2, argument3, argument4, argument[5]);
    }
    else if(argument[5] == true)
    {
        addBusinessEventAndAutoFetchReceipt(argument0, argument1, argument2, argument3, argument4);
    }
    else
    {
        addBusinessEvent(argument0, argument1, argument2, argument3, argument4);
    }
}
else if (argument_count == 7 && os_type == os_android)
{
    addBusinessEventWithReceiptAndroid(argument0, argument1, argument2, argument3, argument4, argument[5], "google_play", argument[6]);
}
