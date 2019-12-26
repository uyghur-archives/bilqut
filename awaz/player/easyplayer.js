//Author:dbgateway(www.ioking.com)
//声明：
//     播放器给个人用户免费使用
//     为了尊重作者的劳动成果,可以修改代码，但不允许修改作者名称

var easyplayer_titlelist=new Array();
var easyplayer_filenamelist=new Array();
var easyplayer_singerlist=new Array();
var easyplayer_currentposition=0;
var easyplayer_filecount=0;
var easyplayer_languages=null;
var easyplayer_language='default';
var easyplayer_path='';
var easyplayer_mode='repeatall';
var easyplayer_started=false;
var easyplayer_timer=null;

function easyplayer_mediaplayenabled()
{
		try
		{
			var test=document.getElementById("mediaplayer").controls.playState;
			return true;
		}
		catch(e)
		{				
			return false;			
		}
}
function easyplayer_addfile(title,filename,singer)
{
	easyplayer_titlelist[easyplayer_titlelist.length]=title;
	easyplayer_filenamelist[easyplayer_filenamelist.length]=filename;
	easyplayer_singerlist[easyplayer_singerlist.length]=singer;
	easyplayer_currentposition=1;
	easyplayer_filecount=easyplayer_filecount+1;
}

function easyplayer(language,path,autostart,playmode)
{
	if(language!='')
		easyplayer_language=language;
	if(playmode!=null && playmode!="")
		easyplayer_mode=playmode;
		
	easyplayer_path=path;
	
	this.createtoolbar=function()
	{
		
		document.writeln('<table height=20 cellpadding=0 cellspacing=0 border=0 style="font-size: 12px;"><tr>');
		document.writeln('<td width="90" NOWRAP><a href="https://www.uyghur-archive.com/bilqut/"><img id="easyplayer_flag" src="'+easyplayer_path+'playimg/flag.gif" title="Bilqut_awaz" border="0" align="middle" width="10" height="20"></a></td>');		
		document.writeln('<td noWrap width="120"><marquee direction="right" style="color: #be0000" id="easyplayer_scroll" behavior="slide" width="110" height="13" scrollamount="1" scrolldelay="1">');
		document.writeln('<span id="easyplayer_title" align="right">ساقلاپ تۇرۇڭ</span>');				
		document.writeln('</marquee></td>');
		
		if(easyplayer_mediaplayenabled()) //some browser can not support display elapse time 
			document.writeln('<td width="100" align="center" NOWRAP><span id="easyplayer_elapsetime" style="color: #0000ff" align="center" style="font-size:10pt;">00:00 | 00:00</span></td>');				
		else
			document.writeln('<td width="3" align="center" NOWRAP></td>');				
			
		document.writeln('<td width="20" align="center" NOWRAP><a href="javascript:easyplayer_previous();"><img src="'+easyplayer_path+'playimg/previous.jpg" style="cursor:hand" title="'+easyplayer_languages[2]+'" border="0" align="middle" width="24" height="24"></td>');
		document.writeln('<td width="20" align="center" NOWRAP><a href="javascript:easyplayer_play();"><img src="'+easyplayer_path+'playimg/play.jpg" style="cursor:hand" title="'+easyplayer_languages[0]+'" border="0"  align="middle" width="24" height="24"></a></td>');
		document.writeln('<td width="20" align="center" NOWRAP><a href="javascript:easyplayer_stop();"><img src="'+easyplayer_path+'playimg/stop.jpg" style="cursor:hand" title="'+easyplayer_languages[1]+'" border="0" align="middle" width="24" height="24"></td>');		
		document.writeln('<td width="20" align="center" NOWRAP><a href="javascript:easyplayer_next();"><img src="'+easyplayer_path+'playimg/next.jpg" style="cursor:hand" title="'+easyplayer_languages[3]+'" border="0" align="middle" width="24" height="24"></td>');
		document.writeln('<td width="60" align="center" NOWRAP><a href="javascript:easyplayer_list();"><img src="'+easyplayer_path+'playimg/list.jpg" style="cursor:hand" title="'+easyplayer_languages[4]+'" border="0" align="middle" width="60" height="24"></td>');
		document.writeln('<td width="20" align="center" title="'+easyplayer_languages[5]+'" NOWRAP><span id="easyplayer_url"></span></td>');
		document.writeln('</tr></table>');
	}	
	this.createplayer=function()
	{		
		document.writeln('<span id="mediaplayercode">');
		document.writeln('<object id="mediaplayer" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6"  type="application/x-oleobject" style="position:relative;left:0px;top:0px;width:0px;height:0px;">');
		document.writeln('<param name="autoStart" value="true">');
		document.writeln('<param name="balance" value="0">');
		document.writeln('<param name="currentPosition" value="0">');
		document.writeln('<param name="currentMarker" value="0">');
		document.writeln('<param name="enableContextMenu" value="false">');
		document.writeln('<param name="enableErrorDialogs" value="false">');
		document.writeln('<param name="enabled" value="true">');
		document.writeln('<param name="fullScreen" value="false">');
		document.writeln('<param name="invokeURLs" value="false">');
		document.writeln('<param name="mute" value="false">');
		document.writeln('<param name="playCount" value="1">');
		document.writeln('<param name="rate" value="1">');
		document.writeln('<param name="uiMode" value="none">');
		document.writeln('<param name="volume" value="100">');
		document.writeln('<param name="URL" value="">');		
		document.writeln('</object>');
		document.writeln('</span>');
		
		if(!easyplayer_mediaplayenabled())				
		{	
			document.getElementById("mediaplayercode").innerHTML='<embed id="mediaplayerex" src="'+""+'" width="0" height="0" autostart="true" loop="false"></embed>';			
		}
		
		
	}
	this.readfilelist=function()
	{
		
		
	}
	this.initlanguage=function()
	{
		easyplayer_languages=new Array();
		if(easyplayer_language=='default')
		{
			easyplayer_languages[0]='ئاڭلاش ';
			easyplayer_languages[1]='توختاش ';
			easyplayer_languages[2]='ئالدىنقىسى ';
			easyplayer_languages[3]='كىيىنكىسى';
			easyplayer_languages[4]='ئەسەر  تىزىملىكى';
			easyplayer_languages[5]='بۇ ئەسەرنى چۈشۈرمەن ';
			
		}
		else
		{
			easyplayer_languages[0]='play';
			easyplayer_languages[1]='stop';
			easyplayer_languages[2]='previous';
			easyplayer_languages[3]='next';
			easyplayer_languages[4]='list';
		}
		
	}
	this.init=function()
	{	
		this.initlanguage();
		this.createplayer();
		this.createtoolbar();	
	}
	
	//init
	this.init();	
		
	//play
	if(autostart)
		easyplayer_play();
	
	
	
	
}
function easyplayer_play()
{
	//set position
	if(easyplayer_filecount>0)
	{
		if(easyplayer_currentposition==0)
			easyplayer_currentposition=1;
		
		//set filename
		easyplayer_setmusic(easyplayer_filenamelist[easyplayer_currentposition-1],window);
		
		//set title
		easyplayer_settitle(easyplayer_titlelist[easyplayer_currentposition-1]+" - "+easyplayer_singerlist[easyplayer_currentposition-1]);
		easyplayer_seturl(easyplayer_filenamelist[easyplayer_currentposition-1]);	
		//play
		easyplayer_playmusic(window);
		
		//scroll title
		document.getElementById("easyplayer_scroll").behavior="scroll";
		
		//set play flag
		document.getElementById("easyplayer_flag").src=document.getElementById("easyplayer_flag").src;		
		
		//set start flag
		easyplayer_started=true;
		
		//set timer
		if(easyplayer_timer==null)
			easyplayer_timer=setTimeout('easyplayer_loop()',1000);		
	}	
}
function easyplayer_setmusic(file,win)
{
	if(easyplayer_mediaplayenabled())
		win.document.getElementById("mediaplayer").URL=file;
	else
		win.document.getElementById("mediaplayercode").innerHTML='<embed id="mediaplayerex" src="'+file+'" width="0" height="0" autostart="true" loop="false"></embed>';			
}
function easyplayer_playmusic(win)
{
	if(easyplayer_mediaplayenabled())
		win.document.getElementById("mediaplayer").controls.play();	
}
function easyplayer_stopmusic(win)
{
	if(easyplayer_mediaplayenabled())
		win.document.getElementById("mediaplayer").controls.stop();	
	else
		win.document.getElementById("mediaplayercode").innerHTML='<embed id="mediaplayerex" src="'+""+'" width="0" height="0" autostart="true" loop="false"></embed>';			
}
function easyplayer_settitle(title)
{	
	document.getElementById("easyplayer_title").innerHTML=title;
}
function easyplayer_seturl(filename){
		document.getElementById("easyplayer_url").innerHTML='<a href="'+filename+'" target="_blank"><img src="../images/down.gif" border="0"></a>';
	}

