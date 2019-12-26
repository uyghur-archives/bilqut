<?
	function showmenu($chanid)
	{
		global $db;
		$result = $db->query("SELECT catid,catname FROM phpcms_category where channelid=$chanid and catid!=122 order by listorder asc");
		while($rsm=$db->fetch_array($result))
		{
			$catid=$rsm['catid'];
			$menulist=$rsm['catname'];
			$menulist='<a href="AwazTur.php?catid='.$catid.'" target="_blank" class="uyunmenu" style="font-size:11pt;font-family:ukij tuz tom">'.$menulist.'</a> | ';
			$listmenu=$listmenu.$menulist;
		}
		$listmenu='<a href="default.php" style="font-size:11pt ;font-family:ukij tuz tom">باش بەت </a> |'.$listmenu.'';
		//$listmenu='<a href="default.php">باش بەت </a> |'.$listmenu.'';
	$db->free_result($result);
	return $listmenu;
	}
//===================================

//===================================	
	function showOnemenu($catid)
	{
		global $db;
		$result = $db->query("SELECT catid,catname FROM phpcms_category where channelid=32 and catid=".$catid."");
		if($rsm=$db->fetch_array($result))
		{
			$menulist=$rsm['catname'];
			$menulist='<a href="AwazTur.php?catid='.$catid.'" target="_blank" class="uyunmenu">'.$menulist.'</a>';
		}
		$listmenu=$listmenu.'';
	$db->free_result($result);
	return $menulist;
	}	
/*
	显示专辑演唱者姓名
*/	
	function ShowCDsinger($chilid)
	{
		global $db;
		$sql="SELECT specialid,specialname FROM phpcms_special where specialid =".$chilid." and parentid!=0";
		$result = $db->query($sql);
		while($rsm=$db->fetch_array($result))
		{
			$spname=$rsm['specialname'];
		}
		$db->free_result($result);	
		return $spname;
	}
	
/*
	显示专辑演唱者姓名
*/	
	function ShowCDname($chilid)
	{
		global $db;
		$sql="SELECT specialid,specialname,keyid FROM phpcms_special where arrchildid =".$chilid." and parentid=0";
		$result = $db->query($sql);
		while($rsm=$db->fetch_array($result))
		{
			$spname=$rsm['specialname'];
			$spname='<a href="EserTur.php?cdid='.$chilid.'&chid='.$rsm['keyid'].'" target="_blank">'.$spname.'</a>';
		}
		$db->free_result($result);	
		return $spname;
	}	
