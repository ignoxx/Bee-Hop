///ga_configureAvailableCustomDimensions01(array)

if (is_array(argument0))
{
    configureAvailableCustomDimensions01(util_ga_arrayToJsonString(argument0));
}
else
{
    ga_trace("ga_configureAvailableCustomDimensions01() argument is not an array");
}
