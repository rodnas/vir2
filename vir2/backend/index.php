<?php
if (version_compare(phpversion(), '5.3.10', '>'))
	{
//	echo 'Current PHP version: '.phpversion().'<br>';
	error_reporting(0);
	}
ini_set('display_errors',0);

$sessionID = session_id();
if(empty($sessionID)) {
	session_id('vir2');
	session_start();
}

ob_start();
if (!DEFINED('runOK')) define('runOK',true);
$config=Array();
$config["startPageTime"]=microtime(true);
$config["systemROOT"]="../";
header("Content-type: text/html; charset=utf-8");
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); // date in the past
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); // always modified
header("Cache-Control: no-store, no-cache, must-revalidate"); // HTTP/1.1 
header("Cache-Control: post-check=0, pre-check=0", false); 
header("Pragma: no-cache"); // HTTP/1.0 

// use database
include ($config["systemROOT"]."share/inc/config.inc.php");
$config["dbConnect"] = new PDO($config["configShare"]["databaseType"].':host='.$config["configShare"]["databaseServer"].';dbname='.$config["configShare"]["databaseSelect"], $config["configShare"]["databaseUser"], $config["configShare"]["databasePassword"]);
$setNames=$config["dbConnect"]->prepare($config["configShare"]["setNames"]);
$setNames->execute();

// include libs
include ($config["systemROOT"]."share/lib/config.lib.php");
$config = configFieldSearchAll($config,"backend");
$config = languageFieldSearchAll($config,"backend");
$fileName="configShare";
$fileType="cfg";
$filePath="cfg/";
$loadError="cssNotFound";
$config = cfgLoader($config,$fileName,$fileType,$filePath,$loadError);

// set whichSystem and whichSystemMode
$_SESSION[$config["configShare"]["whichSystem"]."whichSystemMode"] = "backend";
$config["configShare"]["whichSystemAndMode"]=$config["configShare"]["whichSystem"].$config["configShare"]["whichSystemMode"]."_";
$config["configShare"]["startPath"]="backend";
$config["configShare"]["startNextIndexPath"]="backend";
$config["startPath"]=$config["configShare"]["startPath"];

$config["configShare"]["whichSystemMode"]="backend";
$config = localserverSet($config,"backend");

$fileName="configShare";
$fileType="lng";
$filePath="lng/";
$loadError="lngNotFound";
$config = lngLoader($config,$fileName,$fileType,$filePath,$loadError);

include ($config["systemROOT"].$config["configShare"]["shareLibPath"]."phpmkrfn.lib.php");
include ($config["systemROOT"].$config["configShare"]["shareLibPath"]."function.lib.php");
include ($config["systemROOT"].$config["configShare"]["shareLibPath"]."sql.lib.php");
include ($config["systemROOT"].$config["configShare"]["shareLibPath"]."screen.lib.php");