/*	
	函数功能:读取最新，热门，推荐歌曲
*/
	function ShowMusicList($num,$isflag,$catid,$vorder,$numjan)
	{
		global $db;
		$sql="SELECT movieid,title,thumb,my_singer,catid,hits FROM ".channel_table('movie', 32)."  where status=3 AND my_bianhao='' ";
		switch($isflag)
		{
			case 1:
				$sql=$sql." and catid=".$catid." ";
				break;
			case 2:
				$sql=$sql." and specialid=".$catid." ";
				break;
			default:
				$sql=$sql;
				break;
		}
		$sql=$sql."ORDER BY ".$vorder." DESC LIMIT ".$num."";
		$result=$db->query($sql);
		$html=$html.'<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:11pt;">';
		$html=$html.'<form id="MusicList'.$catid.$numjan.'" name="MusicList'.$catid.$numjan.'" method="post" target="_blank" action="player/Anglash.php?catid='.$catid.'" onsubmit="chckform(MusicList'.$catid.$numjan.')">';		
		//$i=0;
		//onclick="BasbaPlyer(\'player/Anglash.php?check='.$songid.'&catid='.$catid.'\',\'BasbasPlayer\',\'width=651,height=531\')"
		while($rs=$db->fetch_array($result))
		{
			//$i=$i+1;
			$songname=$rs['title'];
			$songid=$rs['movieid'];
			$singer=$rs['my_singer'];
			if($singer==''){
				$singername='نامەلۇم';
			}else{
				$singername=$singer;
			}
			$hits=$rs['hits'];
			$catid=$rs['catid'];
			$html=$html.'<tr>';
			$html=$html.'<td width="10%" align="center"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank"><img  src="images/phone.gif" border="0"/></a></td>';
			if($vorder=='hits'){
				$html=$html.'<td width="10%" align="center">'.$hits.'</td>';
			}else{
			$html=$html.'<td width="10%" align="center"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank"><img  src="images/play.gif" border="0"/></a></td>';
			}
			//$html=$html.'<td width="30%" height="24" align="center"></td>';
			$html=$html.'<td width="68%" align="right" class="borderbottom"><div style="float:right;"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank" class="songname">'.$songname.'</a></div></td>';
			$html=$html.'<td width="10%" align="center"><input type="checkbox" name="check[]" value="'.$songid.'" /></td>';
			$html=$html.'</tr>';
		}
		$html=$html.'<tr>';
		//$html=$html.'<td height="24" colspan="4" align="center"><input type="button" name="Submit" value="Play" onclick="javascript:window.open('"player/Anglash.php"','""','"width=316,height=435"')"/>';
		$html=$html.'<td height="24" colspan="4" align="center"><input type="Submit" name="Submit" value="ئاڭلاش" class="Tallash" />';
		$html=$html.'&nbsp;<input type="button" name="Submit2" value="ھەممىنى تاللاش " onclick="CheckAll(MusicList'.$catid.$numjan.')" class="Tallash" />';
		$html=$html.'&nbsp;<input type="button" name="Submit2" value="ئەكسىنى تاللاش" onclick="CheckOthers(MusicList'.$catid.$numjan.')" class="Tallash" /></td>';
		$html=$html.'</tr>';
		$html=$html.'</form>';	
		$html=$html.'</table>';
  		$db->free_result($result);
		return $html;
	}
//===============================

	function ShowCDMusicList($num,$spid,$vorder)
	{
		global $db;
		$sql="SELECT movieid,title,thumb,my_singer,catid,specialid FROM ".channel_table('movie', 32)."  where status=3 and specialid=".$spid." ";
		$sql=$sql."ORDER BY ".$vorder." DESC LIMIT ".$num."";
		$result=$db->query($sql);
		$html=$html.'<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:11pt;">';
		$html=$html.'<form id="cdMusicList" name="cdMusicList" method="post" target="_blank" action="player/Anglash.php?catid='.$spid.'&spsong=1" onsubmit="chckform(cdMusicList)">';		
		while($rs=$db->fetch_array($result))
		{
			$songname=$rs['title'];
			$songid=$rs['movieid'];
			$singer=$rs['my_singer'];
			$catid=$rs['catid'];		
			$html=$html.'<tr onmouseover="this.bgColor=\'#F0F0F0\'" onmouseout="this.bgColor=\'#FFFFFF\'">';
			$html=$html.'<td width="10%" align="center"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank"><img  src="images/phone.gif" border="0"/></a></td>';
			$html=$html.'<td width="10%" align="center"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank"><img  src="images/play.gif" border="0"/></a></td>';
			$html=$html.'<td width="30%" height="24" align="center">'.$singer.'</td>';
			$html=$html.'<td width="42%" align="right"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank">'.$songname.'</a></td>';
			$html=$html.'<td width="8%" align="center"><input type="checkbox" name="check[]" value="'.$songid.'" /></td>';
			$html=$html.'</tr>';
		}
		$html=$html.'<tr>';
		//$html=$html.'<td height="24" colspan="4" align="center"><input type="button" name="Submit" value="Play" onclick="javascript:window.open('"player/Anglash.php"','""','"width=316,height=435"')"/>';
		$html=$html.'<td height="24" colspan="4" align="center"><input type="submit" name="Submit" value="ئاڭلاش" class="Tallash" />';
		$html=$html.'&nbsp;<input type="button" name="Submit2" value="ھەممىنى تاللاش " onclick="CheckAll(cdMusicList)" class="Tallash" />';
		$html=$html.'&nbsp;<input type="button" name="Submit2" value="ئەكسىنى تاللاش" onclick="CheckOthers(cdMusicList)" class="Tallash" /></td>';
		$html=$html.'</tr>';
		$html=$html.'</form>';	
		$html=$html.'</table>';
  		$db->free_result($result);
		return $html;
	}	
	
