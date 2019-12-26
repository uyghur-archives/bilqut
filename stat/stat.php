document.write('توردىكىلەر سانى:<span id="online">1</span>');
function ajaxRequest(url, postData) {
	new Ajax.Request(url,{
		method:'post',
		postBody:postData
	});
}
function ajaxUpdater() {
    var url = '/stat/keepol.php';
	var postData = '';
	new Ajax.PeriodicalUpdater('online',url,{
		method:'post',
		postBody:postData,
		frequency:60,
		decay:1
	});
}
var sAgent = navigator.userAgent.toLowerCase();
var strPath = document.location.pathname;
var arrTemp = strPath.split("/");
var strFile = arrTemp.last();
var viewerInfo = new Array();  
viewerInfo['refurl'] = document.referrer;
viewerInfo['pageurl'] = document.location;
viewerInfo['strFile'] = strFile ? strFile.substring(0,strFile.indexOf(".")) : 'index';
viewerInfo['times'] = 1;
viewerInfo['browser'] = 'Unknow';
viewerInfo['osys'] = '';
viewerInfo['vip'] = '207.241.234.183';
viewerInfo['language'] = navigator.browserLanguage==undefined ? navigator.language : navigator.browserLanguage;
viewerInfo['screen'] = screen.width + "X" + screen.height;
viewerInfo['color'] = screen.colorDepth ? screen.colorDepth : screen.pixelDepth;
viewerInfo['alexa'] = sAgent.indexOf('alexa toolbar') != -1 ? 1: 0;
ajaxRequest('/stat/newusr.php', $H(viewerInfo).toQueryString());
Event.observe(window, 'load', ajaxUpdater);
Event.observe(window, 'focus', ajaxUpdater);
Event.observe(window, 'beforeunload', function() {
	ajaxRequest('/stat/leave.php', '');
});
Event.observe(window, 'blur', function() {
	ajaxRequest('/stat/leave.php', '');
});