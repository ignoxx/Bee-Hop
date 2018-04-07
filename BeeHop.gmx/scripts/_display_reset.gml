/// _display_reset(vsync)
var aa = 0; var vsync = true;

if(argument_count > 0) vsync = argument[0];

if (display_aa == 2) aa = 2; else // only 2x
if (display_aa == 6) aa = 4; else // only 2x & 4x
if (display_aa == 12) aa = 8; else// only 4x & 8x
if (display_aa > 12) aa = 8;



display_reset(aa, vsync);

