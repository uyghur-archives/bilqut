function swf_obj(src,w,h,swfid){
	swf_html = '';
	swf_html += '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="https://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+w+'" height="'+h+'" id="'+swfid+'" align="middle">';
	swf_html += '<param name="allowScriptAccess" value="always">';
	swf_html += '<param name="movie" value="'+src+'">';
	swf_html += '<param name="quality" value="high">';
	swf_html += '<param name="bgcolor" value="#FFFFFF">';
	swf_html += '<PARAM NAME="wmode" value="opaque">';
	swf_html += '<embed src="'+src+'" quality="high" bgcolor="#8D6101" width="'+w+'" height="'+h+'" name="'+swfid+'" align="middle" allowScriptAccess="always" wmode="transparent" type="application/x-shockwave-flash" pluginspage="https://www.macromedia.com/go/getflashplayer">';
	swf_html += '</object>';
	document.write(swf_html);
}


function open_window(url,name,para) { 
window.open(url,name,para); 
} 