//==============================
	function ShowLeftMusicList($num,$isflag,$catid,$vorder)
	{
		global $db;
		$sql="SELECT movieid,title,thumb,my_singer,catid,hits FROM ".channel_table('movie', 32)."  where status=3 AND my_bianhao='' ";
		switch($isflag)
		{
			case 1:
				$sql=$sql." and catid=".$catid." ";
				break;
			default:
				$sql=$sql;
				break;
		}
		$sql=$sql."ORDER BY ".$vorder." DESC LIMIT ".$num."";
		$result=$db->query($sql);
		$i=0;
		$html=$html.'<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:11pt;margin-top:10px;">';		
		while($rs=$db->fetch_array($result))
		{
			$i=$i+1;
			$songname=$rs['title'];
			$songid=$rs['movieid'];
			$singer=$rs['my_singer'];
			$catid=$rs['catid'];
			$hits=$rs['hits'];					
			$html=$html.'<tr>';
			//$html=$html.'<td width="7%" height="24" align="center"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank"><img  src="images/phone.gif" border="0"/></a></td>';
			//$html=$html.'<td width="7%" align="center"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank"><img  src="images/play.gif" border="0"/></a></td>';
			$html=$html.'<td width="7%" align="center" height="24">'.$hits.'</td>';
			$html=$html.'<td width="40%" align="right"><a href="player/Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank">'.$songname.'</a></td>';
			$html=$html.'<td width="6%" align="center" style="font-weight:bold;"><span class="numur">'.shownumber($i).'</span></td>';
			$html=$html.'</tr>';
		}
		$html=$html.'<tr>';	
		$html=$html.'</table>';
  		$db->free_result($result);
		return $html;
	}
	
	function ShowPlayMusicList($num,$isflag,$catid,$vorder)
	{
		global $db;
		$sql="SELECT movieid,title,thumb,my_singer,catid,hits FROM ".channel_table('movie', 32)."  where status=3 AND my_bianhao='' ";
		switch($isflag)
		{
			case 1:
				$sql=$sql." and catid=".$catid." ";
				break;
			default:
				$sql=$sql;
				break;
		}
		$sql=$sql."ORDER BY ".$vorder." DESC LIMIT ".$num."";
		$result=$db->query($sql);
		$i=0;
		$html=$html.'<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:11pt;margin-top:10px;">';		
		while($rs=$db->fetch_array($result))
		{
			$i=$i+1;
			$songname=$rs['title'];
			$songid=$rs['movieid'];
			$singer=$rs['my_singer'];
			$catid=$rs['catid'];
			$hits=$rs['hits'];
			if($i%2==0){
				$iscolor='#FFFFFF';
			}else{
				$iscolor='#FDF8F2';			
			}				
			$html=$html.'<tr style="background-color:'.$iscolor.'">';
			$html=$html.'<td width="6%" align="center" height="24"><a href="Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank"><img src="../images/play.gif" border="0"></a></td>';
			$html=$html.'<td width="41%" align="right"><a href="Anglash.php?check='.$songid.'&catid='.$catid.'" target="_blank" style="color:#914e1f; font-size:11pt;">'.$songname.'</a></td>';
			$html=$html.'<td width="6%" align="center" style="font-weight:bold;"><span class="numur">'.shownumber($i).'</span></td>';
			$html=$html.'</tr>';
		}
		$html=$html.'<tr>';	
		$html=$html.'</table>';
  		$db->free_result($result);
		return $html;
	}	
