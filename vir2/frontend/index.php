<?php
//if (version_compare(phpversion(), '5.3.10', '>'))
//	{
//	echo 'Current PHP version: '.phpversion().'<br>';
	error_reporting(0);
//	}
ini_set('display_errors',0);

$sessionID = session_id();
if(empty($sessionID)) {
	session_id('vir2');
	session_start();
}

ob_start();

if(isset($_SESSION['screen_width']) AND isset($_SESSION['screen_height']))
	{
	$_SESSION["screenResolution"]=trim($_SESSION["screen_width"])."x".trim($_SESSION["screen_height"]);	
	}
else if(isset($_REQUEST['width']) AND isset($_REQUEST['height']))
	{
	$_SESSION['screen_width'] = $_REQUEST['width'];
	$_SESSION['screen_height'] = $_REQUEST['height'];
	$_SESSION["screenResolution"]=trim($_SESSION["screen_width"])."x".trim($_SESSION["screen_height"]);	
	header('Location: ' . $_SERVER['PHP_SELF']);
	}
else
	{
	echo '<script type="text/javascript">window.location = "' . $_SERVER['PHP_SELF'] . '?width="+screen.width+"&height="+screen.height;</script>';
	}


if (!DEFINED('runOK')) define('runOK',true);
$config=Array();
$config["startPageTime"]=microtime(true);
$config["bannerROOT"]="../docroot/core_advert/";
$config["systemROOT"]="../";
header("Content-type: text/html; charset=utf-8");
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); // date in the past
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); // always modified
header("Cache-Control: no-store, no-cache, must-revalidate"); // HTTP/1.1 
header("Cache-Control: post-check=0, pre-check=0", false); 
header("Pragma: no-cache"); // HTTP/1.0 

include $config["systemROOT"]."share/inc/config.inc.php";
include $config["systemROOT"]."share/lib/config.lib.php";    	
include $config["systemROOT"]."share/lib/ajax.lib.php";    	

$config["dbConnect"] = new PDO($config["configShare"]["databaseType"].':host='.$config["configShare"]["databaseServer"].';dbname='.$config["configShare"]["databaseSelect"], $config["configShare"]["databaseUser"], $config["configShare"]["databasePassword"]);
$setNames=$config["dbConnect"]->prepare($config["configShare"]["setNames"]);
$setNames->execute();

$config = localserverSet($config,"frontend");
if (isset($config["core_localserverID"]) && !empty($config["core_localserverID"]))
	{
	$config["configShare"]["localserverPath"]=substr($config["core_localserverName"],0,3)."/";
	}
else
	{
	$config["configShare"]["localserverPath"]="";
	}

$config["bannerDrROOT"]="../docroot/".$config["configShare"]["localserverPath"]."nocore_doctor_advert/";
$config = configFieldSearchAll($config,"frontend");
$config = languageFieldSearchAll($config,"frontend");
$config["dayID"] = dayIdentifier(time());

if (isset($_GET["cssconvert"]) && !empty($_GET["cssconvert"]))
	{
	$result = cssConvertFE($config,$_GET["cssconvert"],$_GET["resolution"]);
	echo $result;
	}
else if (isset($_GET["jsconvert"]) && !empty($_GET["jsconvert"]))
	{
	$result = jsConvert($config,"js/",$_GET["jsconvert"]);
	echo $result;
	}
else if (isset($_GET["ajax"]) && !empty($_GET["ajax"]))
	{
	include "ajax/".$_GET["ajax"].".php";
	}
else
	{
	$fileName="frontend";
	$fileType="html";
	$filePath="tpl/";
	$fileError="templateNotFound";
	$config = tplLoader($config,$fileName,$fileType,$filePath,$fileError);

	if ($config["dayStartClearBefore"]==1)
		{
		$preDay=$config["dbConnect"]->prepare("SELECT * FROM `nocore_barcode` WHERE loginWhen < '".date("Y-m-d")."'");
		$preDay->execute();
		$resultpreDay=$preDay->fetch(PDO::FETCH_ASSOC);
		$countPreDay = $preDay->rowCount();
		$preDay->closeCursor();
		if ($countPreDay > 0)
			{
			$updateSQL = "UPDATE nocore_barcode SET active=0 WHERE loginWhen < '".date("Y-m-d")."'";
			$config["dbConnect"]->exec($updateSQL);
			$insertSQL = "INSERT INTO `nocore_barcode_full` (`id`,`barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, 'nocore_reservationID', `reservationWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`)";
			$insertSQL .= " SELECT `id`,`barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, 'nocore_reservationID', `reservationWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen` FROM `nocore_barcode` WHERE active=0";
			$config["dbConnect"]->exec($insertSQL);
			$truncateSQL = "TRUNCATE TABLE nocore_barcode";
			$config["dbConnect"]->exec($truncateSQL);
			if (isset($config["barcodeLogging"]) && $config["barcodeLogging"]==1)
				{
				$logInsertSQL = "INSERT INTO `nocore_barcode_log_full` (`id`,`barcode`, `message`, `loginWhen`, `core_localserverID`)";
				$logInsertSQL .= " SELECT `id`,`barcode`, `message`, `loginWhen`, `core_localserverID` FROM `nocore_barcode_log`";
				$config["dbConnect"]->exec($logInsertSQL);
				$logTruncateSQL = "TRUNCATE TABLE nocore_barcode_log";
				$config["dbConnect"]->exec($logTruncateSQL);
				}
			}
		}

	// marquee top from table
	$config["marqueeTop"]=getMarqueeTop($config);
	// marquee bottom from table
	$config["marqueeBottom"]=getMarqueeBottom($config);
	// banner from table
	$config["banner"]=getBanner($config,1);
	
	$config["stopPageTime"]=microtime(true);
	$config["loadPageTime"]=$config["stopPageTime"]-$config["startPageTime"];
	$config["runTime"] = "&nbsp;".$_SESSION["screenResolution"]."&nbsp;".number_format($config["loadPageTime"],4,',',',')."&nbsp;".$config["configShare"]["secTitle"];
	$config["frontend"]["tplCFG"] = parseContent($config["frontend"]["tplCFG"],$config,"");

	echo $config["frontend"]["tplCFG"];
	}
$config["dbConnect"] = NULL;	
?>