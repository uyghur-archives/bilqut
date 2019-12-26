<html>
<head>
<script src="UyghurInput_B.js"></script>
<script language=javascript>attachAll = true; </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Bilqut_Web</title>
<link rel="stylesheet" type="text/css" href="Bilqut.css" />

</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<script>
var show_n
var H=200,h_m=24
var n=5,t=20;
function init(ids,cons,dis,tbs,show_me){
		document.getElementById(ids).onmouseover=function(){onmousOver(ids,cons,dis,tbs);}
//		document.getElementById(ids).onclick=function(){show_con(ids,cons,dis,tbs);}
		if (show_me!=0){show_n=tbs;
	 		document.getElementById(ids).getElementsByTagName('li')[0].className='active';
			document.getElementById(cons).innerHTML=document.getElementById(dis+"l1").innerHTML;
			document.getElementById(tbs).style.height=H
		}
		else{
			document.getElementById(cons).innerHTML=document.getElementById(dis+"l1").innerHTML; 
			document.getElementById(tbs).style.height=h_m;
		}
}
function onmousOver(ids,cons,dis,tbs){
o = o || window.event;
var obj=o.target || o.srcElement;
if (obj.tagName=='LI'){
		if (obj.className=='active')return;
		var o=document.getElementById(ids).getElementsByTagName('li');
		for (var i=0;i<=o.length-1;i++){o[i].className='default'}
		obj.className='active';
		if (show_n==tbs){document.getElementById(cons).innerHTML=document.getElementById(dis+obj.id).innerHTML;}
		obj.onmouseout=function(){if (show_n!=tbs)this.className='default';}
}
show_con(ids,cons,dis,tbs);
}
function show_con(ids,cons,dis,tbs){
var obj_show_tab=document.getElementById(tbs)
var obj_hid_tab=document.getElementById(show_n)
if (show_n!=tbs){
	var o=document.getElementById(show_n).childNodes[0].getElementsByTagName('li')
	for (var i=0;i<=o.length-1;i++){o[i].className='default'}
	show_n=tbs;	
		var obj=event.srcElement;
		document.getElementById(cons).innerHTML=document.getElementById(dis+obj.id).innerHTML;
	var timers=new Array(n);
	
	for(var i=0;i<n;i++){(
		function(){
    		if(timers[i]) clearTimeout(timers[i]);
    		var j=i;
    		timers[i]=setTimeout(function(){obj_hid_tab.style.height=H-Math.round((H-h_m)*(j+1)/n);
    										obj_show_tab.style.height=h_m+Math.round((H-h_m)*(j+1)/n);},(i+1)*t);
    		}
    	)()};
}
}
</script>

<div id=top1 align="center">

<div align="center">
	<table border="0" width="960" id="table16" cellpadding="0" dir="ltr">
		<tr>
			<td colspan="2" align="center">
			<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj2" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="960" height="202">
				<param name="movie" value="flash/Top.swf">
				<param name="quality" value="High">
				<embed src="flash/Top.swf" pluginspage="https://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj2" width="960" height="202"></object>
			</td>
		</tr>
		<tr>
			<td width="150" rowspan="2" height="110" align="center"><script language="JavaScript"> 
  
var how_many_ads = 5 
var now = new Date() 
var sec = now.getSeconds() 
var ad = sec % how_many_ads; 
ad +=1; 
 
if (ad==1){ 
alt="ad1";  
banner="images/01.jpg"; 
width="160"; 
height="110"; 
} 

if (ad==2) {   
alt="ad2";  
banner="images/02.jpg";  
width="160"; 
height="110"; 
} 
  
if (ad==3) { 
alt="ad3"; 
banner="images/03.jpg"; 
width="160"; 
height="110"; 
}

if (ad==4) { 
alt="ad4"; 
banner="images/04.jpg"; 
width="160"; 
height="110"; 
}  

if (ad==5) { 
alt="ad5"; 
banner="images/05.jpg"; 
width="160"; 
height="110"; 
}  
  
document.write('<center>'); 
document.write('<img src=\"' + banner + '\" width=') 
document.write(width + ' height=' + height + ' '); 
document.write('alt=\"' + alt + '\" border=0><br>'); 
document.write('</center>'); 
--></script></td>
			<td width="810"><ul >