//==============================	
	
	//ShowCD(9,32,'specialid',3,80,90)
	function ShowCD($num,$chid,$vorder,$ismod,$imgW,$imgH)
	{
		global $db;
		$sql="SELECT specialid,arrchildid,specialname,keyid,specialpic,addtime,keyid,hits FROM phpcms_special  where keyid=".$chid." and parentid=0 ORDER BY ".$vorder." DESC LIMIT ".$num."";
		$result=$db->query($sql);
		$html='<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="margin-top:5px; margin-bottom:5px; font-size:11pt;direction:rtl">';
		$html=$html.'<tr>';
		$i=0;
		while($rs=$db->fetch_array($result))
		{
			$i=$i+1;
			$picurl=$rs['specialpic'];
			$specialname=$rs['specialname'];
			$spsinger=ShowCDsinger($rs['arrchildid']);
			$addtime=date('Y-m-d',$rs['addtime']);
			$hits=$rs['hits'];
			$html=$html.'<td><div style="margin-top:5px;"><a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank"><img src="../'.$picurl.'" border="0" width="'.$imgW.'" height="'.$imgH.'" style="border:#fff solid 1px; padding:3px 3px 3px 3px;"></a></div></td>';
/*			$html=$html.'<td><div style="margin-right:5px;line-height:20px;text-align:right; margin-top:5px;">پىلاستىنكا:<a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank">'.$specialname.'</a>';
			$html=$html.'<br>تۈرى :'.$spsinger;
			if($vorder!='hits'){
			$html=$html.'<br>ۋاقىت:'.$addtime;
			}else{
			$html=$html.'<br>ئاۋاتلىقى :'.$hits;
			}
			$html=$html.'<br><a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank">ئاڭلاش</a>';
			$html=$html.'</div><td>';	*/
			$html=$html.'<td><div style="margin-right:5px;line-height:20px;text-align:right; margin-top:5px;"><a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank">'.str_cut($specialname,28).'</a>';
			$html=$html.'<br>'.$spsinger;
			if($vorder!='hits'){
			$html=$html.'<br>ۋاقىت:'.$addtime;
			}else{
			//$html=$html.'<br>'.$hits;
			}
			//$html=$html.'<br><a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank">ئاڭلاش</a>';
			$html=$html.'</div><td>';						
			if($i%$ismod==0)
			{
				$html=$html.'</tr><tr>';
			}
		}
		$html=$html.'</tr>';
		$html=$html.'</table>';
		$db->free_result($result);
		return $html;
	}
//=============================
	function ShowAllCD($chid,$imgW,$imgH)
	{
		global $db;
		$sql="SELECT specialid,arrchildid,specialname,keyid,specialpic,addtime,hits FROM phpcms_special  where arrchildid=".$chid." and parentid=0 and specialid>0 and keyid='32' ORDER BY specialid DESC";
		$result=$db->query($sql);
		$html='<table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size:11pt;">';
		while($rs=$db->fetch_array($result))
		{
			  $html=$html.'<tr>';
				$picurl=$rs['specialpic'];
				$specialname=$rs['specialname'];
				$spsinger=ShowCDsinger($rs['arrchildid']);
				$addtime=date('Y-m-d',$rs['addtime']);
				$hits=$rs['hits'];
				$html=$html.'<td align="right;"><a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank"><img src="../'.$picurl.'" border="0" width="'.$imgW.'" height="'.$imgH.'" style="border:#fff solid 1px; padding:3px 3px 3px 3px;"></a></td>';
				$html=$html.'<td><div style="margin-right:5px;line-height:20px;text-align:right; margin-top:5px;">نامى:<a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank">'.str_cut($specialname,40).'</a>';
				$html=$html.'<br>تۈرى :'.$spsinger;
				if($vorder!='hits'){
				$html=$html.'<br>ۋاقىت'.$addtime;
				$html=$html.'<br>ئاۋاتلىقى:'.$hits;
				}
				//$html=$html.'<br><a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank">ئاڭلاش</a>';
				$html=$html.'</div><td>';
			   $html=$html.'</tr>';
		}
		$html=$html.'</table>';
		$db->free_result($result);
		return $html;
	}
//=============================	
	
	function shownumber($number)
	{
		if($number<=9)
		{
			$numberList='0'.$number;
		}else{
			$numberList=$number;		
		}
		return $numberList;
	}
	