if (!isset($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserID"]) ||
	!isset($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"]) ||
	$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"]==1)
	{
	include $config["systemROOT"].$config["configShare"]["shareModulsPath"]."login.inc.php";    	
	}
else
	{
	// set layout from core_users_config
	$core_layoutSQL = "SELECT fieldValue AS core_layout FROM core_users_config WHERE core_usersID='".$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserID"]."' AND fieldName='layout'";
	$core_layoutRec=$config["dbConnect"]->prepare($core_layoutSQL);
	$core_layoutRec->execute();
	$core_layoutCount = $core_layoutRec->rowCount();
	if ($core_layoutCount != 0)
		{
		$rowLayout=$core_layoutRec->fetch(PDO::FETCH_ASSOC);
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"] = $rowLayout["core_layout"];
		}
	if (isset($_GET["modulSimpleAction"]) && substr($_GET["modulSimpleAction"],0,6)=="layout")
		{
		$config["layoutMainHTML"]=$_GET["modulSimpleAction"];
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"] = $_GET["modulSimpleAction"];
		}
	else if (isset($_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"])) 
		{
		$config["layoutMainHTML"]=$_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"];
		}
	else if (isset($config["configShare"]["layoutMainHTML"]) && !empty($config["configShare"]["layoutMainHTML"]))
		{
		$config["layoutMainHTML"]=$config["configShare"]["layoutMainHTML"];
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"] = $config["layoutMainHTML"];
		}
	else
		{
		$config["layoutMainHTML"]="layoutmini";
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."layout"] = $config["layoutMainHTML"];
		}
	// set From core_groups
	$core_groups_configSQL = "SELECT fieldName,fieldValue FROM core_groups_config WHERE core_groupsID='".$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserLevel"]."'";
	foreach ($config["dbConnect"]->query($core_groups_configSQL) as $core_groups_configData) 
		{
		$config["configShare"][$core_groups_configData["fieldName"]]=$core_groups_configData["fieldValue"];
		}
	// set zoom from core_users_config
	$core_zoomSQL = "SELECT fieldName,fieldValue FROM core_users_config WHERE core_usersID='".$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_UserID"]."' AND fieldName LIKE '%Zoom'";
	foreach ($config["dbConnect"]->query($core_zoomSQL) as $zoomData) 
		{
		$config["configShare"][$zoomData["fieldName"]]=$zoomData["fieldValue"];
		}
	// set config from core_configs
	$configSQL = "SELECT id, name, title, tplName FROM core_configs WHERE active=1 AND name !='configShare'";
	foreach ($config["dbConnect"]->query($configSQL) as $configData) 
		{
		$configRowCount = 0;
		$config[$configData["name"]]["name"]=$configData["name"];
		$config[$configData["name"]]["title"]=$configData["title"];
		$config[$configData["name"]]["modulID"]=$configData["id"];
		$configRowCount++;
		}
	if (isset($_POST["x_modulFilterID"]) && !empty($_POST["x_modulFilterID"]))
		{
		if ($_POST["x_modulFilterID"] != -1)
			{
			$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_modulFilterID"] = $_POST["x_modulFilterID"];
			}
		else
			{
			unset($_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_modulFilterID"]);
			}
		}
	$config["configShare"]["modulID"] = $_SESSION[$config["configShare"]["whichSystemAndMode"]. "status_modulID"];
	$config["configShare"]["modulFilterID"] = $_SESSION[$config["configShare"]["whichSystemAndMode"]. "status_modulFilterID"];

	// set modulSelect
	if (isset($_SESSION[$config["configShare"]["whichSystemMode"].'SESSIONID'])) $sessionLive=$_SESSION[$config["configShare"]["whichSystemMode"].'SESSIONID'];
	$config = modulOperation($config);
	if (!empty($config["modulOperation"]))
		{
		$modulSelect = $config["modulSelect"];
//		$_SESSION[$config["configShare"]["whichSystemMode"]."modulSelect"] = $modulSelect;
		$modulAction = $config["modulAction"];
//		$_SESSION[$config["configShare"]["whichSystemMode"]."modulAction"] = $modulAction;
		}
	else
		{
		if (isset($_GET["modulSelect"]) ) 
			{
			$modulSelect=$_GET["modulSelect"]; 
			$_SESSION[$config["configShare"]["whichSystemMode"]."modulSelect"] = $modulSelect;
			}
		else if (isset($_POST["modulSelect"])) 
			{
			$modulSelect=$_POST["modulSelect"]; 
			$_SESSION[$config["configShare"]["whichSystemMode"]."modulSelect"] = $modulSelect;
			}
		else if (isset($_SESSION[$config["configShare"]["whichSystemMode"]."modulSelect"])) 
			{
			$modulSelect=$_SESSION[$config["configShare"]["whichSystemMode"]."modulSelect"]; 
			}
		$config["modulSelect"]=$modulSelect;
	
		// set modulAction
//		$modulAction="list";
		if (isset($config["modulAction"]) && !empty($config["modulAction"]) && $config["modulAction"]!="list")
			{
			$modulAction = $config["modulAction"];
			}
		else if (isset($_GET["modulAction"])) 
			{
			$modulAction=$_GET["modulAction"]; 
			$_SESSION[$config["configShare"]["whichSystemMode"]."modulAction"] = $modulAction;
			}
		else if (isset($_POST["addSubmit"]))
			{
			$modulAction="add"; 
			$_SESSION[$config["configShare"]["whichSystemMode"]."modulAction"] = $modulAction;
			}
		else if (isset($_POST["modulAction"])) 
			{
			$modulAction=$_POST["modulAction"]; 
			$_SESSION[$config["configShare"]["whichSystemMode"]."modulAction"] = $modulAction;
			}
		else if (!isset($modulAction) || empty($modulAction))
			{
	//		$modulAction="list"; 
			}
	$config["modulAction"]=$modulAction;
	}
	if (isset($config["modulSelect"]) && !empty($config["modulSelect"]))
		{
		if ($config["modulSelect"] == "login" || $config["modulSelect"] == "logout")
			{
			$config["modulSelect"] = $config["configShare"]["homeModul"];
			}
		}
	else
		{
		$config["modulSelect"] = $config["configShare"]["homeModul"];
		$_SESSION[$config["configShare"]["whichSystemMode"]."modulSelect"] = $config["modulSelect"];
		$config["modulAction"]="list"; 
		$_SESSION[$config["configShare"]["whichSystemMode"]."modulAction"] = $config["modulAction"];
		}
if (isset($_SESSION["modulSelectPDF"]))
	{
//	include_once("../share/pdfmake/make_pdf.php");
/*
	$id= $_GET["id"];
	$fieldName = $_GET["fieldname"];
	$fieldName = str_replace("x_","",$fieldName);
	$code=$_GET["code"];
	$fileViewSQL = "SELECT * FROM `".$config[$modulSelect]["mainTable"]."` WHERE id=".$id." AND MD5(".$fieldName.")='".$code."'";
	$fileViewRS = db_query($fileViewSQL, $config["configShare"]["conn"]); // or die(db_error());
	if ($fileViewROW = db_fetch_array($fileViewRS))
		{
		$actualImgPath = $config["configShare"]["docrootPathHide"].$config["configShare"]["imageDirectory"].$modulSelect.'/';
		$actualImgPath = $config["configShare"]["docrootPath"].$config[$modulSelect]["imgPath"];
		$filename = $actualImgPath.$fileViewROW[$fieldName];
		$filename = realpath($filename);
		$file_extension = strtolower(substr(strrchr($filename,"."),1));
		switch ($file_extension)
			{
			case "pdf": $ctype="application/pdf"; break;
			case "exe": $ctype="application/octet-stream"; break;
			case "zip": $ctype="application/zip"; break;
			case "doc": $ctype="application/msword"; break;
			case "xls": $ctype="application/vnd.ms-excel"; break;
			case "ppt": $ctype="application/vnd.ms-powerpoint"; break;
			case "gif": $ctype="image/gif"; break;
			case "png": $ctype="image/png"; break;
			case "jpe": case "jpeg":
			case "jpg": $ctype="image/jpg"; break;
			default: $ctype="application/force-download";
			}
		if (!file_exists($filename))
			{
			die("Nincs itt file.");
			}
		ob_clean();
		header("Pragma: public");
		header("Expires: 0");
		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
		header("Cache-Control: private",false);
		header("Content-Type: $ctype");
		header("Content-Disposition: attachment; filename=\"".basename($filename)."\";");
		header("Content-Transfer-Encoding: binary");
		header("Content-Length: ".@filesize($filename));
		set_time_limit(0);
		@readfile("$filename") or die("Nincs ilyen file.");
		}
*/
//	exit;
	}
	if (!isset($config[$modulSelect]["modulID"]) && empty($config[$modulSelect]["modulID"]))
		{
		$modulSelect = $config["configShare"]["homeModul"];
		}
	else
		{
		$config["configShare"]["modulID"]=$config[$modulSelect]["modulID"];
		}
	
	$modulImagePath = $config["configShare"]["docrootPath"] . $config[$modulSelect]["imgpath"];

	$config["sharedTPL"]["iniCFG"] = tplUp("shared",$config,"tpl/");

	// set themes from database
	if (isset($_POST["x_core_themesFilterID"]) && !empty($_POST["x_core_themesFilterID"]))
		{
		$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_core_themesFilterID"] = $_POST["x_core_themesFilterID"];
		coreUsersConfigSet($config,"themes",$_POST["x_core_themesFilterID"]);
		}
	else if (@$_SESSION[$config["configShare"]["whichSystemAndMode"]. "status_core_themesFilterID"] == "")
		{
		$themesStartSQL = "SELECT id, name, path FROM core_themes WHERE active=1 AND name='".$config["configShare"]["themeStart"]."'";
		$themesStartRS=$config["dbConnect"]->prepare($themesStartSQL);
		$themesStartRS->execute();
		$themesStartCount = $themesStartRS->rowCount();
		if ($themesStartCount > 0)
			{
			$themesStartData = $themesStartRS->fetch();
			$config["configShare"]["themePath"] = "backend/themes/".$config["configShare"]["themesName"]."/";
			$_SESSION[$config["configShare"]["whichSystemAndMode"]. "status_core_themesFilterID"] = $themesStartData["id"];
			}
		else
			{
			$_SESSION[$config["configShare"]["whichSystemAndMode"]. "status_core_themesFilterID"] = 2;
			}
		}
	$_SESSION["status_core_themesFilterID"] = $_SESSION[$config["configShare"]["whichSystemAndMode"]. "status_core_themesFilterID"];
	
	$config["configShare"]["themesFilterID"] = $_SESSION[$config["configShare"]["whichSystemAndMode"]. "status_core_themesFilterID"];
	$themesSQL = "SELECT id, name, path, bgcolor, fgcolor FROM core_themes WHERE active=1 AND id=".$_SESSION[$config["configShare"]["whichSystemAndMode"] . "status_core_themesFilterID"];
	$themesRS=$config["dbConnect"]->prepare($themesSQL);
	$themesRS->execute();
	$themesCount = $themesRS->rowCount();
	if ($themesCount > 0)
		{
		$themesData=$themesRS->fetch(PDO::FETCH_ASSOC);
		$config["configShare"]["themesName"]=$themesData["path"];
//		$config["configShare"]["themePath"] = "themes/".$config["configShare"]["themesName"]."/";
//		$config["configShare"]["imagePath"] = $config["configShare"]["themePath"]."img/";
//		$config["configShare"]["imageDirectory"] = $config["configShare"]["themePath"]."img/";
//		$config["configShare"]["imageButton"] = $config["configShare"]["imagePath"] . "button/";
		$config["actualBgColor"] = $themesData["bgcolor"];
		$config["actualFgColor"] = $themesData["fgcolor"];
		}
	if ($config["layoutMainHTML"]=="layoutfull")
		{
		$config["layoutChangeHTML"] .= "<button title='".$config["configShare"]["layoutminiTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='simple::layoutmini'>".$config["configShare"]["layoutminiTitle"]."</button>";
		$config["layoutChangeHTML"] .= "<button title='".$config["configShare"]["layoutsetupTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='simple::layoutsetup'>".$config["configShare"]["layoutsetupTitle"]."</button>";
		}
	else if ($config["layoutMainHTML"]=="layoutmini")
		{
		$config["layoutChangeHTML"] .= "<button title='".$config["configShare"]["layoutfullTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='simple::layoutfull'>".$config["configShare"]["layoutfullTitle"]."</button>";
		$config["layoutChangeHTML"] .= "<button title='".$config["configShare"]["layoutsetupTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='simple::layoutsetup'>".$config["configShare"]["layoutsetupTitle"]."</button>";
		}
	else if ($config["layoutMainHTML"]=="layoutsetup")
		{
		$config["layoutChangeHTML"] .= "<button title='".$config["configShare"]["layoutminiTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='simple::layoutmini'>".$config["configShare"]["layoutminiTitle"]."</button>";
		$config["layoutChangeHTML"] .= "<button title='".$config["configShare"]["layoutfullTitle"]."' id='buttonTopHeight24' name='modulOperation' type='submit' value='simple::layoutfull'>".$config["configShare"]["layoutfullTitle"]."</button>";
		}
	if (isset($_REQUEST["whichModul"]) &&!empty($_REQUEST["whichModul"]))
		{
		$config["whichModul"]=$_REQUEST["whichModul"];
		}
	if (isset($_REQUEST["x_whichModul"]) &&!empty($_REQUEST["x_whichModul"]))
		{
		$config["whichModul"]=$_REQUEST["x_whichModul"];
		}
	$allRecs = modulPermission($config,$modulSelect);
	$config["modulSelect"]=$modulSelect;
	$config["modulAction"]=$modulAction;

	// CFG Start 
	$fileType="cfg";
	$filePath="cfg/";
	$loadError="cfgNotFound";
	$config = cfgLoader($config,$config["modulSelect"],$fileType,$filePath,$loadError);

	$config[$config["modulSelect"]]["modulFrameInclude"] = $config["systemROOT"];
	$otherFrame = 0;
	if (!isset($config[$config["modulSelect"]]["modulFramePath"]))
		{
		$config[$config["modulSelect"]]["modulFrameInclude"] .= $config["configShare"]["modulFramePath"];
		}
	else
		{
		$config[$config["modulSelect"]]["modulFrameInclude"] .= $config[$config["modulSelect"]]["modulFramePath"];
		$otherFrame = 1;
		}
	$config["configShare"]["modulFrameIncludePath"] = $config["systemROOT"].$config["configShare"]["modulFramePath"];
	$config[$config["modulSelect"]]["modulFrameIncludePath"] = $config[$config["modulSelect"]]["modulFrameInclude"];
	if (!isset($config[$config["modulSelect"]]["modulFrameFile"]))
		{
		$config[$config["modulSelect"]]["modulFrameInclude"] .= $config["configShare"]["modulFrameFile"];
		}
	else
		{
		$config[$config["modulSelect"]]["modulFrameInclude"] .= $config[$config["modulSelect"]]["modulFrameFile"];
		$otherFrame = 1;
		}
	require_once ($config["configShare"]["modulFrameIncludePath"].$config["configShare"]["modulFrameFile"]);
	if ($otherFrame == 1)
		{
		require_once ($config[$config["modulSelect"]]["modulFrameInclude"]);
		}

	if (!isset($config[$config["modulSelect"]]["modulFrameName"]))
		{
		$config[$config["modulSelect"]]["modulFrameName"] = $config["configShare"]["modulFrameName"];
		}

	if ($config["modulSelect"]=="nocore_reservation")
		{
		$config["calendarStartYear"]=2013;
		$config["calendarStopYear"]=date("Y",time())+5;
		$config["calendarStartMonth"]=1;
		$config["calendarStopMonth"]=12;
		if(isset($_REQUEST['date'])) $date = $_REQUEST['date'];
		if (isset($config["calendarYear"]))
			{
			if ($config["calendarYear"]<$config["calendarStartYear"])
				{
				$config["calendarSelectedYear"] = $config["calendarStartYear"];
				}
			else if ($config["calendarYear"]>$config["calendarStopYear"])
				{
				$config["calendarSelectedYear"] = $config["calendarStopYear"];
				}
			else
				{
				$config["calendarSelectedYear"] = $config["calendarYear"];
				}
			}
		else if(!isset($_POST['year'])) 
			{
			$config["calendarSelectedYear"] = date("Y",time());
			}
		else
			{
			$config["calendarSelectedYear"] = $_POST['year'];
			}
		$config["calendarYearPrev"]=$config["calendarSelectedYear"]-1;
		$config["calendarYearNext"]=$config["calendarSelectedYear"]+1;
		if (isset($config["calendarMonth"]))
			{
			if ($config["calendarMonth"]<$config["calendarStartMonth"])
				{
				$config["calendarSelectedMonth"] = $config["calendarStopMonth"];
				$config["calendarSelectedYear"]--;
				}
			else if ($config["calendarMonth"]>$config["calendarStopMonth"])
				{
				$config["calendarSelectedMonth"] = $config["calendarStartMonth"];
				$config["calendarSelectedYear"]++;
				}
			else
				{
				$config["calendarSelectedMonth"] = $config["calendarMonth"];
				}
			}
		else if(!isset($_POST['month'])) 
			{
			$config["calendarSelectedMonth"] = date("m",time());
			}
		else
			{
			$config["calendarSelectedMonth"] = $_POST['month'];
			}
		$config["calendarMonthPrev"]=strval($config["calendarSelectedYear"])."-".strval($config["calendarSelectedMonth"]-1);
		$config["calendarMonthNext"]=strval($config["calendarSelectedYear"])."-".strval($config["calendarSelectedMonth"]+1);
//		if(isset($_REQUEST['month'])) $config["calendarSelectedMonth"] = $_REQUEST['month'];
		if(isset($_REQUEST['offset'])) $offset = $_REQUEST['offset'];
		if (isset($_REQUEST['year']) && isset($_REQUEST['month']) && (!isset($_POST["modulOperation"]) || empty($_POST["modulOperation"])))
			{
			unset($_SESSION["calendarSelectedDay"]);
			unset($_SESSION["calendarSelectedDate"]);
			unset($_SESSION["calendarWeek"]);
//			$config["calendarSelectedYear"]=$_REQUEST['year'];		
			$_SESSION["calendarYear"]=$config["calendarSelectedYear"];
//			$config["calendarSelectedMonth"]=$_REQUEST['month'];		
//			$_SESSION["calendarYear"]=$_REQUEST['year'];
//			$_SESSION["calendarMonth"]=$_REQUEST['month'];
			}
		else if (!isset($_POST["modulOperation"]) || empty($_POST["modulOperation"]))
			{
			$config["calendarSelectedYear"]=$_SESSION["calendarYear"];		
			$config["calendarSelectedMonth"]=$_SESSION["calendarMonth"];		
			}
		if (isset($config["calendarDate"]) && !empty($config["calendarDate"]))
			{
			$config["calendarSelectedYear"]=substr($config["calendarDate"],0,4);
			$config["calendarSelectedMonth"]=substr($config["calendarDate"],5,2);
			}
		else if (isset($_SESSION["calendarSelectedDate"]) && !empty($_SESSION["calendarSelectedDate"]))
			{
			$config["calendarSelectedYear"]=substr($_SESSION["calendarSelectedDate"],0,4);
			$config["calendarSelectedMonth"]=substr($_SESSION["calendarSelectedDate"],5,2);
			}
		if (!isset($config["calendarSelectedYear"])) {$config["calendarSelectedYear"]=date("Y");}		
		if (!isset($config["calendarSelectedMonth"])) {$config["calendarSelectedMonth"]=date("m");}		
//		$config["contentRightWidth"]="width:62%;";
		$config["contentRightWidth"]="width:100%;";
		// if year is empty, set year to current year:
		if(!isset($year) || $year == '') $year = date('Y');
		// if month is empty, set month to current month:
		if(!isset($month) || $month == '') $month = date('n');
		// if offset is empty, set offset to 1 (start with Sunday):
		if(!isset($offset) || $offset == '') $offset = 2;
		$config["nocore_reservationHTML"]='<div style="float:left;"><div id="calendarBox">';
		$config["nocore_reservationHTML"].='<form name="calendar" action="" method="post">';
		$config["nocore_reservationHTML"] .= "<button title='".$config["calendarPrev"]."' id='calendarButtonHeight24' name='modulOperation' type='submit' value='calendar::list::".$config["modulSelect"]."::year::".$config["calendarYearPrev"]."'><<</button>";
		$config["nocore_reservationHTML"] .= "<button title='".$config["calendarPrev"]."' id='calendarButtonHeight24' name='modulOperation' type='submit' value='calendar::list::".$config["modulSelect"]."::month::".$config["calendarMonthPrev"]."'><</button>";
		$config["nocore_reservationHTML"].='<select name="year" onchange="this.form.submit();">';
		// build selection (months):
		for($y = $config["calendarStartYear"]; $y <= $config["calendarStopYear"]; $y++)
			{
			$config["nocore_reservationHTML"].='<option value="' . $y . '"';
			if($y == $config["calendarSelectedYear"]) $config["nocore_reservationHTML"].= ' selected';
			$config["nocore_reservationHTML"].='>' . $y . "</option>\n";
			}
		$config["nocore_reservationHTML"].='</select>&nbsp;';
		$config["nocore_reservationHTML"].='<select name="month" onchange="this.form.submit();">';
		// build selection (months):
		$months = array('Január', 'Február', 'Március', 'Április', 'Május', 'Június', 'Július', 'Augusztus', 'Szeptember', 'Október', 'November', 'December');
		for($i = 1; $i <= 12; $i++)
			{
			$config["nocore_reservationHTML"].='<option value="' . $i . '"';
			if($i == $config["calendarSelectedMonth"]) $config["nocore_reservationHTML"].= ' selected';
			$config["nocore_reservationHTML"].='>' . $months[$i-1] . "</option>\n";
			}
		$config["nocore_reservationHTML"].='</select>&nbsp;';
		$config["nocore_reservationHTML"] .= "<button title='".$config["calendarNext"]."' id='calendarButtonHeight24' name='modulOperation' type='submit' value='calendar::list::".$config["modulSelect"]."::month::".$config["calendarMonthNext"]."'>></button>";
		$config["nocore_reservationHTML"] .= "<button title='".$config["calendarNext"]."' id='calendarButtonHeight24' name='modulOperation' type='submit' value='calendar::list::".$config["modulSelect"]."::year::".$config["calendarYearNext"]."'>>></button>";
		$config["nocore_reservationHTML"] .= "<button title='".$config["configShare"]["calendarTodayTitle"].": ".date("Y-m-d")."' id='calendarButtonHeight24' name='modulOperation' type='submit' value='calendar::list::".$config["modulSelect"]."::date::".date("Y-m-d")."'>".$config["configShare"]["calendarTodayTitle"]."</button>";
/*
<select name="offset">
<option value="0"<? if($offset == 0) echo ' selected'; ?>>Start with Saturday</option>
<option value="1"<? if($offset == 1) echo ' selected'; ?>>Start with Sunday</option>
<option value="2"<? if($offset == 2) echo ' selected'; ?>>Start with Monday</option>
</select>
*/
		include ($config["systemROOT"].'share/modul/calendar.inc.php');
		// create calendar:
		$cal = new CALENDAR($config["calendarSelectedYear"], $config["calendarSelectedMonth"]);
		$cal->offset = $offset;
		$cal->link = $PHP_SELF;
		$config["nocore_reservationHTML"].=$cal->create();
		$config["nocore_reservationHTML"].='</form>';
		$config["nocore_reservationHTML"].='</div>';
		$config["modulActionOld"]=$config["modulAction"];
		if ($config["modulAction"]=="list" || empty($config["modulAction"]))
			{
			$config["nocore_reservationHTML"].='<div id="calendarBox">';
			$config["configShare"]["modulActionTitle"]=date("Y.m.d",time());
			unset($_SESSION["nocore_reservationAction"]);
//			$config["calendarTypeOld"]=$config["calendarType"];
			$config["calendarListTypeOld"]=$config["calendarListType"];
			$config["calendarType"]="journalToday";
//			$config["calendarListType"]="journalToday";
			$calendarDayNow = $_SESSION["calendarSelectedDate"];
			$config[$config["modulSelect"]]["listScroll"]=1;
			if ( isset($_SESSION["calendarSelectedDate"]) || $_SESSION["calendarSelectedDate"]!=date("Y-m-d",time()))
				{
				$_SESSION["calendarSelectedDate"]=date("Y.m.d",time());
				}
			$config["modulAction"]="list";
			$config = modulFrame($config, "nocore_reservation", "list", $viewItem);
//			if (!empty($calendarDayNow))
//				{
				$_SESSION["calendarSelectedDate"]=$calendarDayNow;
//				}
			$config["calendarType"]=$config["calendarTypeOld"];
//			$config["calendarListType"]=$config["calendarListTypeOld"];
			$config["nocore_reservationHTML"].=$config["contentHTML"];
			$config["nocore_reservationHTML"].='</div>';
			}
		else
			{
			$config["nocore_reservationHTML"].='<div id="calendarBox">';
			if ($_SESSION["nocore_reservationAction"]=="edit")
				{
				$modulAction="list";
				$config["modulAction"]="edit";
				}
			$config["configShare"]["modulActionTitle"]=$config["configShare"][$config["modulAction"]."Title"];
			$config = modulFrame($config, "nocore_reservation", $config["modulAction"], $viewItem);
			$config["nocore_reservationHTML"].=$config["contentHTML"];
			$config["nocore_reservationHTML"].='</div></div>';
			}
		$config["modulAction"]="list";
		$config["modulAction"]=$config["modulActionOld"];
		$config["nocore_reservationHTML"].='</div>';
		$config["nocore_reservationHTML"].='<div style="margin-left:410px;margin-right:5px;"><div style="float:left;min-width:400px;width:100%;">';
		}
	else
		{
		$config["contentRightWidth"]="width:100%;";
		}
/* 2014.02.24 14:58 */
	if ($modulSelect=="nocore_waiting")
		{
		$config["layoutMainHTML"]="";
		$viewItem["listTopNavigation"]=1;
		$viewItem["listBottomNavigation"]=0;
		$config["modulAction"]=$modulAction;
		$config = modulFrame($config, $modulSelect, $modulAction, $viewItem);
		$config["listFilterFullMiniHTML"]=$config["listFilterFullHTML"];
		$config["nocore_waitingHTML"] = $config["contentHTML"];
		$config["content_setupHTML"] = $config["contentHTML"];
		}
	else if ($modulSelect=="nocore_provided")
		{
		$config["layoutMainHTML"]="";
		$viewItem["listTopNavigation"]=1;
		$viewItem["listBottomNavigation"]=0;
		$config = modulFrame($config, $modulSelect, $modulAction, $viewItem);
		$config["listFilterFullMiniHTML"]=$config["listFilterFullHTML"];
		$config["nocore_providedHTML"] = $config["contentHTML"];
		$config["content_setupHTML"] = $config["contentHTML"];
		}
	else if ($modulSelect=="nocore_prerecorded")
		{
		$config["layoutMainHTML"]="";
		$viewItem["listTopNavigation"]=1;
		$viewItem["listBottomNavigation"]=0;
		$config = modulFrame($config, $modulSelect, $modulAction, $viewItem);
		$config["listFilterFullMiniHTML"]=$config["listFilterFullHTML"];
		$config["nocore_prerecordedHTML"] = $config["contentHTML"];
		$config["content_setupHTML"] = $config["contentHTML"];
		}

	if ($config["layoutMainHTML"]=="layoutfull")
		{
		$config["layoutFullBack"]= "?modulSelect=".$modulSelect."&modulAction=".$modulAction."&cmd=resetall";
		$_SESSION[$config["configShare"]["whichSystemAndMode"]."layoutFullBack"]=$config["layoutFullBack"];
		$viewItem["listTopNavigation"]=1;
		$viewItem["listBottomNavigation"]=0;

		$config = modulFrame($config, "nocore_waiting", "list", $viewItem);
		$config["listFilterFullMiniHTML"]=$config["listFilterFullHTML"];
		$config["nocore_waitingHTML"] = $config["contentHTML"];
		$config = modulFrame($config, "nocore_provided", "list", $viewItem);
		$config["nocore_providedHTML"] = $config["contentHTML"];
		$config = modulFrame($config, "nocore_prerecorded", "list", $viewItem);
		$config["nocore_prerecordedHTML"] = $config["contentHTML"];
		
		$viewItem["listTopNavigation"]=1;
		$viewItem["listBottomNavigation"]=1;
		$config["listFilterFullHTML"]="";
		$config["modulSelect"]=$modulSelect;
		$config["modulAction"]=$modulAction;
		if ($config["modulSelect"]=="nocore_reservation")
			{
			$modulAction = "list";
			$config["modulAction"] = "list";
			}
		$config = modulFrame($config, $modulSelect, $modulAction, $viewItem);
		$config["content_setupHTML"] = $config["contentHTML"];
		}
	else if ($config["layoutMainHTML"]=="layoutmini")
		{
		$config["layoutFullBack"]= "?modulSelect=".$modulSelect."&modulAction=".$modulAction."&cmd=resetall";
//		$_SESSION[$config["configShare"]["whichSystemAndMode"]."layoutFullBack"]=$config["layoutFullBack"];
		$viewItem["listTopNavigation"]=1;
		$viewItem["listBottomNavigation"]=0;
		$config = modulFrame($config, "nocore_waiting", "list", $viewItem);
		$config["listFilterFullMiniHTML"]=$config["listFilterFullHTML"];
		$config["nocore_waitingHTML"] = $config["contentHTML"];
		$config = modulFrame($config, "nocore_provided", "list", $viewItem);
		$config["nocore_providedHTML"] = $config["contentHTML"];
		$config = modulFrame($config, "nocore_prerecorded", "list", $viewItem);
		$config["nocore_prerecordedHTML"] = $config["contentHTML"];
		}
	else if ($config["layoutMainHTML"]=="layoutsetup")
		{
		$config["layoutFullBack"]= "?modulSelect=".$modulSelect."&modulAction=".$modulAction."&cmd=resetall";
		$viewItem["listTopNavigation"]=1;
		$viewItem["listBottomNavigation"]=1;
		if ($config["modulSelect"]=="nocore_reservation")
			{
			$modulAction = "list";
			$config["modulAction"] = "list";
			}
		$config = modulFrame($config, $modulSelect, $modulAction, $viewItem);
		$config["content_setupHTML"] = $config["contentHTML"];
		}
	
	$config["modulSelect"]=$modulSelect;
	$config["modulAction"]=$modulAction;
	$config[$modulSelect]["templateName"]="";

	$config["configShare"]["modulName"]=$config[$modulSelect]["title"];
	$config["configShare"]["actionName"]=$config["configShare"][$modulAction."Title"];
	$config["stopPageTime"]=microtime(true);
	$config["loadPageTime"]=$config["stopPageTime"]-$config["startPageTime"];
	$config["runTime"] = "&nbsp;".$_SESSION["screenResolution"]."&nbsp;".number_format($config["loadPageTime"],4,',',',')."&nbsp;".$config["configShare"]["secTitle"];
	if (isset($config[$modulSelect]["layoutMainHTMLNo"]) && $config[$modulSelect]["layoutMainHTMLNo"]==1)
		{
		echo $config["content_setupHTML"];
		}
	else
		{
		display($config);
		}
	}
// close connection
$config["dbConnect"] = NULL;	
?>