<li id="man"><a target="_blank" title="باش بەت " href="default.asp">باش بەت </a></li>
<li id="man"><a target="_blank" title="بىلقۇت خەزىنسى " href="Mazmun_more.asp?lm2=106">بىلقۇت خەزىنسى  </a></li>
<li id="man"><a target="_blank"title="ئاۋازلىق ئەسەرلەر" href="Awazlik.asp">ئاۋازلىق ئەسەرلەر</a></li>
<li id="man"><a target="_blank" title="يېزىقچە ئەسەرلەر" href="Yezikcha.asp">يېزىقچە ئەسەرلەر</a></li>
<li id="man"><a target="_blank" title="باللار باغچىسى" href="Ballar.asp">باللار باغچىسى</a></li>
<li id="man"><a target="_blank" title="دانىشمەن بېغى" href="Mazmun_more.asp?lm2=100">دانىشمەن بېغى</a></li>
<li id="man"><a target="_blank" title="ئۆگنىش سەھپسى " href="Class.asp">ئۆگنىش سەھپسى</a></li>
<li id="man"><a target="_blank" title="ياشلىرىمىز " href="Mazmun_more.asp?lm2=189">ياشلىرىمىز</a></li>
<li id="man"><a target="_blank" title="قانۇن " href="Mazmun_more.asp?lm2=175">قانۇن</a></li>
<li id="man"><a target="_blank" title="تىبابىتمىز " href="Mazmun_more.asp?lm2=177">تىبابىتمىز</a></li>
<li id="man"><a target="_blank" title="تارىخمىز " href="Mazmun_more.asp?lm2=181">تارىخمىز </a></li>
<li id="man"><a target="_blank" title="مۇزىېي" href="Mazmun_more.asp?lm2=176">مۇزىېي</a></li>
<li id="man"><a target="_blank" title="ھېكايىلەر " href="Mazmun_more.asp?lm2=151">ھېكايىلەر</a></li>
<li id="man"><a target="_blank" title="بىز " href="Biz.asp">بىز </a></li>
<li id="man"><a target="_blank" title="چايخانا " href="#">چايخانا </a></li>
<li id="man"><a target="_blank" title="مۇنبەر " href="#">مۇنبەر </a></li>
</ul></td>
		</tr>
		<tr>
			<td width="800"><table width="100%" id="table4" cellpadding="0" style="border-collapse: collapse; border-left-width:1px; border-right-width:1px; border-bottom-width:1px" dir="rtl">
			<tr>
				<td width="56" align="center">
				<font color="#005CA1">
				ئەزا بولۇش</font>
			</td>
				<td width="86" align="center">
				  <label>
				     <input name="textfield2" dir="rtl" size="14" style="background-image: url('image/so.gif'); font-family:UKIJ Tuz Tom"></font></label></td>
				<td width="45" align="center">
				<span lang="ar-sa"><font color="#005CA1">پارول</font></span></td>
				<td width="71" align="center">
				  <p align="center">
				  <label>
				    <font size="3">
				    <input type="password" name="textfield3" size="14" dir="rtl" style="background-image: url('image/so.gif')"></font></label></td>
				<td width="71" align="center">
				  <label>
				    <span lang="ar-sa"><font size="2"> </font> </span>
				    <font size="3">
				    <input type="submit" name="Submit2" value="كىرش " style="font-family: UKIJ Tuz Tom; color:#005CA1"></font></label></td>
				<td width="20" align="center">
				  </td>
				<td bordercolor="#005CA1" align="center">
				  <table border="0" cellpadding="0" cellspacing="0" width="100%" id="table1">
<form method="post" action="izdash.asp"><tr>
<td>
<input name="word" size="52" style="color: #005CA1; background-color: #F7FBFF; font-family:UKIJ Tuz Tom; background-image:url('image/so.gif')"> 
<input type="submit" value="ئىزدەش" name="B1" style="font-family: UKIJ Tuz Tom; color:#006699"> </td>
</form></tr></table></td>
			</tr>
		</table>
			<marquee behavior="alternate" style="font-size: 10pt; font-family: UKIJ Tuz Tom; color: #990000" direction="right" scrolldelay="50" scrollamount="1" width="754">كۇندە بىر ماقال - تەمسىل : دۇشمنىڭ كۆپ بولسا يىقىلغان يېرىڭدىن قوپىمقىڭ تەس،دوستۇڭ كۆپ بولسا ئۇچقان يېرىڭدىن چۈشمىكىڭ تەس</marquee></td>
		</tr>
	</table>
</div>
<div id=Ablimit>
	<table border="0" width="965" id="table21" cellspacing="2" style="border-collapse: collapse" cellpadding="0">
		<tr>
			<td align="center" width="200" bgcolor="#F2F9FF" bordercolor="#D7F1FB" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" valign="top">
			<table border="0" width="190" id="table54" cellspacing="0" cellpadding="0">
				<tr>
					<td align="center">
				<table border="0" width="190" id="table55" cellpadding="0">
					<tr>
						<td height="25" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
						<p align="center"><font size="3">كىتاب ئۇچۇرلىرى</font></td>
					</tr>
					<tr>
						<td height="182" bgcolor="#F2F9FF" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; font-family:ukij tuz tom; font-size:12px; color:#000099" dir="rtl" align="center">
<div id=link_logo style="OVERFLOW: hidden; WIDTH: 175px; HEIGHT: 170px">
  <div id=link_logo1 style="OVERFLOW: hidden">
	<img border="0" src="uybook/sirlikmiras.jpg" width="175" height="220">
   	<img border="0" src="uybook/bayawandagulhan.jpg" width="175" height="220">
    <img border="0" src="image/book.gif" width="175" height="450"><img border="0" src="uybook/Aherkikunlar.jpg" width="174" height="215"></div>
  <div id=link_logo2></div>