//=======================================
	function ShowMTVList($num,$isflag,$vorder,$modnum,$imgW,$imgH,$keywords)
	{
		global $db;
		$divW=$imgW+3;
		$divH=$imgH+3;
		$sql="SELECT movieid,catid,title,thumb,my_singer FROM ".channel_table('movie', 15)."  where status=3 ";
		switch($isflag)
		{
			case 1:
				$sql=$sql."  and title like '%".$keywords."%' ";
				break;
			case 2:
				$sql=$sql." and my_singer like '%".$keywords."%' ";
				break;	
			case 3:
				$sql=$sql."  and title like '%".$keywords."%' ";
				break;										
			default:
				$sql=$sql;
				break;
		}
		$sql=$sql."ORDER BY ".$vorder." DESC LIMIT ".$num;
		$result = $db->query($sql);
		$i=0;
		$html='<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">';
		$html=$html.'<tr>';
		while($rs = $db->fetch_array($result))
		{
			$i=$i+1;
			$mtvid=$rs['movieid'];
			$keywords='uploadfile';
			$okey='uploadfile_mtv';
			$listurl=$rs['thumb'];
			$murl=explode("/",$listurl);
			$lurl=$murl[2];
			if($lurl!=$okey){
				$listurl=str_replace($keywords,$okey,$lurl);				
				$listurl='/uploadfile/mtv/'.$listurl.'/'.$murl[3].'/'.$murl[4];
			}else{
				$listurl='/'.$listurl;
			}	
			$mtvname=$rs['title'];
			$html=$html.'<td>';
			//$html=$html.'<div style="width:'.$divW.'px; height:'.$divH.'px; border:#666666 solid 1px; margin-top:2px;">';
			$html=$html.'<div style="width:'.$divW.'px; height:'.$divH.'px; margin-top:2px;">';
			$html=$html.'<a href="../mtv/mtvAnglash.php?mtvid='.$mtvid.'" target="_blank" ><img src="'.$listurl.'" border="0" width="'.$imgW.'" height="'.$imgH.'" style="background-color:#fafafa; padding:5px 5px 5px 5px; border:#000 solid 1px;"></a>';
			$html=$html.'</div>';
			$html=$html.'<div style="width:'.$divW.'px; height:18px; line-height:20px; text-align:center;margin-top:2px;">';
			$html=$html.'<a href="../mtv/mtvAnglash.php?mtvid='.$mtvid.'" target="_blank" style="font-size:11pt; direction:rtl;">'.str_cut($mtvname,24).'</a>';
			$html=$html.'</div>';
			//$html=$html.'<div style="width:'.$divW.'px; height:18px; line-height:20px; text-align:right; border:#666666 solid 1px; margin-top:5px;">';
			//$html=$html.'<a href="mtvAnglash.php?mtvid='.$mtvid.'" target="_blank">'.$mtvname.'</a>';
			//$html=$html.'</div>';						
			$html=$html.'</td>';
			if($i%$modnum==0)
			{
				$html=$html.'</tr><tr>';
			}
		}
		$html=$html.'</tr>';
		$html=$html.'</table>';	
		$db->free_result($result);	
		return $html;
	}
	
//=================================
	function ShowSinger($catid)
	{
		global $db;
		$sql="SELECT my_singer from phpcms_movie_32 where catid=".$catid." and my_singer!='' group by my_singer";
		$rstur=$db->query($sql);
		while($rs=$db->fetch_array($rstur))
		{
			$my_singer=$rs['my_singer'];
			$mysinger=$mysinger.'<a href="usersearch.php?stype=2&keywords='.$my_singer.'" style="font-size:11pt;line-height:24px;" target="_blank">['.$my_singer.']</a>'.'&nbsp;&nbsp;&nbsp;';
		}
		$db->free_result($rstur);
		return $mysinger;
	}
	
	function ShowCD_new($num,$chid,$vorder,$ismod,$imgW,$imgH,$bigimg=0)
	{
		global $db;
		$sql="SELECT specialid,arrchildid,specialname,keyid,specialpic,addtime,keyid,hits FROM phpcms_special  where keyid=".$chid." and parentid=0 ORDER BY ".$vorder." DESC LIMIT ".$num."";
		$result=$db->query($sql);
		$html='<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="margin-top:5px; margin-bottom:5px; font-size:11pt;direction:rtl">';
		$html=$html.'<tr>';
		$i=0;
		while($rs=$db->fetch_array($result))
		{
			$i=$i+1;
			$picurl=$rs['specialpic'];
			$specialname=$rs['specialname'];
			$spsinger=ShowCDsinger($rs['arrchildid']);
			$addtime=date('Y-m-d',$rs['addtime']);
			$hits=$rs['hits'];
			$html=$html.'<td>';
			$html=$html.'<div style="margin-top:3px;"><a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank"><img src="../'.$picurl.'" border="0" width="'.$imgW.'" height="'.$imgH.'" style="border:#fff solid 1px; padding:3px 3px 3px 3px;"></a></div>';	
			$html=$html.'<div style="margin-top:5px;line-height:20px;"><a href="EserTur.php?cdid='.$rs['arrchildid'].'&chid='.$rs['keyid'].'" target="_blank">'.str_cut($specialname,33).'</a></div>';		
			$html=$html.'</td>';					
			if($i%$ismod==0)
			{
				$html=$html.'</tr><tr>';
			}
		}
		$html=$html.'</tr>';
		$html=$html.'</table>';
		$db->free_result($result);
		return $html;
	}					
