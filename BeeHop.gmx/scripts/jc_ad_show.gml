/// jc_ad_show()
if(!global._show_ads) exit;

var ad_type = "banner";

if(room == rm_main){
    ad_type = "banner-break";
    jc_ad_position(0, 0);
}


js_executem('
    if(!document.getElementById("adWrapper")){
        document.getElementById("adWrapper").style.display = "block";
        document.getElementById("'+ string(ad_type) +'").style.display = "block";
    }
');