</div>
<script>
 var speed=40
  link_logo2.innerHTML=link_logo1.innerHTML
    function Marquee2(){
	  if(link_logo2.offsetTop-link_logo.scrollTop<=0)
	     link_logo.scrollTop-=link_logo1.offsetHeight
		   else{
		    link_logo.scrollTop++
			   }
			      }
				     var MyMar2=setInterval(Marquee2,speed)
					    link_logo.onmouseover=function() {clearInterval(MyMar2)}
						   link_logo.onmouseout=function() {MyMar2=setInterval(Marquee2,speed)}
</script>
</td>
					</tr>
					<tr>
						<td height="5" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"></td>
					</tr>
				</table>
					</td>
				</tr>
				<tr>
					<td align="center">
				<table border="0" width="100%" id="table56" cellpadding="0">
					<tr>
						<td height="25" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
						<p align="center"><font size="3" color="#FFFFFF">
						تەرەققىياتمىز</font></td>
					</tr>
					<tr>
						<td height="110" bgcolor="#F2F9FF" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; font-family:ukij tuz tom; font-size:12px; color:#000099" dir="rtl" align="center">
<table border="0" width="100%" id="table115" cellspacing="1">
		<tr>
			<td align="center"><font size="2" color="#005CA1">ئۇيغۇر كارخانچىللىرى</font></td>
		</tr>
		<tr>
			<td align="center"><font size="2" color="#005CA1">ئۇيغۇر كارخانىلىرى</font></td>
		</tr>
		<tr>
			<td align="center"><font size="2" color="#005CA1">ئۇيغۇر مەھسۇلاتلىرى</font></td>
		</tr>
		<tr>
			<td align="center"><font size="2" color="#005CA1">ئۇيغۇر پاتنېتلىرى</font></td>
		</tr>
		<tr>
			<td align="center"><font size="2" color="#005CA1">ئۇيغۇر دوكتۇرلىرى</font></td>
		</tr>
		<tr>
			<td align="center"><font size="2" color="#005CA1">ئۇيغۇر كەشپىياتلىرى</font></td>
		</tr>
		<tr>
			<td align="center"><font size="2" color="#005CA1">ئۇيغۇر يۇمشاق دېتاللىرى</font></td>
		</tr>
		<tr>
			<td align="center"><font size="2" color="#005CA1">ئۇيغۇرساياھەتچىلىكى</font></td>
		</tr>
	</table>
</li></td>
					</tr>
					<tr>
						<td height="5" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"></td>
					</tr>
				</table>
					</td>
				</tr>
				<tr>
					<td align="center">
				<table border="0" width="100%" id="table57" cellpadding="0">
					<tr>
						<td height="25" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
						<p align="center"><font size="3">مەخسۇس تېما</font></td>
					</tr>
					<tr>
						<td bgcolor="#F2F9FF" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; font-family:ukij tuz tom; font-size:12px; color:#000099" dir="rtl" valign="top">
<font color="#FFFFFF" size="3">
<div align="center">
	<table border="0" width="100%" id="table109">
		<tr>
			<td height="20" align="center">
			<a target="_blank" href="Shahyaripic.asp"><font color="#005CA1">
			شاھيارى ھۆسنخەت ئەسەرلىرى</font></a></td>
		</tr>
		<tr>
			<td align="center">
			<a target="_blank" href="Shahyaripic.asp">
			<img border="0" src="image/sahyari.gif" width="180" height="80"></a></td>
		</tr>
	</table>
</div>
</font>
</td>
					</tr>
					<tr>
						<td height="5" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"></td>
					</tr>
				</table>
					</td>
				</tr>
				<tr>
					<td align="center">
				<table border="0" width="100%" id="table58" cellpadding="0">
					<tr>
						<td height="250" bgcolor="#F2F9FF" style="border: 1px solid #D7F1FB; padding-left: 15px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; font-family:ukij tuz tom; font-size:12px; color:#000099" align="center" id="man">
