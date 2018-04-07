///util_ga_arrayToJsonString(array)

var result = "[]";

if (is_array(argument0))
{
    var array = argument0;
    
    var length = array_length_1d(array);
    result = "[";
    for(var i = 0; i < length; ++i)
    {
        if(is_string(array[i]))
        {
            result += '"' + string(array[i]) + '"';
            if(i < length - 1)
            {
                result += ",";
            }
        }
      else if(is_real(array[i]))
        {
            result += string(array[i]);
            if(i < length - 1)
            {
                result += ",";
            }
        }
        else
        {
            ga_trace("ga_arrayToJsonString() element at index=" + i + " is not a string or number");
        }
    }
    result += "]";
}

return result;
 
