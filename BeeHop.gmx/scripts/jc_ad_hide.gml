/// jc_ad_hide()
if(!global._show_ads) exit;

var ad_type = "banner";

if(room == rm_main){
    ad_type = "banner-break";
}

js_executem('
    if(!document.getElementById("adWrapper")){
        document.getElementById("adWrapper").style.display = "none";
        document.getElementById("'+ string(ad_type) +'").style.display = "none";
    }
');