<li id="man" ><a target="_blank" href="https://diyarim.com/"> 
<img border="0" src="logo/diyarimmarka.gif" width="160" height="90"></a></li>
    <li id="man"><a target="_blank" href="https://www.salkin.cn"> <img border="0" src="logo/salkinlogo.gif" width="160" height="74"></a></li>
    <li id="man"><a target="_blank" href="https://www.1000yol.com/"> 
	<img border="0" src="logo/1000yol.gif" width="160" height="66"></a></li>
    <li id="man"><a target="_blank" href="https://www.bilikyar.com/"> 
	<img border="0" src="logo/bilikyarlogo.gif" width="160" height="67"></a></li>
    <li id="man"><a target="_blank" href="https://www.ulinix.cn/"> 
	<img border="0" src="logo/ulinix2.gif" width="160" height="71"></a></li></td>
					</tr>
					<tr>
						<td height="5" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"></td>
					</tr>
				</table>
					</td>
				</tr>
				<tr>
					<td align="center">
				<table border="0" width="100%" id="table59" cellpadding="0">
					<tr>
						<td height="25" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
						<p align="center"><font size="3">دائىمىي دىتاللار</font></td>
					</tr>
					<tr>
          <TD align=middle  height=22 style="border-bottom:1px dotted #005CA1; color: #000099; font-size: 13px; border-left-width:1px; border-right-width:1px; border-top-width:1px; font-family:ukij tuz tom"><P align=center> 
			<A 
            href="https://ilghar.cn/about/down.aspx?Name=IlgharPad" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom">خىيال  ئۇيغۇرچە كىرگۈزگۈچ</A></P></TD>
        			</tr>
					<tr>
          <TD align=middle  height=22 style="border-bottom:1px dotted #005CA1; color: #000099; font-size: 13px; border-left-width:1px; border-right-width:1px; border-top-width:1px; font-family:ukij tuz tom"><P align=center> 
			<A 
            href="https://ilghar.cn/about/down.aspx?Name=IlgharPad" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom">ئىلغار ئۇيغۇرچە كىرگۈزگۈچ</A></P></TD>
        			</tr>
					<tr>
          <TD align=middle  height=22 style="border-bottom:1px dotted #005CA1; color: #000099; font-size: 13px; border-left-width:1px; border-right-width:1px; border-top-width:1px; font-family:ukij tuz tom">
			<A 
            href="https://xabnam.com/soft/cooledit.rar" target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom">ئاۋاز 
            ئالغۇچ Cool Edit </A></TD>
        			</tr>
					<tr>
						<td height="160" bgcolor="#F2F9FF" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; font-family:ukij tuz tom; font-size:12px; color:#000099" dir="rtl" align="center">
    <TABLE cellSpacing=0 cellPadding=5 width="94%" border=0 id="table114">
      <TBODY>
        <TR align=middle>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A 
            href="https://down.365mf.com/down_365mf_com_060501/old_1024/Photoshop.cs.rar" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 alt="photoshop Cs" 
            src="img/photo.gif" width=32 
            border=0></A></TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A 
            href="https://down.365mf.com/down_365mf_com_060501/old_1024/FlashMX2004.rar" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 alt="Flash 2004" 
            src="img/flash.gif" width=32 
            border=0></A></TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A href="https://www.hackhome.com/soft/dreamweavermx.rar" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 alt="Dreamweaver 8.0" 
            src="img/dw.gif" width=32 
            border=0></A></TD>
        </TR>
        <TR align=middle>
          <TD height=25 style="color: #000099; font-size: 13px; font-family:ukij tuz tom">Photo</TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">Flash</TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">Dw</TD>
        </TR>
        <TR align=middle>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A href="https://my.mbsky.com/down/FrontPage2003.rar" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 alt=FrontPage2003 
            src="img/front.gif" width=32 
            border=0></A></TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A 
            href="https://download.microsoft.com/download/8/a/1/8a1be03f-f7fc-4504-af9a-7b9230775284/WEFTIII2b1.exe" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 alt=Weft 
            src="img/weft.gif" width=32 
            border=0></A></TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A href="https://www.hackhome.com/soft/Lftp274.rar" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 
            src="img/ftp.gif" width=32 
            border=0></A></TD>
        </TR>
        <TR align=middle>
          <TD height=25 style="color: #000099; font-size: 13px; font-family:ukij tuz tom">Front..</TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">Weft</TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">Ftp</TD>
        </TR>
        <TR align=middle>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A 
            href="https://www.aw-software.com/downloads/setup_www2image.exe" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 alt="Bat yuzini resim tutux" 
            src="img/resim.gif" width=32 
            border=0></A></TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A href="https://ddddl.dudu.com/update/dudusetup_50.exe" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 alt="DuDu " 
            src="img/dudu.gif" width=32 
            border=0></A></TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">
			<A 
            href="https://down.365mf.com/down_365mf_com_060501/050401/WinRA23423423R.exe" 
            target=_blank style="color: #000099; text-decoration: none; font-family:ukij tuz tom"> <IMG height=32 
            src="img/rar.gif" width=32 
            border=0></A></TD>
        </TR>
        <TR align=middle>
          <TD height=25 style="color: #000099; font-size: 13px; font-family:ukij tuz tom">image</TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">DuDu</TD>
          <TD style="color: #000099; font-size: 13px; font-family:ukij tuz tom">Winrar</TD>
        </TR>
      </TBODY>
    </TABLE>
  						</td>
					</tr>
					<tr>
						<td height="5" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"></td>
					</tr>
				</table>
					</td>
				</tr>
			</table>
			</td>
			<td align="center" width="565" bgcolor="#F2F9FF" bordercolor="#D7F1FB" valign="top" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
			<table border="0" width="512" id="table39" cellpadding="0">
				<tr>
					<td colspan="2" align="center">
					<table border="0" width="565" id="table101" cellspacing="0" cellpadding="0">
						<tr>
							<td width="408" background="image/bgbg.gif">&nbsp;</td>
							<td width="157" height="25">
							<a target="_blank" href="image/bilqutGazinisi.gif">
							<img border="0" src="image/bilqutGazinisi.gif" width="157" height="25"></a></td>
						</tr>
			</table>
			<table border="0" width="565" id="table102" cellspacing="0" cellpadding="0">
				<tr>
					<td width="282" height="190" dir="rtl"><script TYPE="text/javascript" language="javascript" src="/newscodejs.asp?lm2=106&list=6&icon=image/news.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=60&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</td>
					<td width="283" dir="rtl" align="center"><script type="text/javascript">
