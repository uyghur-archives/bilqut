<!--
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir=rtl  xmlns="https://www.w3.org/1999/xhtml">
<head>
<title>ئەزا بولۇش - Bilqut Powered by Bilqut.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<script language=javascript  type="text/javascript" src="UyghurInput_B.js"></script> 
<META content="Ghost" name=author>
<META http-equiv="pragma" content="no-cache">
<META http-equiv="Cache-Control" content="no-cache, must-revalidate">
<META name="copyright" content="Bilqut_music" >
<style type="text/css" title="currentStyle" media="screen">
	@import "template/default/images/css.css";
</style>
<script language="JavaScript" src="js/common.js"></script>
<script language="JavaScript" src="js/box.js"></script>
<script language="JavaScript" src="js/ajax.js"></script>
</head>
<body onkeydown="if(event.keyCode==27) return false;" dir="rtl"> 
<div id="loader_container"> 
<div id="loader" style="width: 130px; height: 48px"> 
<div align="center"><font color="#FF9900">بەت ھازىر ئېچىلىۋاتىدۇ  <br> 
بىرئاز ساقلاڭ...</font></div> 
</div> 
</div>
<!--Head Begin  -->
<!---->

﻿<!--
-->
 <head>
<style type="text/css">
.style1 {
	text-align: center;
}
</style>
</head>

  <table  style="width: 965px" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td style="height: 180px" class="style1">
			<img alt="" src="images/top.jpg" width="965" height="180"></td>
		</tr>
		<tr>
			<td style="height: 25px; width: 0" >  
					<table id="usti" cellspacing="0" cellpadding="0" style="width: 100%; height: 30px;">
   <tr id=menu1 class="style1">
   <td class="style1"><a href="index.php">باش بەت</a></td>
   <td class="style1"><a href="https://uyghur-archive.com/bilqut/bbs">مۇنبەر</a></td>
   <td class="style1"><a href="hot.php"> كۆپ ئاڭلانغان ئەسەرلەر</a> </td>
   <td class="style1"><a href="new.php">ئەڭ يېڭى ئەسەرلەر</a></td>
   <td class="style1"><a href="commend.php">تەۋسىيە قىلىنغان ئەسەرلەر</a></td>
   <td class="style1"><a href="song.php"> ئەسەر تەلەپ قىلىش</a></td>
   <td class="style1"><a href="musicbox.php">ئەسەر قۇتام </a></td>
   
   
   </tr>
  </table>
</td>
		</tr>
	</table>

<!--Content Begin -->
<div id="Content">
  <div id="Main">
    <div id="Body">
	 <div id="Subtitle" class="usti">ئەزا بولۇش</div>
	 <div id="Reg">
	 <script language="JavaScript" type="text/javascript">
function javacheck(formct)
	{   
		if (formct.usernamec.value=="" || formct.userpassc.value=="" || formct.userpassc1.value==""||formct.usernicheng.value==""||formct.usermail.value=="")
		{
			alert("بارلىق تۈرنى تولدۇرۇڭ");
			return false; 
		}
	}
function checkname(){
	var name = document.getElementById("usernamec").value;
	if (name.length<3 || name.length>12){
		document.getElementById("name_info").innerHTML = "<font color=\"red\">ئەزا نامى ئۇزۇنلۇقى 2~12ھەرپكىچە بولسۇن</font>";
	} else{
		document.getElementById("name_info").innerHTML = "";
	}
}
	 
function checkpwd(){
	var pwd = document.getElementById("userpassc").value;
	var pwdrepeat = document.getElementById("userpassc1").value;
	if (pwd.length<6){
		document.getElementById("pwd_info").innerHTML = "<font color=\"red\">پارول بەك ئاددى،6خانىدىن يۇقىرى قىلىڭ</font>";
	} else{
		document.getElementById("pwd_info").innerHTML = "";
	}
	if(pwdrepeat){
		checkpwdrepeat();
	}
}
function checkpwdrepeat(){
	var pwd = document.getElementById("userpassc").value;
	var pwdrepeat = document.getElementById("userpassc1").value;
	if (pwdrepeat==pwd){
		document.getElementById("pwdrepeat_info").innerHTML = "";
	} else{
		document.getElementById("pwdrepeat_info").innerHTML = "<font color=\"red\">ئىككى قېتىملىق پارول ئوخشاش ئەمەس ،تەكشۈرگەندىن كىيىن سىناپ بېقىڭ</font>";
	}
}
function checkemail(){
	var email = document.getElementById("usermail").value;
	var myReg = /^[-a-zA-Z0-9_\.]+@([0-9A-Za-z][0-9A-Za-z-]+\.)+[A-Za-z]{2,5}$/; 
	if(myReg.test(email)){
		document.getElementById("email_info").innerHTML = "";
	} else{
		document.getElementById("email_info").innerHTML = "<font color=\"red\">Email شەكلى خاتا!</font>";
	}
}
</script>
	 <form method="post" action="register.php" onSubmit="return javacheck(this)">