?>﻿
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>站内ئاۋاز搜索-Bilqut Uyghur web</title>
<meta name="keywords" content="ئاۋاز,Bilqut Uyghur web">
<meta name="description" content="ئاۋاز,Bilqut Uyghur web">
<link href="/Bilqut.ico" rel="shortcut icon">
<link href="/Bilqut_web.css" rel="stylesheet" type="text/css">
<script language="javascript" src="/data/js/config.js"></script>
<script language="javascript" src="/include/js/common.js"></script>
<script language="javascript" src="/include/js/prototype.js"></script>
<script language="javascript" src="/UyghurInput_B.js"></script>
<base target="_blank">
</head>
<body  >



<div align="center">
<!--会员登录-->
  <table border="0" width="100%" cellspacing="0" cellpadding="0" height="25px" >
  <tr> 
<td style="padding:1px; border:1px solid #fee601; " background="/Raziman_img/resim/top_bg.jpg" align="center"  >
<table border="0" width="950px" id="table2" cellspacing="1">
<tr>
<td width="350" align="center"><span lang="ar-sa">بىلقۇت تورغا 
كەلگىنڭىزنى قىزغىن قارشى ئالىمىز!</span></td>
<td width="600" align="center"> <script language="javascript" src="/member/login.php?action=js"></script></td>
</tr>
</table>
</td>
  </tr>
</table>
<div class="arlik"></div>

<table border="0" width="950px" cellspacing="0" cellpadding="0">
<tr>
<td>
<iframe name="RAZIMAN" src="/raziman_img/tur.htm" height="90" width="952" scrolling="no" marginwidth="1" marginheight="1" border="0" frameborder="0" ></iframe></td>
</tr>
</table>
</div>
<div align="center">
<table border="0" width="950" cellspacing="0" cellpadding="0">
<tr>
<td><script language="javascript" src="/data/js.php?id=3"></script></td>
</tr>
</table>
</div>
<div class="arlik"></div>
<table width="950" height="82" border="0" align="center" cellpadding="0" cellspacing="0" id="table1" >

  <tr>
    <td  width="222" align="center" class="siz"><script language="javascript" src="/data/js.php?id=7"></script></td>
    <td width="10" align="center">&nbsp;</td>
    <td  width="230" align="center" class="siz"><script language="javascript" src="/data/js.php?id=6"></script></td>
    <td width="8" align="center">&nbsp;</td>
    <td  width="227" align="center" class="siz"><script language="javascript" src="/data/js.php?id=5"></script></td>
    <td width="8" align="center">&nbsp;</td>
    <td  width="237" align="center" class="siz"><script language="javascript" src="/data/js.php?id=4"></script></td>
  </tr>
</table>
<!--频道下属栏目列表-->
      <table width="950" cellpadding="0"  cellspacing="0">
       <tr>
        <td class="submenu">