imgUrl1="images/1.jpg";

imgLink1=escape("https://www.bilqut.com");
imgUrl2="images/2.jpg";

imgLink2=escape("https://www.bilqut.com");
imgUrl3="images/3.jpg";

imgLink3=escape("https://www.bilqut.com");
imgUrl4="images/4.jpg";

imgLink4=escape("https://www.bilqut.com");
imgUrl5="images/5.jpg";

imgLink5=escape("https://www.bilqut.com");


imgUrl6="images/6.jpg";

imgLink6=escape("https://www.bilqut.com");

imgUrl7="images/7.jpg";

imgLink7=escape("https://www.bilqut.com");

imgUrl8="images/8.jpg";

imgLink8=escape("https://www.bilqut.com");

imgUrl9="images/9.jpg";

imgLink9=escape("https://www.bilqut.com");

imgUrl10="images/10.jpg";

imgLink10=escape("https://www.bilqut.com");

imgUrl11="images/11.jpg";

imgLink11=escape("https://www.bilqut.com");

imgUrl12="images/12.jpg";

imgLink12=escape("https://www.bilqut.com");

imgUrl13="images/05.jpg";

imgLink13=escape("https://www.bilqut.com");

 var focus_width=283
 var focus_height=190
 var swf_height = focus_height
 
 var pics=imgUrl1+"|"+imgUrl2+"|"+imgUrl3+"|"+imgUrl4+"|"+imgUrl5+"|"+imgUrl6+"|"+imgUrl7+"|"+imgUrl8+"|"+imgUrl9+"|"+imgUrl10+"|"+imgUrl11+"|"+imgUrl12+"|"+imgUrl13
 var links=imgLink1+"|"+imgLink2+"|"+imgLink3+"|"+imgLink4+"|"+imgLink5+"|"+imgLink6+"|"+imgLink7+"|"+imgLink8+"|"+imgLink9+"|"+imgLink10+"|"+imgLink11+"|"+imgLink12+"|"+imgLink13
 
 
 document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="https://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
 document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/focus1.swf"><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
 document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
 document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&borderwidth='+focus_width+'&borderheight='+focus_height+'">');
 document.write('</object>');
 </script> </td>
				</tr>
			</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
					<table border="0" width="565" id="table103" cellspacing="0" cellpadding="0">
						<tr>
							<td width="408" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">&nbsp;</td>
							<td width="157" height="25" background="image/danixmanbege.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
							<a target="_blank" href="Mazmun_more.asp?lm2=100">
							<img border="0" src="image/danixmanbege.gif" width="157" height="25"></a></td>
						</tr>
			</table>
			<table border="0" width="565" id="table104" cellspacing="0" cellpadding="0">
				<tr>
					<td width="565" height="190" dir="rtl" style="font-family: ukij tuz tom; font-size: 12px; color: #000099" align="center"><div class="tab0">
<!--#1-->
<div id='tab1' class='tab'>
		<ul id='nav1' class='menu'>
			<li id="l1" class='default'>رېۋايەتلەر</li>
			<li id="l2" class='default'>چۆچەكلەر</li>
			<li id="l3" class='default'>كەللە ۋە دېمىنە</li>
			<li id="l4" class='default'>مىڭ بىر كىچە</li>
			<li id="l5" class='default'>ئاۋازلىق ئەسەرلەر</li>
		</ul>
		<div class='con' id='con1'></div>
  </div>
<div style="display:none">	
	<div id="div1_l1">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="newscodejs.asp?lm2=165&list=6&icon=icon/003.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</span>
	</div>
	<div id="div1_l2">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="newscodejs.asp?lm2=162&list=6&icon=icon/003.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</span>
	</div>
	<div id="div1_l3">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="newscodejs.asp?lm2=192&list=6&icon=icon/003.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</span>
	</div>
	<div id="div1_l4">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="newscodejs.asp?lm2=107&list=6&icon=icon/003.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</span>
	</div>
	<div id="div1_l5">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="/newscodejs.asp?lm2=100&list=6&icon=image/off.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=104&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>

</span>
	</div>
