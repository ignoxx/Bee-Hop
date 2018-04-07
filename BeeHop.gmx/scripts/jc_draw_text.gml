///jc_draw_text(x,y,string,scale,angle,[width, outcolor, fidelity])

// Draw text with some transformations
if(argument_count < 6)
    draw_text_transformed(argument[0],argument[1],argument[2],argument[3],argument[3],argument[4]);
else
    draw_text_transformed_outline(argument[0],argument[1],argument[2],argument[5],argument[6],argument[7], argument[3], argument[4]);


