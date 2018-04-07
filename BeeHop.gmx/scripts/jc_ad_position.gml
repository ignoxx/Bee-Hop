/// jc_ad_position(top, left)
if(!global._show_ads) exit;

js_executem('
    document.getElementById("adWrapper").style.top = "'+ string(argument[0]) +'px";
    document.getElementById("adWrapper").style.left = "'+ string(argument[1]) +'px";
');