</div>
<script>
init('nav1','con1',"div1_",'tab1',1);
</script>
<!--#3-->
<div id='tab3' class='tab'>
  <ul id='nav3' class='menu'>
    <li id="l1" class='default'>ياشلارسەمگە</li>
    <li id="l2" class='default'>ماقالىلەر</li>
    <li id="l3" class='default'>ئەپسانىلەر</li>
    <li id="l4" class='default'>دۇنيادىكى ئەڭ</li>
    <li id="l5" class='default'>يېزىقچە ئەسەرلەر</li>
  </ul>
  <div class='con' id='con3'> </div>
</div>
<div style="display:none" >	
	<div id="div3_l1">
		<span dir="rtl"><script  TYPE="text/javascript" language="javascript" src="newscodejs.asp?lm2=189&list=6&icon=icon/003.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</span>
	</div>
	<div id="div3_l2">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="newscodejs.asp?lm2=155&list=6&icon=icon/003.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</span>
	</div>
	<div id="div3_l3">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="newscodejs.asp?lm2=152&list=6&icon=icon/003.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</span>
	</div>
	<div id="div3_l4">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="newscodejs.asp?lm2=198&list=6&icon=icon/003.gif&tj=0&font=11&hot=0&new=1&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</span>
	</div>
	<div id="div3_l5">
		<span dir="rtl"><script TYPE="text/javascript" language="javascript" src="/newscodejs.asp?lm2=101&list=6&icon=image/off.gif&tj=0&font=11&hot=0&new=0&line=2&lmname=0&open=1&n=105&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>

</span>
	</div>
</div>
</div>
<script>
init('nav3','con3',"div3_",'tab3',0);
</script>
<script>
//show_con(show_n)
</script></td>
				</tr>
			</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" height="70">
					<a target="_blank" href="https://www.qiqan.com">
					<img border="0" src="logo/qiqan.gif" width="560" height="70"></a></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
			</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
					<table border="0" width="565" id="table105" cellspacing="0" cellpadding="0">
						<tr>
							<td width="408" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">&nbsp;</td>
							<td width="157" height="25" background="image/ballarbagqisi.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
							<a target="_blank" href="Ballar.asp">
							<img border="0" src="image/ballarbagqisi.gif" width="157" height="25"></a></td>
						</tr>
			</table>
			<table border="0" width="565" id="table106" cellspacing="0" cellpadding="0">
				<tr>
					<td width="565" height="190" dir="rtl" style="font-family: ukij tuz tom; font-size: 12px; color: #000099" align="center">     
							<iframe marginwidth=0 marginheight=0  frameborder=0 bordercolor="#f2f9ff" scrolling=no src="BalilarNews.asp"  width=560 height=201 target="_blank" name="I3"></iframe>
</td>
				</tr>
			</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" height="60"><a href="https://www.ulinix.cc">
					<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj3" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="560" height="62">
						<param name="movie" value="logo/Ulinix_CC.swf">
						<param name="quality" value="High">
						<embed src="logo/Ulinix_CC.swf" pluginspage="https://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj3" width="560" height="62"></object></a>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
					<table border="0" width="565" id="table107" cellspacing="0" cellpadding="0">
						<tr>
							<td width="408" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">&nbsp;</td>
							<td width="157" height="25" background="image/biz.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
							<a target="_blank" href="Biz.asp">
							<img border="0" src="image/biz.gif" width="157" height="25"></a></td>
						</tr>
			</table>
			<table border="0" width="565" id="table108" cellspacing="0" cellpadding="0">
				<tr>
					<td width="565" height="190" dir="rtl" style="font-family: ukij tuz tom; font-size: 12px; color: #000099" align="center">     
							<iframe marginwidth=0 marginheight=0  frameborder=0 bordercolor="#f2f9ff" scrolling=no src="BizNews.asp"  width=559 height=227 target="_blank" name="I4"></iframe>