<!---->
	 <li><span class="left">ئەزا نامى :</span>
	   <input name="usernamec" type="text" class="Input" onblur="fEvent('blur',this)" onmouseover="fEvent('mouseover',this)" onfocus="fEvent('focus',this)" onmouseout="fEvent('mouseout',this)" size="30">
	   <span class="zs"> بوشلۇق قۇيۇلمىسۇن،3~12ھەرپ ئىچىدە بولسۇن</span></li>
	 <li><span class="left">تەخەللۇس: </span>
	   <input name="usernicheng" type="text" class="Input" onblur="fEvent('blur',this)" onmouseover="fEvent('mouseover',this)" onfocus="fEvent('focus',this)" onmouseout="fEvent('mouseout',this)" size="30"><span class="zs"> توردا ئىشلىتىدىغان تەخەللۇسىڭىز</span></li>
	 <li><span class="left">پارول : </span>
	   <input name="userpassc" onchange="checkpwd();" type="password" class="Input" onblur="fEvent('blur',this)" onmouseover="fEvent('mouseover',this)" onfocus="fEvent('focus',this)" onmouseout="fEvent('mouseout',this)" size="30"><span class="zs">ئىنگىلىزچە ھەرپ ياكى سان 6خانىدىن كۆپ بولسۇن<br /><span id="pwd_info"></span></span></li>
	 <li><span class="left">تەستىق پارول: </span>
	   <input name="userpassc1" type="password" onchange="checkpwdrepeat();" class="Input" onblur="fEvent('blur',this)" onmouseover="fEvent('mouseover',this)" onfocus="fEvent('focus',this)" onmouseout="fEvent('mouseout',this)" size="30"><span class="zs"><br /><span id="pwdrepeat_info"></span></span></li>
	 <li><span class="left">email ئادرىسى:</span>
	   <input name="usermail" type="text" class="Input" onblur="fEvent('blur',this)" onmouseover="fEvent('mouseover',this)" onfocus="fEvent('focus',this)" onmouseout="fEvent('mouseout',this)" size="30" onchange="checkemail();"><span class="zs"> پارول قايتۇرۇشقا ئىشلىتىلىدۇ، email ئاشكارلانمايدۇ !<br /><span id="email_info"></span></span></li>
	 <li><span class="left"></span>
	   <input type="submit" value="ئەزالىققا تىزىملىتىش" class="SubmitButton"> 
        <input name="time" type="hidden" value="1222682516"> 
		<input name="action" type="hidden" value="save"> 
        <input type="reset"  value="قايتا تولدۇرۇش" class="SubmitButton"></li>
		</form>
	 </div>
    </div>
    <!--Sidebar Begin -->
	<div id="Sidebar">
	 <!--右边预留位置开始 -->
	 <div id="RightBanner"></div>
	 <!--预留位置结束 -->
    </div>
	<!--Sidebar End -->
  </div>
</div>
<!--Content End -->

<!---->﻿<!--
-->
<!--Footer Begin  -->

<body style="margin-top: 0">

