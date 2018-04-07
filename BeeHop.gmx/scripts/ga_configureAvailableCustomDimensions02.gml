///ga_configureAvailableCustomDimensions02(array)

if (is_array(argument0))
{
    configureAvailableCustomDimensions02(util_ga_arrayToJsonString(argument0));
}
else
{
    ga_trace("ga_configureAvailableCustomDimensions02() argument is not an array");
}
