///ga_configureAvailableResourceItemTypes(array)

if (is_array(argument0))
{
    configureAvailableResourceItemTypes(util_ga_arrayToJsonString(argument0));
}
else
{
    ga_trace("ga_configureAvailableResourceItemTypes() argument is not an array");
}