function easyplayer_stop()
{	
	//set title
	easyplayer_settitle("");
	
	//stop	
	easyplayer_stopmusic(window);
	document.getElementById("easyplayer_scroll").behavior="slide";	
	
	//set start flag
	easyplayer_started=false;
	
	//clear timer
	if(easyplayer_timer!=null)
	{
		clearTimeout(easyplayer_timer);
		easyplayer_timer=null;
	}
	
	//set elapse time
	easyplayer_setelapsetime();
	
}
function easyplayer_previous()
{
	//stop
	easyplayer_stop();
	
	//set position
	if(easyplayer_currentposition>1)
		easyplayer_currentposition=easyplayer_currentposition-1;
	else if(easyplayer_currentposition==1)
		easyplayer_currentposition=easyplayer_filecount;
		
	//play
	easyplayer_play();
	
}
function easyplayer_random()
{
	//stop
	easyplayer_stop();
	
	//set position
	easyplayer_currentposition=Math.floor(Math.random() * easyplayer_filecount);
		
	//play
	easyplayer_play();
	
}
function easyplayer_go(win,title,url)
{		
	//stop
	easyplayer_stopmusic(win);	
	
	//set title
	win.document.getElementById("easyplayer_title").innerHTML=title;
	
	//set url	
	easyplayer_setmusic(url,win);	
		
	//play
	easyplayer_playmusic(win);
	
}
function easyplayer_loop()
{
	if(easyplayer_started)
	{			
		//judge if current music is stoped
		if(easyplayer_mediaplayenabled())
		{
			if(easyplayer_mode=='random')
			{
				if(document.getElementById("mediaplayer").playState==2 || document.getElementById("mediaplayer").playState==1)
					easyplayer_random();
			}
			else if(easyplayer_mode=='repeat')
			{
				if(document.getElementById("mediaplayer").playState==2 || document.getElementById("mediaplayer").playState==1)
					easyplayer_play();			
			}
			else 
			{
				if(document.getElementById("mediaplayer").playState==2 || document.getElementById("mediaplayer").playState==1)
					easyplayer_next();			
			}
		}		
	}
	
	//set time elapse
	easyplayer_setelapsetime();		
	
	//set timer
	if(easyplayer_timer!=null)
		clearTimeout(easyplayer_timer);
	easyplayer_timer=setTimeout('easyplayer_loop()',1000);		
}
function easyplayer_setelapsetime()
{
	//set time elapse
	if(easyplayer_mediaplayenabled())
	{
		if(document.getElementById("mediaplayer").playState==3)
			document.getElementById("easyplayer_elapsetime").innerHTML=document.getElementById("mediaplayer").controls.currentPositionString+" | "+document.getElementById("mediaplayer").currentMedia.durationString;
		else
			document.getElementById("easyplayer_elapsetime").innerHTML="00:00 | 00:00";
	}
}
function easyplayer_next()
{
	
	//stop
	easyplayer_stop();
	
	//set position
	if(easyplayer_currentposition<easyplayer_filecount)
		easyplayer_currentposition=easyplayer_currentposition+1;
	else if(easyplayer_currentposition==easyplayer_filecount)
		easyplayer_currentposition=1;
		
	//play
	easyplayer_play();
}
function easyplayer_list()
{
	var listwindow;
	
	//open file list window
	listwindow=window.open(easyplayer_path+"list.html",'',"height=500,width=400,edge:Raised,status=yes,toolbar=no,menubar=no,scrollbars=yes,location=no,alwaysRaised=yes");
	
	//set html title
	listwindow.document.open();
	listwindow.document.writeln('<html dir="rtl"><head><title>EasyPlayer Music List</title><meta http-equiv=Content-Type content="text/html; charset=utf-8"><link href="../../bilqut_web.css" rel="stylesheet" type="text/css"></head><body bgcolor="#f3f2ed">');
	
	listwindow.document.writeln('<script language=javascript>');		
	listwindow.document.writeln('function easyplayer_go(win,title,url)');
	listwindow.document.writeln('{');		
	if(easyplayer_mediaplayenabled())
	{
		listwindow.document.writeln('win.document.getElementById("mediaplayer").controls.stop();');		
		listwindow.document.writeln('win.document.getElementById("easyplayer_title").innerHTML=title;');	
		listwindow.document.writeln('win.document.getElementById("mediaplayer").URL=url;');		
		listwindow.document.writeln('win.document.getElementById("mediaplayer").controls.play();');			
		listwindow.document.writeln('win.document.getElementById("easyplayer_flag").src=win.document.getElementById("easyplayer_flag").src;');		
	}	
	else
	{		
		listwindow.document.writeln('win.document.getElementById("easyplayer_title").innerHTML=title;');	
		listwindow.document.writeln('win.document.getElementById("mediaplayercode").innerHTML="";');	
		listwindow.document.writeln('win.document.getElementById("mediaplayercode").innerHTML=\'<embed id="mediaplayerex" src="\'+url+\'" width="0" height="0" autostart="true" loop="false"></embed>\';');		
		listwindow.document.writeln('win.document.getElementById("easyplayer_flag").src=win.document.getElementById("easyplayer_flag").src;');						
		listwindow.document.writeln('window.close();');		
	}
	listwindow.document.writeln('}');
	listwindow.document.writeln('</script>');	
	
	//write file list	
	listwindow.document.writeln('<table width="370" border="0" cellpadding="0" cellspacing="1" bordercolor="#ebcea3" bgcolor="#f9f5f0">');
	listwindow.document.writeln('<tr>');
	listwindow.document.writeln('<td height="30" colspan="4" bgcolor="#FFCC33" background="../awazjan/U_bg.gif">&nbsp;</td>');
	listwindow.document.writeln('</tr>');	
	for(i=0;i<easyplayer_filenamelist.length;i++)
	{
		
		listwindow.document.writeln('<tr bgcolor="#FFFFFF" align="center">');
		
		//write index
		listwindow.document.writeln('<td width="40" bgcolor="#FFFFFF" height="24">');
		listwindow.document.writeln((i+1).toString());		
		listwindow.document.writeln('</td>');
		
		//write file title 
		listwindow.document.writeln('<td width="300" bgcolor="#FFFFFF">');				
		listwindow.document.writeln('<a href=\'javascript:easyplayer_go(window.opener,"'+easyplayer_titlelist[i]+" - "+easyplayer_singerlist[i]+'","'+easyplayer_filenamelist[i]+'");\'>');				
		listwindow.document.writeln(easyplayer_titlelist[i]);		
		listwindow.document.writeln('<a>');		
		listwindow.document.writeln('</td>');
		//write singer
		listwindow.document.writeln('<td width="45" bgcolor="#FFFFFF">');
		listwindow.document.writeln('<a href=\'javascript:easyplayer_go(window.opener,"'+easyplayer_titlelist[i]+" - "+easyplayer_singerlist[i]+'","'+easyplayer_filenamelist[i]+'");\'>');		
		listwindow.document.writeln('<img  src="../images/play.gif" border="0"/>');	
		listwindow.document.writeln('<a>');		
		listwindow.document.writeln('</td>');		
		listwindow.document.writeln('</tr>');
		
	}
	listwindow.document.writeln('<tr>');
	listwindow.document.writeln('<td colspan="4" bgcolor="#f9f5f0">&nbsp;</td>');
	listwindow.document.writeln('</tr>');
	listwindow.document.writeln("</table>");
	listwindow.document.writeln('</body></html>');
	listwindow.document.close();
}