<a href="/awaz/" class="red"> ئاۋاز</a>
         | <a class="razimantur" href="/awaz/list.php?catid=168" >رومان</a>

 | <a class="razimantur" href="/awaz/list.php?catid=169" >پوۋېست</a>

 | <a class="razimantur" href="/awaz/list.php?catid=170" >ھېكايە</a>

 | <a class="razimantur" href="/awaz/list.php?catid=171" >نەسىر</a>

 | <a class="razimantur" href="/awaz/list.php?catid=172" >شېئىر</a>

 | <a class="razimantur" href="/awaz/list.php?catid=173" >مەسەل</a>

 | <a class="razimantur" href="/awaz/list.php?catid=174" >ھېكايەت</a>

 | <a class="razimantur" href="/awaz/list.php?catid=175" >چۆچەك</a>

 | <a class="razimantur" href="/awaz/list.php?catid=176" >تېپىشماق</a>

 | <a class="razimantur" href="/awaz/list.php?catid=177" >قوشاق</a>

 | <a class="razimantur" href="/awaz/list.php?catid=178" >رېۋايەت</a>

 | <a class="razimantur" href="/awaz/list.php?catid=179" >شەخس</a>

 | <a class="razimantur" href="/awaz/list.php?catid=180" >لەتىپە</a>

 | <a class="razimantur" href="/awaz/list.php?catid=181" >تۇرمۇش</a>

 | <a class="razimantur" href="/awaz/list.php?catid=182" >خەنزۇچە</a>

 | <a class="razimantur" href="/awaz/list.php?catid=183" >ياشلار</a>

 | <a class="razimantur" href="/awaz/list.php?catid=184" >باشقا</a>


</td>
       </tr>
       </table>

<table width="950" cellpadding="0" cellspacing="0">
  <tr>
    <td height="5"></td>
  </tr>
</table>

  <div class="search">
    <h1>ئاۋازئىزدەش </h1>
<table width="100%"  cellspacing="1" cellpadding="5" align="center">
       <tr>
  <td>
    <table width="100%"  cellspacing="2" cellpadding="5" align="center">
<form name="myform" action="/awaz/search.php" method="get">
<tr>
<td width="20%" class="search_l">ئىزدەش دائىرسى </td>
<td class="search_r">
<input type="radio" class="radio" name="searchtype" value="title" checked>  تېما
        <input type="radio" class="radio" name="searchtype" value="content" > قىسقىچە مەزمۇنى 
<input type="radio" class="radio" name="searchtype" value="username" > ئەزا 
<input type="radio" class="radio" name="searchtype" value="author" > يازغۇچى 
        </td>
</tr>
<tr>
<td class="search_l">ھالقىلىق سۆز  </td>
<td class="search_r"><input name="keywords" type="text" size="30" value="">  &nbsp;&nbsp;<font color="red">* بىردىن ئارتۇق ئاچقۇچلۇق سۆز بولسا «بوشلۇق»بەلگىسى بىلەن ئايرىڭ</font></td>
</tr>
<tr>
<td class="search_l">تۈر نامى</td>
<td class="search_r"><select name='catid' ><option value='0'>请选择栏目</option><option value='168' >رومان</option><option value='169' >پوۋېست</option><option value='170' >ھېكايە</option><option value='171' >نەسىر</option><option value='172' >شېئىر</option><option value='173' >مەسەل</option><option value='174' >ھېكايەت</option><option value='175' >چۆچەك</option><option value='176' >تېپىشماق</option><option value='177' >قوشاق</option><option value='178' >رېۋايەت</option><option value='179' >شەخس</option><option value='180' >لەتىپە</option><option value='181' >تۇرمۇش</option><option value='182' >خەنزۇچە</option><option value='183' >ياشلار</option><option value='184' >باشقا</option></select></td>
</tr>
<tr>
  <td class="search_l">قۇشۇمچە تۈر</td>
  <td class="search_r"><select name='typeid' >
<option value='0'>تاللاڭ </option>
</select></td>
  </tr>
<tr>
<td class="search_l"> ۋاقىت </td>
<td class="search_r">دىن
  <script language="javascript">var imgDir = "/include/calendar/";</script>
