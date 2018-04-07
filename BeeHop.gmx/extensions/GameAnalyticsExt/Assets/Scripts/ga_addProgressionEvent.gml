///ga_addProgressionEvent(status:double, progression1:string, progression2:string, progression3:string, ?score:double)

var status = argument[0];

if(argument_count == 2)
{
    addProgressionEvent(status, argument[1], "", "");
}
else if(argument_count == 3)
{
    if(is_real(argument[2]))
    {
        if(os_type == os_macosx || os_type == os_linux || os_type == os_uwp || os_type == os_windows)
		      {
            			addProgressionEventWithScoreJson(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "", argument[2])));
		      }
		      else
		      {
			         addProgressionEventWithScore(status, argument[1], "", "", argument[2]);
		      }
    }
    else
    {
        addProgressionEvent(status, argument[1], argument[2], "");
    }
}
else if(argument_count == 4)
{
    if(is_real(argument[3]))
    {
        if(os_type == os_macosx || os_type == os_linux || os_type == os_uwp || os_type == os_windows)
		      {
             			addProgressionEventWithScoreJson(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "", argument[3])));
		      }
		      else
		      {
			          addProgressionEventWithScore(status, argument[1], argument[2], "", argument[3]);
		      }
    }
    else
    {
        addProgressionEvent(status, argument[1], argument[2], argument[3]);
    }
}
else if(argument_count == 5)
{
    if(os_type == os_macosx || os_type == os_linux || os_type == os_uwp || os_type == os_windows)
	   {
        		addProgressionEventWithScoreJson(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3], argument[4])));
	   }
	   else
	   {
		      addProgressionEventWithScore(status, argument[1], argument[2], argument[3], argument[4]);
	   }
}
