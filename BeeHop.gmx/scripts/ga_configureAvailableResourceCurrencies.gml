///ga_configureAvailableResourceCurrencies(array)

if (is_array(argument0))
{
    configureAvailableResourceCurrencies(util_ga_arrayToJsonString(argument0));
}
else
{
    ga_trace("ga_configureAvailableResourceCurrencies() argument is not an array");
}
