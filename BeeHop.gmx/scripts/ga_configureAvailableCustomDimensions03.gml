///ga_configureAvailableCustomDimensions03(array)

if (is_array(argument0))
{
    configureAvailableCustomDimensions03(util_ga_arrayToJsonString(argument0));
}
else
{
    ga_trace("ga_configureAvailableCustomDimensions03() argument is not an array");
}