</td>
				</tr>
			</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2" height="50"><a href="https://www.diyarim.com">
					<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj4" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="560" height="50">
						<param name="movie" value="logo/diyarim_swf.swf">
						<param name="quality" value="High">
						<embed src="logo/diyarim_swf.swf" pluginspage="https://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj4" width="560" height="50"></object></a>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
    <table border="1" width="565" id="table116" cellspacing="1" cellpadding="0" bordercolor="#9ECCEA" style="border-collapse: collapse">
      <tr>
        <td colspan="5" height="25" bgcolor="#9ECCEA" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
		<table border="0" width="100%" id="table117" cellspacing="0" cellpadding="0">
            <tr>
              <td background="image/bgbg.gif" valign="bottom" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"> 
				<a target="_blank" style="text-decoration: none; font-family:ukij tuz tom" href="Class.asp"> <font color="#FFFFFF" size="2">‹‹‹ 
                يەنە بار </font> </a></td>
              <td background="image/ognixsahipisi.gif" height="25" width="157" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
				<a target="_blank" href="Class.asp">
				<img border="0" src="image/ognixsahipisi.gif" width="157" height="25"></a></td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td align="center" width="85" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=128&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">خىميە</font></a><font size="2"> </font> </span></td>
        <td align="center" width="88" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=124&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">خەنزۇتىلى</font></a><font size="2"> </font> </span></td>
        <td align="center" width="89" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=120&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">ئەدەبىيات</font></a></span></td>
        <td align="center" width="89" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=114&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">جۇغراپىيە</font></a></span></td>
        <td rowspan="4" align="center" width="227" dir="rtl" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><font size="2">
          <script TYPE="text/javascript" language="javascript" src="/newscodejs.asp?lm2=105&list=3&icon=image/cllass.gif&tj=0&font=10&hot=0&new=0&line=2&lmname=0&open=1&n=59&more=0&t=0&week=0&zzly=0&hit=0&pls=0"></script>
          </font> </td>
      </tr>
      <tr>
        <td align="center" width="85" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=129&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">تارىخ</font></a><font size="2"> </font> </span></td>
        <td align="center" width="88" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=125&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">ئېنگىلىز تىلى</font></a><font size="2"> </font> </span></td>
        <td align="center" width="89" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=121&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">ماتېماتىكا</font></a></span></td>
        <td align="center" width="89" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=115&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">فىزىكا</font></a></span></td>
      </tr>
      <tr>
        <td align="center" width="85" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=130&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">كومپيوتېر</font></a></span></td>
        <td align="center" width="88" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=126&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">روس تىلى</font></a><font size="2"> </font> </span></td>
        <td align="center" width="89" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=122&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">ئاسترونومىيە</font></a></span></td>
        <td align="center" width="89" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=118&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">بىئولوگىيە</font></a></span></td>
      </tr>
      <tr>
        <td align="center" width="85" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=105&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">تېخمۇ كۆپ</font></a></span></td>
        <td align="center" width="88" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=127&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">ئۇيغۇرتىلى</font></a><font size="2"> </font> </span></td>
        <td align="center" width="89" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=123&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">مۇھىت</font></a></span></td>
        <td align="center" width="89" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"><span lang="ar-sa"> 
		<a target="_blank" href="Mazmun_more.asp?lm2=119&lmname=0&open=1&n=30&tj=0&hot=0" style="text-decoration: none; font-family:ukij tuz tom"> <font size="2">ئشارەت تىلى</font></a></span></td>
      </tr>
    </table>
  					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
      <iframe marginwidth=0 marginheight=0  frameborder=0 bordercolor="#f2f9ff" scrolling=no src="logo.asp"  width=560 height=75 target="_blank" name="i3"></iframe>
    				</td>
				</tr>
				<tr>
					<td align="center"></td>
					<td align="center"></td>
				</tr>
			</table>
			</td>
			<td width="200" align="center" bgcolor="#F2F9FF" bordercolor="#D7F1FB" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" valign="top">
			<table border="0" width="160" id="table110" cellspacing="0" cellpadding="0">
				<tr>
					<td align="center" dir="rtl">
					<iframe marginwidth=0 marginheight=0  frameborder=0 bordercolor="#f2f9ff" scrolling=no src="yan.asp"  width=160 height=565 target="_blank" name="I3"></iframe></td>
				</tr>
				<tr>
					<td align="center">
				<table border="0" width="100%" id="table111" cellpadding="0">
					<tr>
						<td height="25" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
						<p align="center"><font size="3">قانۇن-نىزاملار</font></td>
					</tr>
					<tr>
						<td height="180" bgcolor="#F2F9FF" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; font-family:ukij tuz tom; font-size:12px; color:#000099" dir="rtl" align="center">
<script TYPE="text/javascript" language="javascript" src="/newscodejs.asp?lm2=175&list=10&icon=icon/020.gif&tj=0&font=10&hot=0&new=0&line=2&lmname=0&open=1&n=30&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</td>
					</tr>
					<tr>
						<td height="5" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"></td>
					</tr>
				</table>
					</td>
				</tr>
				<tr>
					<td align="center">
				<table border="0" width="100%" id="table112" cellpadding="0">
					<tr>
						<td height="25" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
						<p align="center"><font size="3">مۇزېيى</font></td>
					</tr>
					<tr>
						<td height="160" bgcolor="#F2F9FF" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; font-family:ukij tuz tom; font-size:12px; color:#000099" dir="rtl" align="center">
<script TYPE="text/javascript" language="javascript" src="/newscodejs.asp?lm2=174&list=10&icon=icon/020.gif&tj=0&font=10&hot=0&new=0&line=2&lmname=0&open=1&n=30&more=1&t=0&week=0&zzly=0&hit=0&pls=0"></script>
</td>
					</tr>
					<tr>
						<td height="5" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"></td>
					</tr>
				</table>
					</td>
				</tr>
				<tr>
					<td align="center" height="80">
				<a target="_blank" href="https://www.yadikar.com">
				<img border="0" src="logo/yadikar.gif" width="160" height="80"></a></td>
				</tr>
				</table>
			<table border="0" width="100%" id="table119">
				<tr>
					<td align="center">
				<table border="0" width="100%" id="table120" cellpadding="2" cellspacing="0">
					<tr>
						<td height="25" background="image/bgbg.gif" style="font-family: ukij tuz tom; font-size: 12px; color: #000099">
						<p align="center"><font size="2">بىكەت ستاتىستىكسى</font></td>
					</tr>
					<tr>
						<td bgcolor="#F2F9FF" style="border: 1px solid #D7F1FB; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; font-family:ukij tuz tom; font-size:12px; color:#000099" dir="rtl" align="center">