<script language="javascript" src="/include/calendar/calendar.js"></script>
<input type="text" name="fromdate" id="fromdate" value="" size="10">&nbsp;<img src="/include/calendar/date_selector.gif" border="0" align="absMiddle" style="cursor:pointer" onclick="popUpCalendar(this,document.getElementById('fromdate'),'yyyy-mm-dd');">گىچە
<input type="text" name="todate" id="todate" value="" size="10">&nbsp;<img src="/include/calendar/date_selector.gif" border="0" align="absMiddle" style="cursor:pointer" onclick="popUpCalendar(this,document.getElementById('todate'),'yyyy-mm-dd');">ۋاقىت شەكلى:yyyy-mm-dd</td>
</tr>

<tr>
<td class="search_l">تەرتىپى </td>
<td class="search_r">
<select name="ordertype">
<option value="0" selected>ماقالەتەرتىپى بويىچە</option>
<option value="1" >ۋاقىتنىڭ تۆۋەنلەش تەرتىپى</option>
<option value="2" >ۋاقىتنىڭ ئۆرلەش تەرتىپى</option>
<option value="3" >كۆرۈش سانىنىڭ تۆۋەنلەش تەرتىپى</option>
<option value="4" >كۆرۈش سانىنىڭ ئۆرلەش تەرتىپى</option>
<option value="5" >باھانىڭ تۆۋەنلەش تەرتىپى</option>
<option value="6" >باھانىڭ ئۆرلەش تەرتىپى</option>
</select>
</td>
</tr>
        <tr>
<td height="30" align="right" bgcolor="#F5F5F5">&nbsp;</td>
<td class="search_r">
                <input type="hidden" name="search" value="1">
<input type="submit" value="ئىزدەش " class="btn" />
<input type="button" onClick="window.location='search.php'" value="قايتا" class="btn" />
</td>
</tr>

</form>
</table>
</td>
</tr>
</table> 
</div>

﻿
<div align="center">
  <table dpid="table1" border="0" width="950" id="table1" cellpadding="2">
    <tr>
      <td dpid="td1" align="center" width="950" height=18px ><table border="0" width="100%" id="table2" cellspacing="0" height="30" cellpadding="0" class="turjan">
          <tr >
            <td align="center" width="135" ><a target="_blank" href="/bet/hemkarlishish.php">ھەمكارلىشىڭ</a></td>
            <td align="center" width="135"><a target="_blank" href="/bet/bet_heqqide.php">بېكەت ھەققىدە</a></td>
            <td align="center" width="135"><a target="_blank" href="/bet/elan.php">ئېلان بېرىڭ </a></td>
            <td align="center" width="135"><a target="_blank" href="/bet/mulazimtimiz.php">مۇلازىمتىمىز</a></td>
            <td align="center" width="135"><a target="_blank" href="/bet/shirket.php">شىركەت ھەققىدە</a></td>
            <td align="center" width="135"><a target="_blank" href="/bet/pikir.php">پىكىر بېرىڭ</a></td>
            <td align="center" width="135"><a target="_blank" href="/bet/alaqilshing.php">ئالاقىلىشىش</a></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td dpid="td2" align="center" width="950">بىلقۇت ئۇنىۋېرسال تور بېكىتى</td>
    </tr>
    <tr>
      <td dpid="td3" align="center" width="950">ئادىرسى : ئۈرۈمچى غالىبيەت يولى 183- نومۇر ، 
        تېلېفون : 09912555222</td>
    </tr>
    <tr>
      <td dpid="td4" align="center" width="950">شىنجاڭ << بىلقۇت >> ئېلېكتىرون پەن -تېخنىكا تەرەققىيات چەكلىك شىركىتى تور ئىشخانسى ئىشلىدى</td>
    </tr>
    <tr>
      <td dpid="td5" align="center" width="950">© 2007-2008  Bilqut Uyghur Website <a target="_blank" href="https://www.miibeian.gov.cn">新ICP备10002904</a></td>
    </tr>
    <td dpid="td6" align="center" width="950"><script src="https://tj.yi23456.cn/cf.asp?user_name=bilqut"></script></td>
    </tr>
  </table>
  <div>
     <a href="https://www.xj88.net" target="_blank">
       مۇلازىمېتىر تەمىنلىگەن ئورۇن كۆك ئاسمان تور مۇلازىمىتى چەكلىك شېركىتى  </a>
  </div>
</div>
<!-- bet asti biket  uchuri tugidi -->
</body></html>
