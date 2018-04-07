///ga_addDesignEvent(eventId:string, ?value:number)

if(argument_count == 1)
{
    addDesignEvent(argument[0]);
}
else if(argument_count == 2)
{
    addDesignEventWithValue(argument[0], argument[1]);
}