<script TYPE="text/javascript" language="javascript" src="/js01.asp"></script></td>
					</tr>
					<tr>
						<td height="5" style="font-family: ukij tuz tom; font-size: 12px; color: #000099"></td>
					</tr>
				</table>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		</table>
</div>




</div>
<div align="center">
	<table border="0" width="956" id="table20" cellspacing="0" cellpadding="0" height="5">
		<tr>
			<td></td>
		</tr>
	</table>
</div>
<div align="center">
	<table border="0" width="960" id="table17" cellspacing="0" cellpadding="0">
		<tr>
			<td align="center">
	<div align="center">
		<table border="0" width="965" id="table18" cellspacing="1" bgcolor="#f2f9ff" style="border: 1px solid #D7F1FB" dir="rtl">
			<tr>
				<td align="center" colspan="3">
				<table border="1" width="90%" id="table19" cellspacing="3" style="border-collapse: collapse" bgcolor="#D7F1FB" bordercolor="#A6D8FF" cellpadding="0" dir="ltr">
					<tr>
						<td align="center" width="110"><span style="font-size: 11pt" lang="ar-sa">
		<a href="#" style="text-decoration: none"><font color="#005CA1">قوشۇۋېلىڭ</font></a></span></td>
						<td align="center" width="110"><span style="font-size: 11pt" lang="ar-sa">
		<a style="text-decoration: none" target="_blank" href="book/index.asp">
						<font color="#005CA1">بېكىتىمىز بوپتىمۇ</font></a><font color="#005CA1">
						</font> 
		</span> </td>
						<td align="center" width="110"><span style="font-size: 11pt" lang="ar-sa">
						<a href="#" style="text-decoration: none">
						<font color="#005CA1">ھەممە ئاڭلىسۇنمۇ</font></a></span></td>
						<td align="center" width="110"><span style="font-size: 11pt" lang="ar-sa">
		<a href="#" style="text-decoration: none"><font color="#005CA1">بۇغداي 
		سۆزىمىز بار</font></a></span></td>
						<td align="center" width="110"><span style="font-size: 11pt" lang="ar-sa">
		<a href="#" style="text-decoration: none"><font color="#005CA1">يالغۇزلا ماڭامسىز</font></a></span></td>
						<td align="center" width="110"><span style="font-size: 11pt" lang="ar-sa">
		<a style="text-decoration: none" target="_blank" href="book/">
						<font color="#005CA1">ئالاقىلىشامسىز</font></a></span></td>
						<td align="center" width="110"><span style="font-size: 11pt" lang="ar-sa">
		<a href="#" style="text-decoration: none"><font color="#005CA1">شىركىتىمىزگە قاراڭ</font></a></span></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td width="102" align="right"></td>
				<td align="center"><font color="#005CA1"><span style="font-size: 11pt">
            <span lang="ar-sa">بارلىق ھوقۇق شىنجاڭ ‹‹بىلقۇت›› ئېلېكترون 
		پەن- تېخنىكا تەرەققىيات چەكىلىك شىركىتگە تەۋە</span></font></td>
				<td width="102" align="left"></td>
			</tr>
			<tr>
				<td width="102" rowspan="4" dir="rtl">
				<span style="font-size: 11pt">
				<img border="0" src="2ji/boot_02.gif" width="100" height="102" align="left"></td>
				<td align="center"><font color="#005CA1" size="3">新 疆 碧 黎 库 特 电 子 科 技 开 发 有 限 公 司</font></td>
				<td width="102" rowspan="4" dir="ltr">
				<span style="font-size: 11pt">
				<img border="0" src="2ji/boot_01.gif" width="100" height="102" align="left"></td>
			</tr>
			<tr>
				<td align="center">
				<p dir="ltr">
				<span style="font-size: 11pt">
				<font color="#005CA1">
				QQ: 502410794(Bilqut) 
				250092392<span lang="zh-cn">(Raziman</span>)</font></td>
			</tr>
			<tr>
				<td align="center"><font color="#005CA1">
				<span style="font-size: 11pt">
		新ICP备07002316</font></td>
			</tr>
			<tr>
				<td align="center"></td>
			</tr>
			<tr>
				<td align="center" colspan="3" height="30" bgcolor="#16387C"><script language="javascript" src="https://count32.51yes.com/click.aspx?id=320168560&logo=1"></script>
</td>
			</tr>
		</table>
	</div>
			</td>
		</tr>
	</table>
</div>




</body>
</html>