function easyplayer_list1()
{
	var listwindow;	
	listwindow=listwindow+('<script language=javascript>');		
	listwindow=listwindow+('function easyplayer_go(win,title,url)');
	listwindow=listwindow+('{');		
	if(easyplayer_mediaplayenabled())
	{
		listwindow=listwindow+('win.document.getElementById("mediaplayer").controls.stop();');		
		listwindow=listwindow+('win.document.getElementById("easyplayer_title").innerHTML=title;');	
		listwindow=listwindow+('win.document.getElementById("mediaplayer").URL=url;');		
		listwindow=listwindow+('win.document.getElementById("mediaplayer").controls.play();');			
		listwindow=listwindow+('win.document.getElementById("easyplayer_flag").src=win.document.getElementById("easyplayer_flag").src;');		
	}	
	else
	{		
		listwindow=listwindow+('win.document.getElementById("easyplayer_title").innerHTML=title;');	
		listwindow=listwindow+('win.document.getElementById("mediaplayercode").innerHTML="";');	
		listwindow=listwindow+('win.document.getElementById("mediaplayercode").innerHTML=\'<embed id="mediaplayerex" src="\'+url+\'" width="0" height="0" autostart="true" loop="false"></embed>\';');		
		listwindow=listwindow+('win.document.getElementById("easyplayer_flag").src=win.document.getElementById("easyplayer_flag").src;');						
		listwindow=listwindow+('window.close();');		
	}
	listwindow=listwindow+('}');
	listwindow=listwindow+('</script>');	
	
	//write file list	
	listwindow=listwindow+('<table width="370" border="0" cellpadding="0" cellspacing="1" bordercolor="#ECE9D8" bgcolor="#FF9900">');
	listwindow=listwindow+('<tr>');
	listwindow=listwindow+('<td height="35" colspan="4" bgcolor="#FFCC33" background="playimg/new_bfq_02.jpg">&nbsp;</td>');
	listwindow=listwindow+('</tr>');	
	for(i=0;i<easyplayer_filenamelist.length;i++)
	{
		
		listwindow=listwindow+('<tr bgcolor="#FFFFFF" align="center">');
		
		//write index
		listwindow=listwindow+('<td width="40" bgcolor="#FFFFFF" height="24">');
		listwindow=listwindow+((i+1).toString());		
		listwindow=listwindow+('</td>');
		
		//write file title 
		listwindow=listwindow+('<td width="180" bgcolor="#FFFFFF">');				
		listwindow=listwindow+('<a href=\'javascript:easyplayer_go(window.opener,"'+easyplayer_titlelist[i]+" - "+easyplayer_singerlist[i]+'","'+easyplayer_filenamelist[i]+'");\'>');				
		listwindow=listwindow+(easyplayer_titlelist[i]);		
		listwindow=listwindow+('<a>');		
		listwindow=listwindow+('</td>');
		//write singer
		listwindow=listwindow+('<td width="100" bgcolor="#FFFFFF">');
		listwindow=listwindow+(easyplayer_singerlist[i]);		
		listwindow=listwindow+('</td>');
		listwindow=listwindow+('<td width="45" bgcolor="#FFFFFF">');
		listwindow=listwindow+('<a href=\'javascript:easyplayer_go(window.opener,"'+easyplayer_titlelist[i]+" - "+easyplayer_singerlist[i]+'","'+easyplayer_filenamelist[i]+'");\'>');		
		listwindow=listwindow+('<img  src="../images/play.gif" border="0"/>');	
		listwindow=listwindow+('<a>');		
		listwindow=listwindow+('</td>');		
		listwindow=listwindow+('</tr>');
		
	}
	listwindow=listwindow+('<tr>');
	listwindow=listwindow+('<td colspan="4" bgcolor="#FFCC33">&nbsp;</td>');
	listwindow=listwindow+('</tr>');
	listwindow=listwindow+("</table>");
	document.write(listwindow);
}