<div align="center">
	<table border="0" id="table20" cellspacing="0" cellpadding="0" style="width: 940px">
		<tr>
			<td align="center" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
	<div align="center">
		<table border="0" id="table21" cellspacing="1" bgcolor="#f2f9ff" style="width: 940px;" dir="rtl" class="style1">
			<tr>
				<td align="center" colspan="3" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
				<table border="1" width="90%" id="table22" cellspacing="3" style="border-collapse: collapse" bgcolor="#D7F1FB" bordercolor="#A6D8FF" cellpadding="0" dir="ltr">
					<tr>
						<td align="center" width="110" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><span style="font-size: 11pt" lang="ar-sa">
		<a href="#" style="text-decoration: none; font-family:Ukij Tuz Tom; font-size:12px"><font color="#005CA1">قوشۇۋېلىڭ</font></a></span></td>
						<td align="center" width="110" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><span style="font-size: 11pt" lang="ar-sa">
		<a style="text-decoration: none; font-family:Ukij Tuz Tom; font-size:12px" target="_blank" href="book/index.asp">
						<font color="#005CA1">بېكىتىمىز بوپتىمۇ</font></a><font color="#005CA1">
						</font> 
		</span> </td>
						<td align="center" width="110" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><span style="font-size: 11pt" lang="ar-sa">
						<a href="#" style="text-decoration: none; font-family:Ukij Tuz Tom; font-size:12px">
						<font color="#005CA1">ھەممە ئاڭلىسۇنمۇ</font></a></span></td>
						<td align="center" width="110" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><span style="font-size: 11pt" lang="ar-sa">
		<a href="#" style="text-decoration: none; font-family:Ukij Tuz Tom; font-size:12px"><font color="#005CA1">بۇغداي 
		سۆزىمىز بار</font></a></span></td>
						<td align="center" width="110" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><span style="font-size: 11pt" lang="ar-sa">
		<a href="#" style="text-decoration: none; font-family:Ukij Tuz Tom; font-size:12px"><font color="#005CA1">يالغۇزلا ماڭامسىز</font></a></span></td>
						<td align="center" width="110" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><span style="font-size: 11pt" lang="ar-sa">
		<a style="text-decoration: none; font-family:Ukij Tuz Tom; font-size:12px" target="_blank" href="book/">
						<font color="#005CA1">ئالاقىلىشامسىز</font></a></span></td>
						<td align="center" width="110" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><span style="font-size: 11pt" lang="ar-sa">
		<a href="#" style="text-decoration: none; font-family:Ukij Tuz Tom; font-size:12px"><font color="#005CA1">شىركىتىمىزگە قاراڭ</font></a></span></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td width="102" align="right" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
				&nbsp;</td>
				<td align="center" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><span style="font-size: 11pt">
            	<font color="#005CA1">
            <span lang="ar-sa">بارلىق ھوقۇق&nbsp; شىنجاڭ </span>&lt;&lt;
            <span lang="ar-sa">بىلقۇت</span> &gt;&gt;<span lang="ar-sa"> ئېلېكترون 
		پەن- تېخنىكا تەرەققىيات چەكىلىك شىركىتگە تەۋە</span>&nbsp;</font>				<td width="102" align="left" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
				&nbsp;</td>
	
			<tr>
				<td width="102" rowspan="4" dir="rtl" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
				<span style="font-size: 11pt">
				<img border="0" src="images/boot_02.gif" width="100" height="102" align="left">
				<td align="center" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><font color="#005CA1" size="3">新 疆 碧 黎 库 特 电 子 科 技 开 发 有 限 公 司</font></td>
				<td width="102" rowspan="4" dir="ltr" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
				<span style="font-size: 11pt">
				<img border="0" src="images/boot_01.gif" width="100" height="102" align="left">					<tr>
				<td align="center" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
				<p dir="ltr">
				<span style="font-size: 11pt">
				<font color="#005CA1">
				QQ:&nbsp; 502410794(Bilqut)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				250092392<span lang="zh-cn">(Raziman</span>)</font>						<tr>
				<td align="center" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
				<span style="font-size: 11pt">
				<font color="#005CA1">
		新ICP备07002316</font>
			
			<tr>
				<td align="center" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1">
				&nbsp;</td>
			</tr>
			<tr>
				<td align="center" colspan="3" height="30" bgcolor="#16387C" style="font-family: Ukij Tuz Tom; font-size: 12px; color: #005CA1"><script language="javascript" src="https://count32.51yes.com/click.aspx?id=320168560&logo=1"></script>
</td>
			</tr>






<!---->
</div>
</div>
<!--Footer end -->
<script language="javascript">
remove_loading();
</script>
</body>
</html>
<!---->

